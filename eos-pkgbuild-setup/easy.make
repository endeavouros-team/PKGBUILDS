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
    local pkg xx

    for pkg in $pkgs ; do
        test -r "$pkg"     || DIE "file not found: '$pkg'"
        test -r "$pkg.sig" || DIE "file not found: '$pkg.sig'"
    done

    repo-add $reponame.db.tar.xz $pkgs || DIE "repo-add failed."

    # change database symlinks to real files
    for xx in db files ; do
        rm -f $reponame.$xx
        cp -a $reponame.$xx.tar.xz $reponame.$xx
    done
}

Main "$@"
