#!/bin/bash
#
# Easy way to add given packages into a repo database.
#
# Assume given package files and their .sig files
# already exist in the current folder.
# 
# Note: package names should have the following endings:
#    *.pkg.tar.zst
#    *.pkg.tar.xz
#
# Example usage:
#    easy.make eos-pkgbuild*.zst
#

echo2()   { echo "$@" >&2 ; }
printf2() { printf "$@" >&2 ; }
STOP()    { echo2 "Info: $1" ; exit 0 ; }
DIE()     { echo2 "Error: $1" ; exit 1 ; }

Repo_add() {
    echo2 "repo-add $@"
    repo-add "$@"
}

Repo_remove() {
    echo2 "repo-remove $@"
    repo-remove "$@"
}

run_git_command() {
    local cmd="$1"
    local answer

    printf2 "\n%s\n\n" "$cmd"

    read -p "Run the above command (y/N)? " answer >&2

    case "$answer" in
        [yY]*) $cmd ;;
    esac
}

git_commands() {
    local git_add=(git add)
    git_add+=(${oldpkgs[*]})                    # Set old git files to be removed.
    git_add+=($pkgs)
    git_add+=($reponame.{db,files}{,.tar.xz})

    run_git_command "git pull"
    run_git_command "${git_add[*]}"
    run_git_command "git commit -m '.'"
    run_git_command "git push"
}

Main()
{
    local pkgs="$*"
    test -n "$pkgs" || STOP "no packages given."
    local reponame=$(basename "$PWD")
    local dbend=xz
    local pkg xx oldnames oldpkgnames newpkgname oldpkgname oldpkgs

    for pkg in $pkgs ; do
        test -r "$pkg"     || DIE "file not found: '$pkg'"
        test -r "$pkg.sig" || DIE "file not found: '$pkg.sig'"
    done

    # Find old packages, they must be removed from github.
    for pkg in $pkgs ; do
        newpkgname="$(echo "$pkg" | sed 's|-[0-9].*$||')"
        xx="$(ls -1 ${newpkgname}-*.pkg.tar.xz ${newpkgname}-*.pkg.tar.zst 2>/dev/null)"
        if [ -n "$xx" ] ; then
            oldpkgs+=("$xx")
        fi
    done

    # Remove old packages from the db.
    oldpkgnames="$(echo "${oldpkgs[@]}" | sed 's|-[0-9].*$||')"
    for pkg in $pkgs ; do
        newpkgname="$(echo "$pkg" | sed 's|-[0-9].*$||')"
        for oldpkgname in $oldpkgnames ; do
            if [ "$newpkgname" = "$oldpkgname" ] ; then
                oldnames+=("$oldpkgname")
                break
            fi
        done
    done
    if [ -n "$oldnames" ] ; then
        Repo_remove $reponame.db.tar.$dbend "${oldnames[@]}"    # old packages found, remove
    fi

    # Add new packages to the db.
    Repo_add $reponame.db.tar.$dbend $pkgs || DIE "repo-add failed."

    # Remove the .old db files.
    rm -f $reponame.{db,files}.tar.$dbend.old

    # Change database symlinks to real files.
    for xx in db files ; do
        rm -f $reponame.$xx
        cp -a $reponame.$xx.tar.$dbend $reponame.$xx
    done

    git_commands
}

Main "$@"
