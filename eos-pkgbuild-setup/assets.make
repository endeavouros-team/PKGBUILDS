#!/bin/bash

PROGNAME="$(basename "$0")"
test "$PROGNAME" = "bashdb" && PROGNAME="${BASH_ARGV[-1]}"  # could always be like this?

# pacman is changing compression!
if [ "$(vercmp "$(pacman -Q pacman | awk '{print $2}' | sed 's|-.*$||')" "5.2")" -ge 0 ] ; then
    _COMPRESSOR="zst"
else
    _COMPRESSOR="xz"
fi
_COMPRESSOR="xz"         # TODO: REMOVE THIS LINE AFTER TESTING "PACMAN 5.2" !!!


echo2()   { echo   "$@" >&2 ; }
printf2() { printf "$@" >&2 ; }

DIE()   { echo2 "Error: $1." ; Destructor ; exit 1 ; }
WARN()  { echo2 "Warning: $1." ; }

Pushd() { pushd "$@" >/dev/null || DIE "${FUNCNAME[1]}: pushd $* failed" ; }

Popd()  {
    local count=1 xx
    case "$1" in
        -c=*) count=${1:3} ; shift ;;
        -c*)  count=${1:2} ; shift ;;
    esac
    for ((xx=0;xx<count;xx++)) ; do
        popd  "$@" >/dev/null || DIE "${FUNCNAME[1]}: popd $* failed"
    done
}

Build()
{
    local pkgdirname="$1"
    local assetsdir="$2"
    local pkgbuilddir="$3"
    local pkgname
    local pkg
    local workdir=$(mktemp -d)

    Pushd "$workdir"
      cp -r "$pkgbuilddir" .
      pkgname="$(PkgBuildName "$pkgdirname")"
      Pushd "$pkgdirname"
        # now build, assume we have PKGBUILD
        makepkg -sc >/dev/null || { Popd -c2 ; DIE "makepkg for '$pkgname' failed" ; }
        pkg="$(ls -1 ${pkgname}-*.pkg.tar.$_COMPRESSOR)"
        mv $pkg "$assetsdir"
        pkg="$assetsdir/$pkg"
      Popd
    Popd
    rm -rf "$workdir"
    echo "$pkg"
}

PkgBuildName()
{
    local pkgdirname="$1"
    source "$PKGBUILD_ROOTDIR"/"$(basename "$pkgdirname")"/PKGBUILD
    echo "$pkgname"
}

PkgBuildVersion()
{
    local pkgdirname="$1"
    source "$PKGBUILD_ROOTDIR"/"$(basename "$pkgdirname")"/PKGBUILD
    echo "${pkgver}-$pkgrel"
}

LocalVersion()
{
    local Pkgname="$1"
    local pkgs
    
    Pkgname="$(basename "$Pkgname")"

    pkgs="$(ls -1 "$ASSETSDIR"/${Pkgname}-[0-9]*.pkg.tar.$_COMPRESSOR 2>/dev/null)"

    case "$(echo "$pkgs" | wc -l)" in
        0) echo "0" ; return ;;
        1) ;;
        *) WARN "$Pkgname: there is not only one version locally, using the latest."
           pkgs="$(echo "$pkgs" | tail -n 1)"
           ;;
    esac

    local tail="$(echo "$pkgs" | sed 's|^.*/'"$Pkgname"'-||')"
    local ver="$(echo "$tail" | cut -d '-' -f 1)"
    local rel="$(echo "$tail" | cut -d '-' -f 2)"

    echo "${ver}-$rel"
}

