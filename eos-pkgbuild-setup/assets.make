#!/bin/bash

# TODO:
#   - 2.12.2021:  update of multi-package PKGBUILD? Install should work, but deletion of old packages (thus updating) doesn't!
#   - older: check if deletion of e.g. pamac-aur might remove also pamac-aur-git (names have same beginning)
#   - better epoch handling

DebugBreak() {
    local from_function="${FUNCNAME[1]}"

    case "$from_function" in
        source) from_function="[PROGRAM]" ;;
    esac

    case "$DEBUG_BREAK" in
        5) echo "Function '$FUNCNAME' <--- line ${BASH_LINENO[0]} function $from_function" ;;
    esac
    :  # this is the break line
}

echoreturn() { echo "$@" ; }     # for "return" values!

echo2()      { echo   "$@" >&2 ; }    # output to stderr
printf2()    { printf "$@" >&2 ; }    # output to stderr

DIE() {
    echo2 "Error: $@"
    if [ "${FUNCNAME[1]}" = "Main" ] ; then
        Usage
    fi
    Destructor
    exit 1
}
WARN()       { echo2 -n "Warning: " ; echo2 "$@" ; }

FileSizePrint() {
    # Print size of file in bytes, numbers are is groups of three.
    # Examples:
    #       43854 ==> 43 854
    #    52341928 ==> 52 341 928
    # Note: user must align right if needed.

    local file="$1"
    local nr nr2="" nrtail
    local left remove=3

    nr=$(stat -c %s "$file")
    left=${#nr}
    while [ $left -gt 0 ] ; do
        if [ $remove -gt $left ] ; then
            remove=$left
        fi
        ((left -= remove))
        nrtail="${nr: -remove}"
        nr="${nr:: -remove}"
        nr2="$nrtail $nr2"
    done
    [ "${nr2::1}" = " " ]  && nr2="${nr2:1}"         # skip leading space
    [ "${nr2: -1}" = " " ] && nr2="${nr2:: -1}"      # skip trailing space

    echo "$nr2"
}

read2() {
    # Special handling for option -t (and -p).
    # The read value goes to the REPLY variable only.

    local name=""
    local prompt=""
    local count=0
    local cr=$'\r'
    local args=()
    local arg
    local has_t_opt="no"
    local prev=""
    local retval=0

    OPTIND=1   # for some reason this is required!

    # get the prompt and timeout (=count) values, if they exist
    while getopts ersa:d:i:n:N:p:t:u: name ; do
        case $name in
            t) count="$OPTARG" ; has_t_opt="yes" ;;
            p) prompt="$OPTARG" ;;
        esac
    done

    # add parameters from "$@" to the "args" array, except -t and -p and their values 
    for arg in "$@" ; do
        case "$arg" in
            -t)  prev=t ;;
            -t*) ;;
            -p)  prev=p ;;
            -p*) ;;
            *)
                case "$prev" in
                    t|p) prev="" ;;
                    *)   args+=("$arg") ;;
                esac
                ;;
        esac
    done

    # read value
    if [ "$has_t_opt" = "yes" ] ; then
        # while reading, show a seconds counter
        while [ $count -gt 0 ] ; do
            printf2 "%s[%s] " "$cr" "$count"
            read -t 1 -p "$prompt" "${args[@]}" >&2
            retval=$?
            test $retval -eq 0 && break
            test -n "$REPLY" && break
            ((count--))
        done
    else
        # just read the value, no special handling
        read -p "$prompt" "${args[@]}" >&2
        retval=$?
    fi
    test -z "$REPLY" && echo2 ""
    return $retval
}

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

GetPkgbuildValue() {
    local PKGBUILD="$1"
    local varname="$2"
    local -n retvar="$3"

    source "$PKGBUILD" || return 1
    case "$varname" in
        depends)     retvar=("${depends[@]}") ;;
        makedepends) retvar=("${makedepends[@]}") ;;
        epoch)       retvar="$epoch" ;;
        pkgver)      retvar="$pkgver" ;;
        pkgrel)      retvar="$pkgrel" ;;
        _ver)        retvar="$_ver" ;;
        *) return 1 ;;
    esac
}

#Get_PKGBUILD_item_value() {
#    local Pkgbuild="$1"
#    local item="$2"
#    local -n out="$3"
#
#    if true ; then
#        GetPkgbuildValue "$Pkgbuild" "$item" "$out"
#    else
#        out=$(cat "$Pkgbuild" | /usr/bin/grep "^$item=" | cut -d '=' -f2 | sed "s|^[\"']\(.*\)[\"']$|\1|")   # remove possible surrounding quotes
#    fi
#}


IsListedPackage() {
    # Is a package one of the listed packages in PKGNAMES?
    local pkgname="$1"
    printf "%s\n" "${PKGNAMES[@]}" | grep -P "^$pkgname/aur$|^$pkgname$" >/dev/null
}

IsAurPackage() {
    # Determine AUR from PKGNAMES array directly since we don't have PKGBUILD yet.
    local pkgname="$1"
    printf "%s\n" "${PKGNAMES[@]}" | grep "^$pkgname/aur$" >/dev/null
}

HandlePossibleEpoch() {
    # Github release assets cannot have colon (:) in the file name.
    # So if a package has an epoch value in PKGBUILD, return a new fixed name for a package
    # fetched from github release assets.

    local pkgname="$1"  # e.g. welcome
    local pkg="$2"      # e.g. welcome-2.3.9.6-1-any.pkg.tar.zst  # assumes: epoch=2
    local -n Newname="$3"
    local cwd=""
    local Epoch=""

    if [ ! -r PKGBUILD ] ; then
        cwd="$PWD"

        if [ ! -r "$PKGBUILD_ROOTDIR/$pkgname/PKGBUILD" ] ; then
            if IsAurPackage "$pkgname" ; then
                cd "$PKGBUILD_ROOTDIR"
                yay -Ga "$pkgname" >/dev/null || DIE "fetching PKGBUILD of '$pkgname' failed."
            else
                DIE "sorry, getting PKGBUILD of '$pkgname' not supported yet."
            fi
        fi
        cd "$PKGBUILD_ROOTDIR/$pkgname"
    fi

    GetPkgbuildValue "PKGBUILD" "epoch" Epoch

    if [ -z "$Epoch" ] ; then
        Newname="$pkg"
    else
        Newname=$(echo "$pkg" | sed "s|\(${pkgname}-[0-9][0-9]*\)\.\(.*\)|\1:\2|")
    fi

    if [ -n "$cwd" ] ; then
        cd "$cwd"
        [ -n "$tmpdir" ] && rm -rf $tmpdir
    fi
}

IncludesOption() {
    local where="$1"     # list of options, e.g. "-r --rmdeps"
    local opt="$2"       # e.g. "-r"

    printf "%s\n" $where | grep -w "\\$opt" >/dev/null
}

