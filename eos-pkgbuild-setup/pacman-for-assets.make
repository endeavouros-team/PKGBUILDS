#!/bin/bash

# pacman wrapper for helping in the phases of makepkg call.

echo2() { echo "$@" >&2 ; }

CheckToBeInstalled() {
    local name
    for name in "$@" ; do
        case "$name" in
            -*) ;;
            *)
                if ! /usr/bin/pacman -Q "$name" >& /dev/null ; then
                    echo2 "   -> install: $name"
                fi
                ;;
        esac
    done
}

Main()
{
    # echo2 "====> params: '$*'"

    case "$1" in
        -Rns)    echo2 "removing: $*" ;;
        -S|-U)   echo2 "installing: $*" ;;
        -T)      CheckToBeInstalled "$@" ;;
        -Qi)     echo2 "removing make dependencies" ;;
    esac
    /usr/bin/pacman "$@"
}

Main "$@"