JustPkgname()
{
    local fakepath="$1"
    case "$fakepath" in
        ./*)      echo "${fakepath:2}" ;;
        aur/*)    echo "${fakepath:4}" ;;
        *)        echo "${fakepath}"   ;;
    esac
}

ListNameToPkgName()
{
    # PKGNAMES array (from $ASSETS_CONF) uses certain syntax for package names
    # to mark where they come from, either local or AUR packages.
    # AUR packages are fetched from AUR, local packages
    # are simply used from a local folder.
    #
    # Supported syntax:
    #    pkgname          local package
    #    ./pkgname        local package (emphasis)
    #    aur/pkgname      AUR package

    local xx="$1"
    local fetch="$2"
    local pkgname
    local hook

    pkgname=$(JustPkgname "$xx")

    if [ "${xx::4}" = "aur/" ] ; then
        case "$fetch" in
            yes)
                rm -rf "$pkgname"
                yay -Ga "$pkgname" >/dev/null || DIE "'yay -Ga $pkgname' failed."
                rm -rf "$pkgname"/.git                          # not needed
                ;;
        esac
    fi

    # A pkg may need some changes:
    hook="${ASSET_PACKAGE_HOOKS["$pkgname"]}"
    test -n "$hook" && {
        echo2 -n "."    # echo2 -n "hook[$hook] ... "
        "$hook"
    }

    echo "$pkgname"
}

Assets_clone()
{
    local xx hook

    # echo2 "It is possible that your local release assets in folder $ASSETSDIR"
    # echo2 "are not in sync with github."
    # echo2 "If so, you can delete your local assets and fetch assets from github now."
    # read -p "Delete local assets and fetch them from github now (y/N)? " xx >&2

    if [ -n "$(ls -1 *.pkg.tar.$_COMPRESSOR 2> /dev/null)" ] ; then

        printf2 "\n%s " "Fetch assets from github (Y/n)?"
        read xx

        case "$xx" in
            [yY]*|"") ;;
            *)
                echo2 "Using local assets."
                echo2 ""
                return
                ;;
        esac
    fi

    Pushd "$ASSETSDIR"

    echo "Deleting all local assets..."
    # $pkgname in PKGBUILD may not be the same as values in $PKGNAMES,
    # so delete all packages and databases.
    rm -f *.{db,files,sig,old,$_COMPRESSOR}
    local leftovers="$(command ls *.{db,files,sig,old,$_COMPRESSOR} 2>/dev/null)"
    test -z "$leftovers" || DIE "removing local assets failed!"

    echo "Fetching all github assets..."
    hook="${ASSET_PACKAGE_HOOKS["assets_mirrors"]}"
    for xx in "${RELEASE_TAGS[@]}" ; do
        hub release download $xx
        test -n "$hook" && { "$hook" && break ; }  # we need assets from only one tag since assets in other tags are the same
    done
    sleep 1

    Popd
}

IsEmptyString() {
    local name="$1"
    local value="${!name}"
    test -n "$value" || DIE "value of variable '$name' is empty"
}
DirExists() {
    local name="$1"
    local docreate="$2"
    local value="${!name}"

    case "$docreate" in
        yes) mkdir -p "$value" ;;
        *)   test -d "$value" || {
                 DIE "variable '$name' has folder name value '$value' - the folder does not exist"
             } ;;
    esac
}

ShowPrompt() {
    printf2 "%-35s : " "$1"
}

RationalityTests()
{
    ShowPrompt "Checking values in $ASSETS_CONF"

    IsEmptyString ASSETSDIR
    IsEmptyString PKGBUILD_ROOTDIR
    IsEmptyString GITDIR
    IsEmptyString PKGNAMES
    IsEmptyString REPONAME
    IsEmptyString RELEASE_TAGS
    IsEmptyString SIGNER
    DirExists ASSETSDIR
    DirExists PKGBUILD_ROOTDIR yes  # silently create the dir
    DirExists GITDIR

    echo2 "done."
}

Constructor()
{
    # make sure .git symlink exists
    test -e "$ASSETSDIR"/.git || ln -s "$GITDIR"/.git "$ASSETSDIR"

    test "$GITDIR"/.git -ef "$ASSETSDIR"/.git || \
        DIE "$ASSETS_CONF: error: folder '$ASSETSDIR/.git' differs from '$GITDIR/.git'"

}

Destructor()
{
    test -L "$ASSETSDIR"/.git && rm -f "$ASSETSDIR"/.git
}

_pkgbuilds_eos_hook()
{
    # A hook function to make sure local EndeavourOS PKGBUILDS are up to date.

    local dir_above_pkgbuilds="$PKGBUILD_ROOTDIR"/..
    local conf=assets.conf

    pushd "$dir_above_pkgbuilds" >/dev/null || {
        echo "Error: $conf: cannot cd to '$dir_above_pkgbuilds'." >&2
        exit 1
    }
    rm -rf "$PKGBUILD_ROOTDIR"
    git clone https://github.com/endeavouros-team/PKGBUILDS.git >& /dev/null || {
        echo "Error: $conf: git clone https://github.com/endeavouros-team/PKGBUILDS.git failed." >&2
        Popd
        exit 1
    }
    rm -rf "$PKGBUILD_ROOTDIR"/.git
    touch "$PKGBUILD_ROOTDIR"/NOTE-THIS-IS-A-TEMPORARY-FOLDER
    popd >/dev/null
}

RunPreHooksEOS()
{
    test "$SIGNER" = "EndeavourOS" && _pkgbuilds_eos_hook
}

RunPreHooks()
{
    RunPreHooksEOS
    if [ -n "$ASSET_HOOKS" ] ; then
        ShowPrompt "Running asset hooks"
        local xx
        for xx in "${ASSET_HOOKS[@]}" ; do
            $xx
        done
        echo2 "done."
    fi
}

#RunPostHooks()
#{
#    if [ -n "$ASSET_POST_HOOKS" ] ; then
#        ShowPrompt "Running asset post hooks"
#        local xx
#        for xx in "${ASSET_POST_HOOKS[@]}" ; do
#            $xx
#        done
#        echo2 "done."
#    fi
#}

CompareWithAUR()  # compare certain AUR PKGBUILDs to local counterparts
{
    local xx
    local pkgdirname pkgname
    local vaur vlocal

    IsEmptyString PKGNAMES

    Pushd "$PKGBUILD_ROOTDIR"
    echo2 "Comparing certain packages to AUR..."
    for xx in "${PKGNAMES[@]}" ; do
        test "${xx::4}" = "aur/" || continue
        printf2 "    %-25s : " "$(JustPkgname "$xx")"
        pkgdirname="$(ListNameToPkgName "$xx" yes)"
        test -n "$pkgdirname" || DIE "converting or fetching '$xx' failed"

        # get versions from latest AUR PKGBUILDs
        vaur="$(PkgBuildVersion "$PKGBUILD_ROOTDIR/$pkgdirname")"
        test -n "$vaur" || DIE "PkgBuildVersion for '$pkgdirname' failed"

        # get current versions from local asset files
        pkgname="$(PkgBuildName "$pkgdirname")"
        vlocal="$(LocalVersion "$ASSETSDIR/$pkgname")"
        test -n "$vlocal" || DIE "LocalVersion for '$pkgname' failed"

        # compare versions
        if [ $(vercmp "$vaur" "$vlocal") -gt 0 ] ; then
            echo2 "update (aur=$vaur local=$vlocal)"
        else
            test "$vaur" = "$vlocal" && echo2 "OK ($vaur)" || echo2 "OK (aur=$vaur local=$vlocal)"
        fi
    done
    Popd
}

#### Global variables:

ASSETS_CONF=./assets.conf

Exit()
{
    local code="$1"
    Destructor
    exit "$code"
}

Usage() {
    cat <<EOF >&2
$PROGNAME: Build packages and transfer results to github.

$PROGNAME [--checkaur | --repoup ]
where
    --checkaur    Compare certain AUR PKGBUILDs to local counterparts.
EOF
    test -n "$1" && exit "$1"
}

Main()
{
    local cmd=""
    local xx
    local repoup=0
    local reposig                                   # 1 = sign repo too, 0 = don't sign repo

    # Check given parameters:
    if [ -n "$1" ] ; then
        for xx in "$@" ; do
            case "$xx" in
                --checkaur) cmd=checkaur ;;
                --repoup)   repoup=1 ;;             # sync repo even when no packages are built
                *) Usage 0  ;;
            esac
        done
    fi

    test -r $ASSETS_CONF || DIE "cannot find local file $ASSETS_CONF"

    source $ASSETS_CONF         # local variables (with CAPITAL letters)

    RationalityTests            # check validity of values in $ASSETS_CONF

    Constructor

    RunPreHooks                 # may/should update local PKGBUILDs
    Assets_clone                # offer getting assets from github instead of using local ones

    case "$cmd" in
        checkaur)
            CompareWithAUR      # Simply compare some packages with AUR. Build nothing.
            Exit 0
            ;;
    esac

    # Check if we need to build new versions of packages.
    # To do that, we compare local asset versions to PKGBUILD versions.
    # Note that
    #   - Assets_clone above may have downloaded local assets from github (if user decides it is necessary)
    #   - RunPreHooks  above may/should have updated local PKGBUILDs

    local removable=()          # collected
    local removableassets=()    # collected
    local built=()              # collected
    local signed=()             # collected
    declare -A newv oldv
    local tmp tmpcurr
    local pkg
    local pkgdirname            # dir name for a package
    local pkgname
    local buildsavedir          # tmp storage for built packages

    echo2 "Finding package info ..."

    Pushd "$PKGBUILD_ROOTDIR"
    for xx in "${PKGNAMES[@]}" ; do
        printf2 "    %-25s : " "$(JustPkgname "$xx")"
        pkgdirname="$(ListNameToPkgName "$xx" yes)"
        test -n "$pkgdirname" || DIE "converting or fetching '$xx' failed"

        # get versions from latest PKGBUILDs
        tmp="$(PkgBuildVersion "$PKGBUILD_ROOTDIR/$pkgdirname")"
        test -n "$tmp" || DIE "PkgBuildVersion for '$xx' failed"
        newv["$pkgdirname"]="$tmp"

        # get current versions from local asset files
        pkgname="$(PkgBuildName "$pkgdirname")"
        tmpcurr="$(LocalVersion "$ASSETSDIR/$pkgname")"
        test -n "$tmpcurr" || DIE "LocalVersion for '$xx' failed"
        oldv["$pkgdirname"]="$tmpcurr"
        test $(vercmp "$tmp" "$tmpcurr") -gt 0 && echo2 "update pending to $tmp" || echo2 "OK ($tmpcurr)"
    done
    Popd

    #RunPostHooks                 # may update local PKGBUILDs

    # build if newer versions exist. When building, collect removables and builds.
    buildsavedir="$(mktemp -d "$HOME/.tmpdir.XXXXX")"
    echo2 "Check if building is needed..."
    for xx in "${PKGNAMES[@]}" ; do
        pkgdirname="$(ListNameToPkgName "$xx" no)"
        if [ $(vercmp "${newv["$pkgdirname"]}" "${oldv["$pkgdirname"]}") -gt 0 ] ; then
            echo2 "building '$pkgdirname' ..."

            # old pkg
            pkgname="$(PkgBuildName "$pkgdirname")"
            pkg="$(ls -1 "$ASSETSDIR/$pkgname"-*.pkg.tar.$_COMPRESSOR 2> /dev/null)"
            test -n "$pkg" && {
                removable+=("$pkg")
                removable+=("$pkg".sig)
                removableassets+=("$(basename "$pkg")")
                removableassets+=("$(basename "$pkg")".sig)
            }

            # new pkg
            pkg="$(Build "$pkgdirname" "$buildsavedir" "$PKGBUILD_ROOTDIR/$pkgdirname")"
            case "$pkg" in
                "") DIE "$pkgdirname: build failed" ;;
                *)  built+=("$pkg")               ;;
            esac
        fi
    done

    case "$SIGNER" in
        EndeavourOS) reposig=0 ;;
        *)           reposig=1 ;;
    esac

    if [ -n "$built" ] || [ "$repoup" = "1" ] ; then

        # We have something built to be sent to github, or we want to update repo to github.
        
        # now we have: removable (and removableassets), built and signed

        # Move built and signed to assets dir...
        if [ -n "$built" ] ; then
            echo2 "Signing and putting it all together..."

            if [ -n "$built" ] ; then
                # sign built packages
                for pkg in "${built[@]}" ; do
                    gpg --local-user "$SIGNER" \
                        --output "$pkg.sig" \
                        --detach-sign "$pkg" || DIE "signing '$pkg' failed"
                    signed+=("$pkg.sig")
                done

                mv -i "${built[@]}" "${signed[@]}" "$ASSETSDIR"

                # ...and fix the variables 'built' and 'signed' accordingly.
                tmp=("${built[@]}")
                built=()
                for xx in "${tmp[@]}" ; do
                    built+=("$ASSETSDIR/$(basename "$xx")")
                done
                tmp=("${signed[@]}")
                signed=()
                for xx in "${tmp[@]}" ; do
                    signed+=("$ASSETSDIR/$(basename "$xx")")
                done

                # Put changed assets (built) to db.
                repo-add "$ASSETSDIR/$REPONAME".db.tar.$_COMPRESSOR "${built[@]}"
            fi
        fi

        if [ $reposig -eq 1 ] ; then
            echo2 "Signing repo $REPONAME ..."
            repo-add --sign --key $SIGNER "$ASSETSDIR/$REPONAME".db.tar.$_COMPRESSOR >/dev/null
        fi
        for xx in db files ; do
            rm -f "$ASSETSDIR/$REPONAME".$xx.tar.$_COMPRESSOR.old{,.sig}
            rm -f "$ASSETSDIR/$REPONAME".$xx
            cp -a "$ASSETSDIR/$REPONAME".$xx.tar.$_COMPRESSOR     "$ASSETSDIR/$REPONAME".$xx
            if [ $reposig -eq 1 ] ; then
                rm -f "$ASSETSDIR/$REPONAME".$xx.sig
                cp -a "$ASSETSDIR/$REPONAME".$xx.tar.$_COMPRESSOR.sig "$ASSETSDIR/$REPONAME".$xx.sig
            fi
        done

        echo2 "Final stop before syncing with github!"
        read -p "Continue (Y/n)? " xx
        case "$xx" in
            [yY]*|"") ;;
            *) Exit 0 ;;
        esac

        # Remove old assets (removable) from github and local folder.
        if [ -n "$removable" ] ; then
            rm -f  "${removable[@]}"
            for tag in "${RELEASE_TAGS[@]}" ; do
                delete-release-assets --quietly "$tag" "${removableassets[@]}" \
                    || WARN "removing pkg assets with tag '$tag' failed"
            done
            sleep 1
        fi
        for tag in "${RELEASE_TAGS[@]}" ; do
            # delete-release-assets does not need the whole file name, only unique start!
            delete-release-assets --quietly "$tag" "$REPONAME".{db,files} \
                || WARN "removing db assets with tag '$tag' failed"
        done
        sleep 1

        # transfer assets (built, signed and db) to github
        if [ -n "$built" ] ; then
            for tag in "${RELEASE_TAGS[@]}" ; do
                add-release-assets "$tag" "${built[@]}" "${signed[@]}" || \
                    DIE "adding pkg assets with tag '$tag' failed"
            done
        fi
        for tag in "${RELEASE_TAGS[@]}" ; do
            if [ $reposig -eq 1 ] ; then
                add-release-assets "$tag" "$ASSETSDIR/$REPONAME".{db,files}{,.tar.$_COMPRESSOR}{,.sig} || \
                    DIE "adding db assets with tag '$tag' failed"
            else
                add-release-assets "$tag" "$ASSETSDIR/$REPONAME".{db,files}{,.tar.$_COMPRESSOR} || \
                    DIE "adding db assets with tag '$tag' failed"
            fi
        done
    else
        echo2 "Nothing to do."
    fi

    rm -rf $buildsavedir
    Destructor
}

Main "$@"