Build()
{
    local pkgdirname="$1"
    local assetsdir="$2"
    local pkgbuilddir="$3"
    local pkgname
    local pkg pkgs
    local workdir=$(mktemp -d)
    local log=$workdir/buildlog-"$pkgdirname".log
    local missdeps="Missing dependencies"
    local opts=""
    local msg=""

    if [ "${#PKG_MAKEPKG_OPTIONS[@]}" -gt 0 ] ; then
        if [ -n "${PKG_MAKEPKG_OPTIONS[$pkgdirname]}" ] ; then   # from assets.conf
            opts="${PKG_MAKEPKG_OPTIONS[$pkgdirname]}"
        fi
    fi

    Pushd "$workdir"
      cp -r "$pkgbuilddir" .
      pkgname="$(PkgBuildName "$pkgdirname")"
      Pushd "$pkgdirname"

      # now build, assume we have PKGBUILD
      # special handling for missing dependencies
      LANG=C makepkg --clean $opts 2>/dev/null >"$log" || {
          if [ -z "$(grep "$missdeps:" "$log")" ] ; then
              Popd -c2
              DIE "makepkg for '$pkgname' failed"
          fi
          msg="Installing $(echo "$missdeps" | tr [:upper:] [:lower:])"
          if IncludesOption "$opts" "--rmdeps" || IncludesOption "$opts" "-r" ; then
              msg+=" and removing them right after build"
          fi
          echo2 "$msg:"
          # grep -A100 "$missdeps:" "$log" | grep "^  -> " >&2

          # use special pacman wrapper in the makepkg call below
          local wrapper=/usr/bin/pacman-for-assets.make
          [ -x "$wrapper" ] || DIE "sorry, $wrapper does not exist!"

          PACMAN=$wrapper makepkg --syncdeps --clean $opts >/dev/null || { Popd -c2 ; DIE "makepkg for '$pkgname' failed" ; }
      }
      pkgs="$(ls -1 *.pkg.tar.$_COMPRESSOR)"
      [ -n "$pkgs" ] || DIE "$pkgdirname: build failed"
      for pkg in $pkgs ; do
          # HandlePossibleEpoch "$pkgname" "$pkg" pkg     # not needed here since makepkg should handle epoch OK (?)
          mv $pkg "$assetsdir"
          built+=("$assetsdir/$pkg")
          built_under_this_pkgname+=("$pkg")
      done
      Popd
    Popd
    rm -rf "$workdir"
}

PkgBuildName()
{
    local pkgdirname="$1"
    source "$PKGBUILD_ROOTDIR"/"$(JustPkgname "$pkgdirname")"/PKGBUILD
    echoreturn "$pkgname"
}

PkgBuildVersion()
{
    local pkgdirname="$1"
    local srcfile="$PKGBUILD_ROOTDIR"/"$(JustPkgname "$pkgdirname")"/PKGBUILD

    if [ ! -r "$srcfile" ] ; then
        DIE "'$srcfile' does not exist."
    fi
    source "$srcfile"
    if [ -n "$epoch" ] ; then
        echoreturn "$epoch:${pkgver}-$pkgrel"
    else
        echoreturn "${pkgver}-$pkgrel"
    fi
}

LocalVersion()
{
    local Pkgname="$1"
    local pkgs
    local xx
    
    Pkgname="$(JustPkgname "$Pkgname")"

    for xx in zst xz ; do         # order is important because of change to zstd!
        pkgs="$(ls -1v "$ASSETSDIR"/${Pkgname}-[0-9]*.pkg.tar.$xx 2>/dev/null)"    # $_COMPRESSOR
        test -n "$pkgs" && break
    done

    case "$(echo "$pkgs" | wc -l)" in
        0) echoreturn "0" ; return ;;
        1) ;;
        *) echo2 -n "$hook_multiversion "
           # WARN -n "$Pkgname: many local versions, using the latest. "
           pkgs="$(echo "$pkgs" | tail -n 1)"
           ;;
    esac

    local tail="$(echo "$pkgs" | sed 's|^.*/'"$Pkgname"'-||')"
    local ver="$(echo "$tail" | cut -d '-' -f 1)"
    local rel="$(echo "$tail" | cut -d '-' -f 2)"

    echoreturn "${ver}-$rel"
}

AurMarkingFail() {
    local fakepath="$1"     # no more: "aur/pkgname"
    DIE "marking AUR packages as $fakepath is no more supported!"
}

