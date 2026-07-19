#!/bin/bash

## With option --other-updates 'eos-update' will call function 'Main' (below) with one of the parameters
##    beginning
##    end
## Your job is to fill up the contents of the 'beginning' and 'end' branches
## of the case...esac construct below.
##
## Available functions that can be used here:
##     OncePerBootSession
##         Purpose:     Allows running your commands once after each system boot.
##         Parameters:  - "unique-id"
##     OncePerNDays
##         Purpose:     Allows running your commands once per "number-of-days" days.
##         Parameters:  - "unique-id"
##                      - "number-of-days"
##     ColorLines
##         Purpose:     Prints given text strings, each string on a separate line.
##         Parameters:  - One of: "info" "warning" "error" "tip" (see also: /bin/eos-color).
##                      - One or more strings (see the examples below).
##     ColorLine
##         Purpose:     Prints the given text string with a color.
##         Parameters:  - Optionally: options -e and -n from the 'echo' command, see 'man echo'.
##                      - One of: "info" "warning" "error" "tip" (see also: /bin/eos-color).
##                      - A string (see the examples below).
##
## Available but deprecated functions:
##     DeprecatedOldCompatibility      # Shows a deprecation message.
##     _ColorLines                     # Shows a deprecation message; replaced by ColorLines.

source "/etc/eos-update-lib.bash"      # gets the functions mentioned above

Main() {  # NOTE: do NOT rename this function!

    ## Run your commands at various points in time during eos-update.
    case "$1" in
        beginning)
            ## HERE: Add your commands to be executed in the beginning of eos-update.
            ##
            ## EXAMPLE: Once after every system boot:
            ##          - Rank mirrors once after every system boot;
            ##          - See Arch news.
            # if OncePerBootSession "id-983aa9587" ; then
            #     ColorLine info "Updating /etc/pacman.d/mirrorlist"
            #     create-ml --save         # requires package iso-create-ml
            #     Colorline -en info "\n==> Checking Arch news, please wait ... "
            #     paru -Pw 2>/dev/null || ColorLine -m info "nothing."
            # fi
            ;;
        end)
            ## HERE: Add your commands to be executed in the end of eos-update.
            ##
            ## EXAMPLE: Once a week:
            ##          - Freshen up database for 'pacman -Fl <package-name>'.
            #     if OncePerNDays "id-k95i60923" 7
            #         ColorLine info "pacman -Fy"
            #         sudo pacman -Fy
            #     fi
            ## EXAMPLE: Show non-native packages.
            #     ColorLine info "pacman -Qm"
            #     pacman -Qm | sed 's|^|    |' >&2
            ## EXAMPLE: Handle files like *.pacnew and friends.
            #     ColorLine info "eos-pacdiff --quiet"
            #     eos-pacdiff --quiet                   # ADVANCED! Be careful, don't overwrite system files blindly!
            ## EXAMPLE: Show a multiline message.
            #     ColorLines tip "first line" "second line" "third line"
            ;;
        *)
            # This is just for backwards compatibility. You may remove or comment out the following line.
            DeprecatedOldCompatibility
            ;;
    esac
}

Main "$@"
