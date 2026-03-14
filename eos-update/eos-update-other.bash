#!/bin/bash

## File /etc/eos-update-lib contains functions that can be used here.
## Functions:
##    OncePerBootSession                # parameters:  unique-id
##    OncePerNDays                      # parameters:  unique-id number-of-days
##    ColorLines                        # parameters:  N strings each on a separate line
## Functions to be removed later:
##    DeprecatedOldCompatibility
##    _ColorLines                       # replaced by ColorLines
#
source /etc/eos-update-lib.bash

## Function 'Main' will be called with one of the parameters
##    beginning
##    end
##    ''                                 # no parameter; deprecated, use 'end' instead.

Main() {
    ## Run your commands at various points in time during eos-update.
    case "$1" in
        beginning)
            ## HERE: Add your commands to be executed in the beginning of eos-update.
            ##
            ## EXAMPLE: rank mirrors once after every boot.
            # local my_country=Netherlands
            # if OncePerBootSession "id-983aa9587" ; then
            #     ColorLines "Updating /etc/pacman.d/mirrorlist"
            #     reflector -p https -c $my_country,de --latest 10 --sort rate --save /etc/pacman.d/mirrorlist
            # fi
            ;;
        end)
            ## HERE: Add your commands to be executed in the end of eos-update.
            ##
            ## EXAMPLE: Freshen up database for 'pacman -Fl <package-name>' once a week:
            # if OncePerNDays "id-k95i60923" 7
            #     sudo pacman -Fy
            # fi
            #
            ## EXAMPLE 2: show a multiline message.
            # ColorLines "first line" "second line" "third line" 
            ;;
        *)
            # This is just for backwards compatibility. You may remove or comment out the following line.
            DeprecatedOldCompatibility
            ;;
    esac
}

Main "$@"