JustPkgname()
{
    local fakepath="$1"
    case "$fakepath" in
        ./*)      fakepath="${fakepath:2}" ;;
        */aur)    fakepath="${fakepath:: -4}" ;;
        aur/*)    AurMarkingFail "$fakepath" ;;
        *)        fakepath="${fakepath}"   ;;
    esac
    echoreturn "$(basename "$fakepath")"
}

HookIndicator() {
    local mark="$1"
    if [ "$fetch" = "yes" ] ; then
        echo2 -n "$mark "
    fi
}

ExplainHookMarks() {
    printf2 "\nPossible markings above mean indications from %s:\n" "$ASSETS_CONF"
    printf2 "    %s = a package hook was executed.\n" "$hook_yes"
    printf2 "    %s = a package hook changed pkgver in PKGBUILD.\n" "$hook_pkgver"
    printf2 "    %s = a package hook found many local versions, used latest.\n" "$hook_multiversion"
    printf2 "\n"
}

ListNameToPkgName()
{
    # "returns" pkgdirname and hookout
    #
    # PKGNAMES array (from $ASSETS_CONF) uses certain syntax for package names
    # to mark where they come from, either local or AUR packages.
    # AUR packages are fetched from AUR, local packages
    # are simply used from a local folder.
    #
    # Supported syntax:
    #    pkgname          local package
    #    ./pkgname        local package (emphasis)
    #    aur/pkgname      AUR package                           "aur/pkgname" NO MORE SUPPORTED!
    #    pkgname/aur      AUR package  (another way)

    local xx="$1"
    local fetch="$2"
    local pkgname
    local hook

    hookout=""

    pkgname=$(JustPkgname "$xx")

    [ "${xx::4}" = "aur/" ] && AurMarkingFail "$xx"

    if [ "${xx: -4}" = "/aur" ] ; then
        case "$fetch" in
            yes)
                rm -rf "$pkgname"
                yay -Ga "$pkgname" >/dev/null || DIE "'yay -Ga $pkgname' failed."
                # rm -rf "$pkgname"/.git                          # not needed
                ;;
        esac
    fi

    # A pkg may need some changes:
    hook="${ASSET_PACKAGE_HOOKS[$pkgname]}"
    if [ -n "$hook" ] ; then
        if [ "$fetch" = "yes" ] ; then
            hookout=$($hook)
            case $? in
                0) HookIndicator "$hook_yes" ;;          # OK
                11) HookIndicator "$hook_pkgver" ;;      # pkgver was updated by hook
                1) HookIndicator "?" ;;                  # failed
                *) HookIndicator "??" ;;                 # unknown error
            esac
        fi
    else
        HookIndicator "$hook_no"
    fi

    pkgdirname="$pkgname"
}

LogStuff() {
    if [ "$cmd" = "dryrun-local" ] ; then
        return  # avoid unnecessary pw asking
    fi
    if which logstuff >& /dev/null ; then
        if ! logstuff state ; then
            echo2 "==> logstuff on"
            logstuff on
        fi
    fi
}

HubRelease() {
    hub release "$@"
}

HubReleaseShow() {
    # also convert characters:
    #    %2B ==> +
    #    %3A ==> :
    HubRelease show "$@" | sed -e 's|%2B|+|g'     # -e 's|%3A|:|g'
}

GetRemoteAssetNames() {
    GetFromGit() {
        local dir="$1"

        if [ -r "$dir/$REPONAME.db" ] && [ -d "$GITDIR/.git" ] ; then
            Pushd "$dir"
            git pull >& /dev/null
            remote_files=$(ls -1 | sort)
            Popd
            return 0
        else
            return 1
        fi
    }

    if [ "$PREFER_GIT_OVER_RELEASE" = "yes" ] ; then
        names_from_git=yes
        case "$REPONAME" in
            endeavouros)               GetFromGit "$GITDIR/$REPONAME/$ARCH" && return ;;
            endeavouros-testing-dev)   GetFromGit "$GITDIR/$REPONAME"       && return ;;
            *)                         GetFromGit "$GITDIR/repo"            && return ;;
        esac
    fi

    # fallback to release assets
    remote_files=$(release-asset-names ${RELEASE_TAGS[0]} | sort)
    names_from_git=no
}

AskFetchingFromGithub() {
    # printf2 "\n%s " "Fetch assets from github (Yes/no/force)?"
    printf2 "\n%s " "Fetch assets from github (Y=only if different, n=no, f=yes)? "
    read2
    case "$REPLY" in
        [yY]*|"")
            echo2 "==> Using remote assets if there are differences, otherwise local."
            ;;
        [fF]*|"")
            echo2 "==> Using remote assets."
            return 0
            ;;
        *)
            echo2 "==> Using local assets."
            echo2 ""
            return 1
            ;;
    esac

    # Selected using remote assets with checks.
    # Check if there differences between local and remote file names.
    # If not, use local assets.

    DebugBreak

    local local_files=""
    local remote_files=""
    local diffs=none        # what kind of diffs, if any?

    if [ "$use_release_assets" = "yes" ] ; then
        local_files=$(ls -1 *.{db,files,zst,xz,sig} 2> /dev/null | sort)   # $asset_file_endings
        GetRemoteAssetNames
    fi

    if [ "$local_files" != "$remote_files" ] ; then
        # There are differences in file names.
        # Could be the epoch related file name change, they will be fixed later.

        if [ "$names_from_git" = "yes" ] ; then
            diffs=real
        elif OnlyEpochDiffs ; then
            diffs=epoch      # because of github
        else
            diffs=real
        fi

        if [ $diffs = real ] ; then
            local tmpdir_local=$(mktemp -d /tmp/local.XXX)
            local tmpdir_remote=$(mktemp -d /tmp/remote.XXX)

            touch $(echo "$local_files"  | sed "s|^|$tmpdir_local/|")
            touch $(echo "$remote_files" | sed "s|^|$tmpdir_remote/|")

            LANG=C diff $tmpdir_local $tmpdir_remote | sed -E \
                                                           -e "s|^Only in /tmp/remote[^:]+: |Only in REMOTE: |" \
                                                           -e "s|^Only in /tmp/local[^:]+: |Only in LOCAL:  |"
            rm -rf $tmpdir_local $tmpdir_remote
        fi
    fi

    case "$diffs" in
        none)  return 1 ;;         # no diffs               ==> local
        epoch) return 1 ;;         # only epoch no diffs    ==> local
        real)  return 0 ;;         # real diffs             ==> remote
    esac
}

OnlyEpochDiffs() {
    # input: $local_files and $remote_files
    local count_ll=$(echo "$local_files" | wc -l)
    local count_rr=$(echo "$remote_files" | wc -l)
    local loc rem
    local ll rr ix
    local epoch_diff_count=0

    [ "$count_ll" != "$count_rr" ] && return 1

    readarray -t loc <<< $(echo "$local_files")
    readarray -t rem <<< $(echo "$remote_files")

    # epoch test: change first colon in local to dot and compare to remote

    for ((ix=0; ix < count_ll; ix++)) ; do
        ll="${loc[$ix]}"
        rr="${rem[$ix]}"
        [ "${ll}" = "$rr" ] && continue            # local = remote
        [ "${ll/:/.}" = "$rr" ] && {
            ((epoch_diff_count++))
            continue                               # only epoch diff, will be fixed later
        }
        return 1                                   # real diff found
    done
    if [ $epoch_diff_count -gt 0 ] ; then
        echo2 "Local and remote file names have only epoch diffs (because of github limitations) and they will be fixed automatically."
        echo2 ""
    fi
    return 0
}

Assets_clone()
{
    local names_from_git=no

    if [ "$cmd" = "dryrun-local" ] && [ "$REPONAME" != "endeavouros_calamares" ] ; then
        return
    fi
    if [ "$use_release_assets" = "no" ] ; then
        if [ -n "$GITREPOURL" ] && [ -n "$GITREPODIR" ] ; then
            AskFetchingFromGithub || return 0
            echo2 "==> Copying files from the git repo to local dir."
            local tmpdir=$(mktemp -d)
            Pushd $tmpdir
            git clone  "$GITREPOURL" >& /dev/null || DIE "cloning '$GITREPOURL' failed"
            rm -f "$ASSETSDIR"/*.{db,files,zst,xz,sig,txt,old}      # $asset_file_endings
            cp "$GITREPODIR"/*.{db,files,zst,xz,sig} "$ASSETSDIR"   # $asset_file_endings
            sync
            Popd
            rm -rf $tmpdir
        else
            DIE "GITREPOURL and/or GITREPODIR missing for $REPONAME while USE_RELEASE_ASSETS = '$use_release_assets'"
        fi
        return
    fi

    local xx yy hook

    # It is possible that your local release assets in folder $ASSETSDIR
    # are not in sync with github.
    # If so, you can delete your local assets and fetch assets from github now.

    case "$REPONAME" in
        endeavouros_calamares) ;;  # many maintainers, so make sure we have the same assets!
        *)
            if [ "$repoup" = "1" ] ; then
                echo2 "==> Using local assets."
                return
            fi
            AskFetchingFromGithub || return 0
            ;;
    esac

    Pushd "$ASSETSDIR"

    local tag
    local remotes remote
    local waittime=30

    for tag in "${RELEASE_TAGS[@]}" ; do
        remotes="$(HubReleaseShow -f %as%n $tag | sed 's|^.*/||')"
        for remote in $remotes ; do
            [ -r $remote ] || break
        done
        break
    done

    DebugBreak

    if [ -r $remote ] ; then
        read2 -p "Asset names at github are the same as here, fetch anyway (y/N)? " -t $waittime
        case "$REPLY" in
            [yY]*) ;;
            *) Popd ; return ;;
        esac
    fi

    save_folder=$(mktemp -d "$PWD"/SAVED.XXX)
    echo2 "==> Saving current local assets to '$save_folder' ..."

    # $pkgname in PKGBUILD may not be the same as values in $PKGNAMES,
    # so delete all packages and databases.

    # rm -f *.{db,files,zst,xz,sig,txt,old}                                   # $asset_file_endings
    mv *.{db,files,zst,xz,sig,txt,old} "$save_folder"/ 2>/dev/null            # $asset_file_endings
    local leftovers="$(command ls *.{db,files,zst,xz,sig,old} 2>/dev/null)"   # $asset_file_endings
    test -z "$leftovers" || DIE "removing local assets failed!"

    echo2 "==> Fetching all github assets..."

    hook="${ASSET_PACKAGE_HOOKS[assets_mirrors]}"
    for xx in "${RELEASE_TAGS[@]}" ; do
        if [ "$names_from_git" = "yes" ] ; then
            local cpdir=""
            case "$REPONAME" in
                endeavouros)
                    cpdir="$GITDIR/$REPONAME/$ARCH" ;;
                endeavouros-testing-dev)
                    cpdir="$GITDIR/$REPONAME" ;;
                *)
                    cpdir="$GITDIR/repo" ;;
            esac
            [ -n "$cpdir" ] || DIE "git dir is empty, cannot copy files"
            echo2 "==> Copying files from '$cpdir' ..."
            cp "$cpdir"/* .
        else
            HubRelease download $xx
            sleep 1

            # Unfortunately github release assets cannot contain a colon (epoch mark) in file name, so rename those packages locally
            # after fetching them above.

            local oldname newname pkgname

            for oldname in *.pkg.tar.{zst,xz} ; do
                case "$oldname" in
                    "*.pkg."*) continue ;;
                esac
                pkgname=$(pkg-name-components N "$oldname")
                IsListedPackage "$pkgname" || continue
                HandlePossibleEpoch "$pkgname" "$oldname" newname
                if [ "$newname" != "$oldname" ] ; then
                    echo2 "==> Fix: $oldname     --> $newname"
                    echo2 "==> Fix: $oldname.sig --> $newname.sig"
                    mv $oldname $newname
                    mv $oldname.sig $newname.sig
                fi
            done
        fi
        test -n "$hook" && { $hook && break ; }  # we need assets from only one tag since assets in other tags are the same
    done

    Popd
}

PkgbuildExists() {
    local pkgname="$1"                         # a name from "${PKGNAMES[@]}"
    local special="$2"
    local yy=$(JustPkgname "$pkgname")

    if [ -r "$PKGBUILD_ROOTDIR/$yy/PKGBUILD" ] ; then
        return 0
    else
        ((no_pkgbuild_count++))
        if [ "$special" != "" ] ; then
            local files=$(ls -l "$PKGBUILD_ROOTDIR/$yy" 2>/dev/null)
            printf2 "WARNING (${PROGNAME}, $special): no PKGBUILD!\n"
            if [ -n "$files" ] ; then
                printf2 "File listing:\n"
                echo2 "$files" | sed 's|^|    ==> |'
            fi
        fi
        return 1
    fi
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

ShowIndented() {
    # shows the "head" of a listed value, possibly indented

    local txt="$1"
    local indent_level="$2"    # optional number >= 0
    local xx
    local ind=""

    case "$indent_level" in
        "") ;;
        *)
            for ((xx=0; xx < indent_level; xx++)) ; do
                ind+="    "
            done
            ;;
    esac
    printf2 "%s%-35s : " "$ind" "$1"
}

RationalityTests()
{
    ShowIndented "Checking values in $ASSETS_CONF"

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

    if [ -z "$REPO_COMPRESSOR" ] ; then
        REPO_COMPRESSOR=xz
    fi

    echo2 "done."
}

Constructor()
{
    # make sure proper .git symlink exists; create new or change existing if necessary

    if [ -e "$ASSETSDIR"/.git ] ; then
        [ -L "$ASSETSDIR"/.git ] || DIE "'$ASSETSDIR/.git' must be a symlink to '$GITDIR/.git'!"
        if [ ! "$GITDIR"/.git -ef "$ASSETSDIR"/.git ] ; then
            echo2 "Warning: '$ASSETSDIR/.git' does not refer to proper place, fixing..."
            rm -f "$ASSETSDIR"/.git || DIE "failed to remove: '$ASSETSDIR/.git'"
            ln -s "$GITDIR"/.git "$ASSETSDIR" || DIE "failed to symlink: '$ASSETSDIR/.git' -> '$GITDIR/.git'"
        fi
    else
        ln -s "$GITDIR"/.git "$ASSETSDIR" || DIE "failed to symlink: '$ASSETSDIR/.git' -> '$GITDIR/.git'"
    fi
}

Destructor()
{
    [ -n "$save_folder" ] && rm -rf "$save_folder"
    test -n "$buildsavedir" && rm -rf "$buildsavedir"
}

ShowOldCompressedPackages() {
    # If we have *both* .zst and .xz package, show the .xz package.

    local pkg pkgdir pkgname
    local pkg2 pkg22

    for pkg in $(ls "$ASSETSDIR"/*.pkg.tar.zst 2>/dev/null) ; do
        pkgname="$(basename "$pkg")"
        pkgdir="$(dirname "$pkg")"
        pkg2="$pkgdir/$(echo "$pkgname" | sed 's|\-[0-9].*$||')"
        pkg22="$(ls "$pkg2"-*.pkg.tar.xz 2>/dev/null)"
        if [ -n "$pkg22" ] ; then
            for pkg2 in $pkg22 ; do
                printf2 "Remove old packages:\n    %s\n    %s\n" "$pkg2" "$pkg2.sig"
                rm -i "$pkg2" "$pkg2.sig"
            done
        fi
    done
}

_ASSERT_() {
    local ret=0
    "$@" &> /dev/null || ret=$?
    if [ $ret -ne 0 ] ; then
       echo2 "'$*' failed"
       exit $ret
    fi
}

_pkgbuilds_eos_hook()
{
    # A hook function to make sure local EndeavourOS PKGBUILDS are up to date.

    local PKGBUILDS=PKGBUILDS

    if [ -d "$ASSETSDIR/.$REPONAME/$PKGBUILDS/.git" ] ; then
        _ASSERT_ pushd "$ASSETSDIR/.$REPONAME/$PKGBUILDS"
        printf "git pull... " >&2
        _ASSERT_ git pull
    else
        local GITPKGBUILDSURL=https://github.com/endeavouros-team/$PKGBUILDS.git
        _ASSERT_ pushd "$ASSETSDIR"
        printf "git clone... " >&2
        _ASSERT_ git clone "$GITPKGBUILDSURL"                              # get PKGBUILDS.git
        _ASSERT_ mkdir ".$REPONAME"
        _ASSERT_ mv "$PKGBUILDS" ".$REPONAME/$PKGBUILDS"
        ln -s ".$REPONAME/$PKGBUILDS"
    fi
    echo "done" >&2
    _ASSERT_ popd
}

RunPreHooks()
{
    if [ "$repoup" = "1" ] ; then
        return
    fi

    ShowIndented "Running asset hooks..."

    if [ "$SIGNER" = "EndeavourOS" ] ; then
        _pkgbuilds_eos_hook
    else
        if [ -n "$ASSET_HOOKS" ] ; then
            local xx
            for xx in "${ASSET_HOOKS[@]}" ; do
                $xx
            done
            echo2 "done."
        fi
    fi
}

GitUpdate_repo() {
    local newrepodir
    if [ -n "$built" ] || [ "$repoup" = "1" ] ; then
        case "$REPONAME" in
            endeavouros)
                newrepodir="$ASSETSDIR/../../repo" ;;
            endeavouros-testing-dev)
                newrepodir="$ASSETSDIR/../../eos-tools" ;;
            *)
                newrepodir="$GITDIR" ;;
        esac
        if [ -e "$newrepodir/.GitUpdate" ] ; then
            if [ -x /usr/bin/GitUpdate ] ; then
                FinalStopBeforeSyncing "$REPONAME repo"
                pushd "$newrepodir" >/dev/null
                /usr/bin/GitUpdate "$ARCH: $*" || DIE "GitUpdate failed!"
                popd >/dev/null
                ManualCheckOfAssets addition repo
            else
                WARN "$FUNCNAME: no GitUpdate app found."
            fi
        fi
    fi
}

RunPostHooks()
{
    if [ "$repoup" = "1" ] ; then
        return
    fi
    if [ -n "$ASSET_POST_HOOKS" ] ; then
        ShowIndented "Running asset post hooks"
        local xx
        for xx in "${ASSET_POST_HOOKS[@]}" ; do
            $xx
        done
        echo2 "done."
    fi
}

WantAurDiffs() {
    local xx="$1"
    local pkgdirname="$2"
    local diff_url="https://aur.archlinux.org/cgit/aur.git/diff/?h=$pkgdirname&context=1"

    case "$xx" in
        aur/*)
            AurMarkingFail "$xx"
            ;;
        */aur)
            if [ "$aurdiff" = "0" ] && [ "$already_asked_diffs" = "0" ] ; then
                already_asked_diffs=1
                read2 -p "AUR updates are available. Want to see diffs (Y/n)? " -t $ask_timeout
                if [ $? -eq 0 ] ; then
                    case "$REPLY" in
                        ""|[yY]*) aurdiff=1 ;;
                    esac
                else
                    echo2 no.   # no diffs if timeout
                fi
            fi
            if [ "$aurdiff" = "1" ] ; then
                case "$xx" in
                    aur/*)
                        AurMarkingFail "$xx"
                        ;;
                    */aur)
                        AUR_DIFFS+=("$diff_url")
                        AUR_DIFF_PKGS+=("$pkgdirname")
                        #$browser "$diff_url" >& /dev/null
                        ;;
                esac
            fi
            ;;
    esac
}

