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

echo2() { echo "$@" >&2 ; }
STOP()  { echo2 "Info: $1" ; exit 0 ; }
DIE()   { echo2 "Error: $1" ; exit 1 ; }

Main()
{
    local pkgs="$*"
    test -n "$pkgs" || STOP "no packages given."
    local reponame=$(basename "$PWD")
    local dbend=xz
    local pkg xx yy olds

    for pkg in $pkgs ; do
        test -r "$pkg"     || DIE "file not found: '$pkg'"
        test -r "$pkg.sig" || DIE "file not found: '$pkg.sig'"
    done

    # Remove old packages from the db.
    for pkg in $pkgs ; do
        # list packages of the db into yy
        yy="$(tar --list --exclude */desc -f $reponame.db.tar.$dbend | sed 's|-[0-9].*$||')"
        if [ -n "$(echo "$yy" | grep "^$pkg$")" ] ; then
            olds+=("$pkg")
            echo2 "    remove old pkg: $pkg"
        fi
    done
    if [ -n "$olds" ] ; then
        repo-remove $reponame.db.tar.$dbend "${olds[@]}"    # old packages found, remove
    fi

    # Add new packages to the db.
    for pkg in $pkgs ; do
        echo2 "    add new pkg: $pkg"
    done
    repo-add $reponame.db.tar.$dbend $pkgs || DIE "repo-add failed."

    # Remove the .old db files.
    rm -f $reponame.{db,files}.tar.$dbend.old

    # Change database symlinks to real files.
    for xx in db files ; do
        rm -f $reponame.$xx
        cp -a $reponame.$xx.tar.$dbend $reponame.$xx
    done
}

Main "$@"