Browser() {
    local browser
    if [ -x /usr/bin/firefox ] ; then
        browser=/usr/bin/firefox
    elif [ -x /usr/bin/chromium ] ; then
        browser=/usr/bin/chromium
    else
        browser=/usr/bin/xdg-open
    fi
    $browser "$@"
}

ShowAurDiffs() {
    # If we have git source code available, then check diffs from that!
    local xx ix

    for ((ix=0; ix < ${#AUR_DIFFS[@]}; ix++)) ; do
        xx="${AUR_DIFF_PKGS[$ix]}"
        if [ -d "$ASSETSDIR/AUR/$xx/.git" ] ; then
            Pushd "$ASSETSDIR/AUR/$xx"
            git pull >& /dev/null
            /usr/bin/gitk                              # gitk stops here
            Popd
        else
            Browser "${AUR_DIFFS[$ix]}" >& /dev/null   # xdg-open does not stop here...
        fi
    done
}

Exit()
{
    local code="$1"
    Destructor
    exit "$code"
}

_SleepSeconds() {
    local sec="$1"
    local xx
    for ((xx=sec; xx>0; xx--)) ; do
        printf2 "\r%s   " "$xx"
        sleep 1
    done
    printf2 "\r%s\n" "$xx"
}

MirrorCheck() {
    if [ ! -r endeavouros.db ] ; then
        return
    fi
    local checker="/usr/share/endeavouros/scripts/mirrorcheck"
    local mirror_check="Alpix mirror check"
    local timeout
    local opt="--no-filelist"

    test "$use_filelist" = "yes" && opt=""

    if [ -n "$built" ] ; then
        timeout="$mirror_check_wait"
    else
        timeout=3
    fi
    if [ -x "$checker" ] ; then
        if [ $timeout -eq 180 ] ; then
            read2 -p "Do $mirror_check (Y/n)?"
        fi
        case "$REPLY" in
            ""|[yY]*)
                echo2 "Starting $mirror_check after countdown, please wait..."
                _SleepSeconds $timeout
                $checker $opt .
                ;;
        esac
    else
        echo2 "Sorry, checker $checker not found."
        echo2 "Cannot do $mirror_check."
    fi
}

TimeStamp() {
    local start_sec="$1"

    case "$start_sec" in
        "")
            # return starting time
            /usr/bin/date +%s
            ;;
        [0-9]*)
            # return elapsed time
            /usr/bin/date -u --date=@$(($(TimeStamp) - start_sec)) '+%Hh %Mm %Ss'
            ;;
    esac
}

Vercmp() {
    # like vercmp, but "$notexist" is always older

    if [ "$1" = "$notexist" ]; then
        echo '-1'
    elif [ "$2" = "$notexist" ]; then
        echo '1'
    else
        vercmp "$1" "$2"
    fi
}

PkgnameFilter() {
    # remove trailing parts after the 'pkgname'
    # sed 's|-[^-]*-[^-]*-[^-]*$||'    
    sed -E 's|-[^-]+-[^-]+-[^\.]+\.pkg\.tar\..*$||'
}

PkgnameFromPkg() {
    local pkg="$1"
    pkg="$(basename "$pkg")"
    # echo "$pkg" | PkgnameFilter
    echo "$pkg" | pkg-name-components N
}

ListPkgsWithName() {
    local pkgname="$1"
    local compr="$2"

    ls -1 "$pkgname"-*.pkg.tar.$compr 2> /dev/null | grep -E "${pkgname}-[^-]+-[^-]+-[^\.]+\.pkg\.tar\.$compr$"
}

Usage() {
    cat <<EOF >&2
$PROGNAME: Build packages and transfer results to github.

$PROGNAME [ options ]
Options:
    -n  | -nl | --dryrun-local  Show what would be done, but do nothing. Use local assets.
    -nn | -nr | --dryrun        Show what would be done, but do nothing.
    -ad | --allow-downgrade     New package may have smaller version number.
    --repoup                    (Advanced) Force update of repository database files.
    --aurdiff                   Show PKGBUILD diff for AUR packages.
EOF
#   --versuffix=X               Append given suffix (X) to pkgver of PKGBUILD.
#   --mirrorcheck=X             X is the time (in seconds) to wait before starting the mirrorcheck.

    test -n "$1" && exit "$1"
}

IsInWaitList() {
    local pkg="$1"
    local newver="$2"  # optional!

    if [ -n "$PKGNAMES_WAIT" ] ; then
        for xx in "${PKGNAMES_WAIT[@]}" ; do
            case "$xx" in
                "$pkg")              # old syntax - pkgname - still supported currently, may be deprecated later
                    return 0
                    ;;
                "$pkg|"*)            # new syntax - pkgname|version-to-skip
                    [ -n "$newver" ] || newver="$(PkgBuildVersion "$PKGBUILD_ROOTDIR/$pkgdirname")"
                    local skip_version="${xx#*|}"
                    [ "$skip_version" = "$newver" ] && return 0
                    ;;
            esac
        done
    fi
    return 1
}

DowngradeProbibited() {
    local cmpresult="$1"
    local allow_downgrade="$2"

    [ $cmpresult -lt 0 ] && [ "$allow_downgrade" = "no" ] && [ "${HAS_GIT_PKGVER[$pkgdirname]}" != "yes" ]
}

ShowResult() {
    local verdict="$1"
    local hookout="$2"
    if [ -n "$hookout" ] ; then
        echo2 "$verdict  [hook: $hookout]"
    else
        echo2 "$verdict"
    fi
}

Main2()
{
    test -n "$PKGEXT" && unset PKGEXT   # don't use env vars!

    local buildStartTime

    local cmd=""
    local xx yy zz
    local repoup=0
    local pkgver_suffix=""
    local reposig                    # 1 = sign repo too, 0 = don't sign repo
    local aurdiff=0                  # 1 = show AUR diff
    local already_asked_diffs=0
    local filelist_txt
    local use_filelist               # yes or no
    local ask_timeout=60
    local allow_downgrade=no
    local AUR_DIFFS=()
    local AUR_DIFF_PKGS=()
    local mirror_check_wait=180
    local use_release_assets         # currently only for [endeavouros] repo
    local save_folder=""

    local hook_pkgver="#"
    local hook_multiversion="+"
    local hook_yes="*"
    local hook_no=""                 # will contain strlen(hook_yes) spaces
    for xx in $(seq 1 ${#hook_yes}) ; do
        hook_no+=" "
    done

    # Check given parameters:
    if [ -n "$1" ] ; then
        for xx in "$@" ; do
            case "$xx" in
                --dryrun-local | -nl | -n) cmd=dryrun-local ;;
                --dryrun | -nr | -nn)      cmd=dryrun ;;
                --repoup)                  repoup=1 ;;                  # sync repo even when no packages are built
                --aurdiff)                 aurdiff=1 ;;
                --allow-downgrade | -ad)   allow_downgrade=yes ;;

                # currently not used!
                --mirrorcheck=*)           mirror_check_wait="${xx#*=}";;
                --versuffix=*)             pkgver_suffix="${xx#*=}" ;;

                *) Usage 0  ;;
            esac
        done
    fi

    test -r $ASSETS_CONF || DIE "cannot find local file $ASSETS_CONF"


    local PKGNAMES=()
    local PKGNAMES_WAIT=()

    source $ASSETS_CONF         # local variables (with CAPITAL letters)

    filelist_txt="$ASSETSDIR/repofiles.txt"
    use_filelist="$USE_GENERATED_FILELIST"
    test -n "$use_filelist" || use_filelist="no"
    use_release_assets="$USE_RELEASE_ASSETS"
    test -n "$use_release_assets" || use_release_assets=yes

    LogStuff

    DebugBreak
    
    RationalityTests            # check validity of values in $ASSETS_CONF

    Constructor

    RunPreHooks                 # may/should update local PKGBUILDs
    Assets_clone                # offer getting assets from github instead of using local ones

    # Check if we need to build new versions of packages.
    # To do that, we compare local asset versions to PKGBUILD versions.
    # Note that
    #   - Assets_clone above may have downloaded local assets from github (if user decides it is necessary)
    #   - RunPreHooks  above may/should have updated local PKGBUILDs

    local removable=()          # collected
    local removableassets=()    # collected
    local built=()              # collected
    local signed=()             # collected
    local repo_removes=()
    declare -A newv oldv
    local tmp tmpcurr
    local pkg
    local pkgdirname            # dir name for a package
    local pkgname
    local buildsavedir          # tmp storage for built packages
    local notexist='<non-existing>'
    local cmpresult
    local total_items_to_build=0
    local items_waiting=0
    local no_pkgbuild_count=0
    local hookout=""

    if [ "$repoup" = "0" ] ; then

        echo2 "Finding package info ..."

        Pushd "$PKGBUILD_ROOTDIR"
        for xx in "${PKGNAMES[@]}" ; do
            ShowIndented "$(JustPkgname "$xx")" 1
            hookout=""
            ListNameToPkgName "$xx" yes                                         # sets pkgdirname and hookout
            [ -n "$pkgdirname" ] || DIE "converting or fetching '$xx' failed"
            PkgbuildExists "$pkgdirname" "line $LINENO" || continue

            # get versions from latest PKGBUILDs
            tmp="$(PkgBuildVersion "$PKGBUILD_ROOTDIR/$pkgdirname")"
            test -n "$tmp" || DIE "PkgBuildVersion for '$xx' failed"
            newv[$pkgdirname]="$tmp"

            # get current versions from local asset files
            pkgname="$(PkgBuildName "$pkgdirname")"
            tmpcurr="$(LocalVersion "$ASSETSDIR/$pkgname")"
            case "$tmpcurr" in
                "") DIE "LocalVersion for '$xx' failed" ;;
                "-")
                    # package (and version) not found
                    tmpcurr="$notexist"
                    ;;
            esac
            oldv[$pkgdirname]="$tmpcurr"

            cmpresult=$(Vercmp "$tmp" "$tmpcurr")

            if IsInWaitList "$xx" "$tmp" ; then
                ((items_waiting++))
                ShowResult "WAITING ($tmpcurr ==> $tmp)" "$hookout"
                continue
            fi
            if [ $cmpresult -eq 0 ] ; then
                ShowResult "OK ($tmpcurr)" "$hookout"
                continue
            fi
            if DowngradeProbibited "$cmpresult" "$allow_downgrade" ; then
                ShowResult "OK ($tmpcurr)" "$hookout"
                continue
            fi

            DebugBreak

            ((total_items_to_build++))
            ShowResult "CHANGED $tmpcurr ==> $tmp" "$hookout"
            if [ $cmpresult -gt 0 ] ; then
                WantAurDiffs "$xx" "$pkgdirname"
            fi
        done

        DebugBreak

        if [ -n "$AUR_DIFFS" ] ; then
            ShowAurDiffs
        fi
        Popd

        local exit_code=$total_items_to_build
        [ $total_items_to_build -eq 0 ] && total_items_to_build=NONE
        printf2 "\nItems to build: %s/%s\n" "$total_items_to_build" "${#PKGNAMES[@]}"

        if [ "$items_waiting" != "0" ] ; then
            printf2   "Items waiting:  %s\n" "$items_waiting"
        fi
        if [ "$no_pkgbuild_count" != "0" ] ; then
            printf2   "No PKGBUILD:    %s\n" "$no_pkgbuild_count"
        fi

        if true ; then
            ExplainHookMarks
        else
            printf2 "\n"
        fi
    fi

    case "$cmd" in
        dryrun | dryrun-local)
            Exit $exit_code
            ;;
    esac

    if [ "$repoup" = "0" ] ; then
        # build if newer versions exist. When building, collect removables and builds.

        buildsavedir="$(mktemp -d "$HOME/.tmpdir.XXXXX")"

        local built_under_this_pkgname
        # local remove_under_this_pkgname
        echo2 "Check if building is needed..."
        for xx in "${PKGNAMES[@]}" ; do
            ListNameToPkgName "$xx" no
            PkgbuildExists "$xx" "line $LINENO ($xx)" || continue

            cmpresult=$(Vercmp "${newv[$pkgdirname]}" "${oldv[$pkgdirname]}")

            # See if we have to build.
            [ "$cmpresult" -eq 0 ] && continue

            if DowngradeProbibited "$cmpresult" "$allow_downgrade" ; then
                continue
            fi
            if IsInWaitList "$xx" "${newv['$pkgdirname']}" ; then
                echo2 "==> $xx is in the wait list, skipping build."
                continue
            fi

            # Build the package (or possibly many packages!)
            built_under_this_pkgname=()
            # remove_under_this_pkgname=()   # we don't know only from pkgname!

            echo2 "==> $pkgdirname:"
            buildStartTime="$(TimeStamp)"

            Build "$pkgdirname" "$buildsavedir" "$PKGBUILD_ROOTDIR/$pkgdirname"

            echo2 "    ==> Build time: $(TimeStamp $buildStartTime)"
            for yy in "${built_under_this_pkgname[@]}" ; do
                printf2 "    ==> %15s %s\n" "$(FileSizePrint "$buildsavedir/$yy")" "$yy"
                #echo2  "    ==> $yy"
            done

            # determine old pkgs, may be many
            for zz in zst xz ; do
                for yy in "${built_under_this_pkgname[@]}" ; do
                    pkgname="$(PkgnameFromPkg "$yy")"
                    # pkg="$(ls -1 "$ASSETSDIR/$pkgname"-[0-9]*.pkg.tar.$zz 2> /dev/null)"
                    pkg=$(ListPkgsWithName "$pkgname" "$zz")
                    if [ -n "$pkg" ] ; then
                        local xyz
                        for xyz in $pkg ; do
                            removable+=("$xyz")
                            removable+=("$xyz".sig)

                            yy="$(basename "$xyz")"
                            removableassets+=("$yy")
                            #removableassets+=("$yy".sig)
                        done
                    fi
                done
            done
        done
    fi

    case "$SIGNER" in
        EndeavourOS) reposig=0 ;;
        *)           reposig=1 ;;
    esac

    if [ -n "$built" ] || [ "$repoup" = "1" ] ; then

        # We have something built to be sent to github, or we want to update repo to github.
        
        # now we have: removable (and removableassets), built and signed

        if [ "$PWD" != "$ASSETSDIR" ] ; then
            DIE "wrong directory: $PWD != $ASSETSDIR"
        fi

        # Move built and signed to assets dir...
        if [ -n "$built" ] && [ "$repoup" = "0" ] ; then
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

                rm -rf $buildsavedir

                # ...and fix the variables 'built' and 'signed' accordingly.
                tmp=("${built[@]}")
                built=()
                for xx in "${tmp[@]}" ; do
                    built+=("$(basename "$xx")")
                    #built+=("$ASSETSDIR/$(basename "$xx")")
                done
                tmp=("${signed[@]}")
                signed=()
                for xx in "${tmp[@]}" ; do
                    signed+=("$(basename "$xx")")
                    #signed+=("$ASSETSDIR/$(basename "$xx")")
                done

                for xx in "${built[@]}" ; do
                    case "$xx" in
                        *.pkg.tar.$_COMPRESSOR)
                            #pkgname="$(basename "$xx" | sed 's|\-[0-9].*$||')"
                            pkgname="$(PkgnameFromPkg "$xx")"
                            repo_removes+=("$pkgname")
                            ;;
                    esac
                done

                if [ -n "$removable" ] ; then
                    # Here we have some old packages after upgrading them.
                    # Save them automatically into an archive at github.
                    # Then downgrading of EOS packages can be supported with app 'eos-downgrade'.

                    local archive_git=""
                    local archive_tag=""

                    case "$REPONAME" in
                        endeavouros)
                            archive_git="$ASSETSDIR"/../../archive/.git
                            archive_tag=packages
                            ;;
                        endeavouros-testing-dev)
                            archive_git="$ASSETSDIR"/../../archive/.git
                            archive_tag=repo-testing
                            ;;
                        *)
                            archive_tag=archive
                            if [ -n "$(HubRelease | grep "$archive_tag")" ] ; then
                               archive_git="$ASSETSDIR"/.git
                            else
                               archive_tag=""
                            fi
                            ;;
                    esac
                    # This test commented out because it takes too much time!
                    # if [ -z "$(HubRelease | grep "$archive_tag")" ] ; then
                    #     archive_tag=""
                    # fi

                    if [ -n "$archive_tag" ] ; then
                        local archiving=success
                        local pkg_archive="$ASSETSDIR/PKG_ARCHIVE"

                        # local archiving

                        mkdir -p "$pkg_archive"                    || archiving=fail1
                        if [ "$archiving" = "success" ] ; then
                            chmod -R u+w "$pkg_archive"            || archiving=fail2
                        fi
                        if [ "$archiving" = "success" ] ; then
                            mv -f "${removable[@]}" "$pkg_archive" || archiving=fail3
                        fi

                        if [ "$archiving" = "success" ] ; then

                            # remove archiving

                            Pushd "$pkg_archive"

                            if [ ! -d .git ] ; then
                                if [ -d "$archive_git" ] ; then
                                    ln -s "$archive_git"
                                fi
                            fi
                            if [ -d .git ] ; then
                                case "$SIGNER" in
                                    EndeavourOS) archive-sync-to-remote "$archive_tag" ;;
                                    *)           add-release-assets "$archive_tag" "${removable[@]##*/}" ;;
                                esac
                            else
                                WARN "the .git folder of the pkg archive was not found"
                            fi

                            Popd
                        else
                            WARN "($archiving) problem moving old packages to $pkg_archive"
                        fi
                        chmod -R -w "$pkg_archive"               # do not (accidentally) delete archived packages...
                    fi
                fi
                
                if [ -n "$repo_removes" ] ; then
                    # check if repo db contains any of the packages to be removed
                    # yy="$(tar --list --exclude */desc -f "$ASSETSDIR/$REPONAME".db.tar.$REPO_COMPRESSOR | sed 's|-[0-9].*$||')"
                    yy="$(tar --list -f "$ASSETSDIR/$REPONAME".db.tar.$REPO_COMPRESSOR | grep "/desc$" | sed 's|-[^-]*-[^-]*$||')"
                    zz=()
                    for xx in "${repo_removes[@]}" ; do
                        if [ -n "$(echo "$yy" | grep "^$xx$")" ] ; then
                            zz+=("$xx")
                        fi
                    done
                    if [ -n "$zz" ] ; then
                        # packages found in the repo db, so remove them
                        repo-remove "$ASSETSDIR/$REPONAME".db.tar.$REPO_COMPRESSOR "${zz[@]}"
                        sleep 1
                    fi
                fi

                # Put changed assets (built) to db.
                repo-add "$ASSETSDIR/$REPONAME".db.tar.$REPO_COMPRESSOR "${built[@]}"
            fi
        fi

        if [ $reposig -eq 1 ] ; then
            echo2 "Signing repo $REPONAME ..."
            repo-add --sign --key $SIGNER "$ASSETSDIR/$REPONAME".db.tar.$REPO_COMPRESSOR >/dev/null
        fi
        for xx in db files ; do
            rm -f "$ASSETSDIR/$REPONAME".$xx.tar.$REPO_COMPRESSOR.old{,.sig}
            rm -f "$ASSETSDIR/$REPONAME".$xx
            cp -a "$ASSETSDIR/$REPONAME".$xx.tar.$REPO_COMPRESSOR     "$ASSETSDIR/$REPONAME".$xx
            if [ $reposig -eq 1 ] ; then
                rm -f "$ASSETSDIR/$REPONAME".$xx.sig
                cp -a "$ASSETSDIR/$REPONAME".$xx.tar.$REPO_COMPRESSOR.sig "$ASSETSDIR/$REPONAME".$xx.sig
            fi
        done

        # Now all is ready for syncing with github.

        GitUpdate_repo "${built[@]}"

        sleep 3

        if false ; then
            case "$REPONAME" in
                endeavouros)
                    case "$use_release_assets" in
                        yes) ManageGithubReleaseAssets ;;
                        *)   ;; # ManageGithubNormalFiles ;;
                    esac
                    ;;
                *)
                    case "$SIGNER" in
                        EndeavourOS) ManageGithubReleaseAssets ;;
                        *) ManageGithubReleaseAssets ;;
                    esac
                    ;;
            esac
        else
            ManageGithubReleaseAssets
        fi
    else
        echo2 "Nothing to do."
    fi

    Destructor

    ShowOldCompressedPackages   # should show nothing

    #MirrorCheck

    RunPostHooks
}

SettleDown() {
    local arg
    local ask=yes
    local msg

    for arg in "$@" ; do
        case "$arg" in
            --no-ask) ask=no ;;
            -*) WARN "$FUNCNAME: unsupported parameter '$arg'." ;;
            *) msg="$arg" ;;
        esac
    done
    test -n "$msg" && echo2 "Info: $msg"
    if [ "$ask" = "yes" ] ; then
        read2 -p "Wait, let things settle down, then press ENTER to continue: " -t 10
    fi
    echo2 ""
}

AssetCmdShow() {
    local xx
    local line="$1"            # cmd
    shift

    case "$1" in
        -*) shift ;;           # option --quietly for delete-release-assets
    esac

    line+=" for $1:"           # tag
    shift

    echo2 "$line"
    for xx in "$@" ; do
        echo2 "    $xx"
    done
}

AssetCmd() {
    local arg=""
    case "$1" in
        --no-ask) arg="$1" ; shift ;;
    esac

    # AssetCmdShow "$@"
    "$@"
    if [ $? -ne 0 ] ; then
        DIE "command '$*' failed!"
    fi

    SettleDown $arg
}
AssetCmdLast() {
    local arg=""
    if [ "$tag" = "${RELEASE_TAGS[$last_tag]}" ] ; then
        arg="--no-ask"
    else
        arg="--no-ask"   # arg=""
    fi
    AssetCmd $arg "$@"
}

ManualCheckOfAssets() {
    local op="$1"
    local what="$2"

    case "$what" in
        repo) [ "$use_release_assets" = "yes" ] || return ;;
    esac

    sleep 1
    while true ; do
        case "$what" in
            assets) what="assets in $tag" ;;
        esac
        read2 -t 10 -p "$what: Is $op OK (Y/n)? "
        case "$REPLY" in
            [yY]* | "") break ;;
            *) ;;
        esac
    done
    echo2 ""
}

FinalStopBeforeSyncing() {
    local what="$1"
    printf2 "\n%s\n" "Final stop before syncing '$what' with github!"
    read2 -p "Continue (Y/n)? "
    case "$REPLY" in
        [yY]*|"") ;;
        *) Exit 0 ;;
    esac
}

ManageGithubReleaseAssets() {
    case "$use_release_assets" in
        no) return ;;
    esac

    echo2 "Syncing $REPONAME release assets with github:"

    local last_tag=$((${#RELEASE_TAGS[@]} - 1))
    local assets

    # Github seems to have issues with some files:
    # - too long paths when adding release assets to github ??
    # - file orders --> cache issues ??

    # Remove old assets (removable) from github and local folder.

    for tag in "${RELEASE_TAGS[@]}" ; do
        assets=()

        # delete-release-assets does not need the whole file name, only unique start!
        assets+=("$REPONAME".{db,files})

        if [ -n "$removableassets" ] ; then
            #AssetCmd delete-release-assets --quietly "$tag" "${removableassets[@]}"
            assets+=("${removableassets[@]}")

            if [ -r "$filelist_txt" ] ; then
                #AssetCmd delete-release-assets --quietly "$tag" "$(basename "$filelist_txt")"
                assets+=("$(basename "$filelist_txt")")
            fi
        fi

        AssetCmd --no-ask delete-release-assets --quietly "$tag" "${assets[@]}"

        if [ -r "$filelist_txt" ] ; then
            echo2 "deleting file $filelist_txt ..."
            rm -f $filelist_txt
        fi

        ManualCheckOfAssets deletion assets

        # Now manage new assets.

        assets=()

        if [ "$use_filelist" = "yes" ] ; then
            # create a list of package and db files that should be also on the mirror
            pushd "$ASSETSDIR" >/dev/null
            pkg="$(ls -1 *.pkg.tar.* "$REPONAME".{db,files}{,.tar.$REPO_COMPRESSOR}{,.sig} 2>/dev/null)"
            if [ -n "$filelist_txt" ] ; then
                echo "$pkg" > "$filelist_txt"
            fi
            popd >/dev/null
        fi

        # transfer assets (built, signed and db) to github
        if [ -n "$built" ] ; then
            #AssetCmd add-release-assets "$tag" "${signed[@]}" "${built[@]}"
            assets+=("${built[@]}")
            if [ -r "$filelist_txt" ] ; then
                #AssetCmd add-release-assets "$tag" "$filelist_txt"
                assets+=("$filelist_txt")
            fi
        fi

        assets+=(
            "$REPONAME".{db,files}
            "$REPONAME".{db,files}.tar.$REPO_COMPRESSOR
        )
        if [ $reposig -eq 1 ] ; then
            assets+=("$REPONAME".{db,files}.tar.$REPO_COMPRESSOR.sig)
            assets+=("$REPONAME".{db,files}.sig)
        fi
        if [ -n "$built" ] ; then
            assets+=("${signed[@]}")
        fi

        AssetCmdLast add-release-assets "$tag" "${assets[@]}"

        if [ "$tag" = "${RELEASE_TAGS[$last_tag]}" ] ; then
            sleep 1
            break
        fi

        ManualCheckOfAssets addition assets
    done
}

ManageGithubNormalFiles() {
    return    # no more needed !!?

    case "$REPONAME" in
        endeavouros) ;;
        endeavouros-testing-dev) return ;;   # TODO: remove 'return' when the repo exists!
        *) return ;;
    esac

    local workdir="$HOME/EOS/repo"
    local targetdir="$workdir/$REPONAME"
    local cp_output

    test -d "$workdir"       || DIE "work folder $workdir does not exist."
    test -d "$targetdir"     || DIE "target folder $targetdir does not exist."

    Pushd "$workdir"
    cp_output="$(cp -uv "$ASSETSDIR"/*.{db,files,zst,xz,sig} "$targetdir")"   # $asset_file_endings
    Popd

    if [ -n "$cp_output" ] ; then
        echo2 "$cp_output"
        printf2 "\nFiles were updated. Goto $workdir and transfer changes to github (with git commands).\n"
    else
        echo2 "Nothing more to do."
    fi
}

AssetsConfLocalVal() {
    # Search file assets.conf for values like:
    #     local REPONAME="repo-name"

    local searchval="$1"
    grep "^local ${searchval}=" $ASSETS_CONF | cut -d '=' -f 2 | tr -d '"' | tr -d "'"
}

Main() {
    local _first_arg="$1"
    case "$_first_arg" in
        --dir=*)
            _first_arg="${_first_arg#*=}"
            # [ ! -d "$_first_arg" ] || DIE "the folder in parameter '$1' is not found."
            cd "$_first_arg" || DIE "'cd $_first_arg' failed."
            shift
            ;;
    esac
    local ASSETS_CONF=assets.conf   # This file must exist in the current folder when building packages.
    local PROGNAME="$(basename "$0")"
    local ARCH=x86_64

    [ "$PROGNAME" = "bashdb" ] && PROGNAME="${BASH_ARGV[-1]}"  # could always be like this?
    [ -n "$PROGNAME" ] || PROGNAME="assets.make"
    [ -L .git ] || DIE "$PWD/.git must be a symlink to the real .git!"
    [ -r $ASSETS_CONF ] || DIE "file './$ASSETS_CONF' does not exist in $PWD."
    # [ -L $ASSETS_CONF ] || DIE "$PWD/$ASSETS_CONF must be a symlink to the real $ASSETS_CONF!"

    local reponame="$(AssetsConfLocalVal REPONAME)"
    local signer="$(  AssetsConfLocalVal SIGNER)"
    local fail=0
    # local asset_file_endings="db,files,zst,xz,sig"

    local _COMPRESSOR="$(grep "^PKGEXT=" /etc/makepkg.conf | tr -d "'" | sed 's|.*\.pkg\.tar\.||')"
    local REPO_COMPRESSOR="$(AssetsConfLocalVal REPO_COMPRESSOR)"

    test -n "$REPO_COMPRESSOR" || REPO_COMPRESSOR=xz

    if [ -z "$(grep ^PKGEXT /etc/makepkg.conf | grep zst)" ] ; then
        echo2 "/etc/makepkg.conf: use zst in variable PKGEXT"
        fail=1
    fi
    if [ -z "$(grep ^COMPRESSZST /etc/makepkg.conf | grep T0)" ] ; then
        echo2 "/etc/makepkg.conf: add -T0 -19 into variable COMPRESSZST"
        fail=1
    fi

    test $fail -eq 1 && return

    local _packager="$(AssetsConfLocalVal _PACKAGER)"
    if [ -n "$_packager" ] ; then
        export PACKAGER="$_packager"
    else
        export PACKAGER="EndeavourOS <info@endeavouros.com>"
    fi
    _packager=""

    echo2 "PACKAGER: $PACKAGER"

    local verfile=/usr/share/endeavouros/scripts/eos-pkgbuild-setup.version
    if [ -r $verfile ] ; then
        echo2 "VERSION: $(grep ^VERSION= $verfile | cut -d '=' -f 2)"
    fi

    DebugBreak

    Main2 "$@"
}

Main "$@"
