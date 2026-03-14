#!/bin/bash

######################################## Functions to be used in eos-update-other.bash >>>

OncePerBootSession() {
    local marker="/tmp/tmp.$1"                          # folder name in /tmp
    if [ ! -r "$marker" ] ; then
        mkdir -m go-rwx -p "$marker"
        return 0
    else
        return 1
    fi
}

OncePerNDays() {
    local marker="$1"
    local ndays="$2"                                     # should be >= 1
    local yearday=$(date +%-j)                           # 1..366

    marker="$HOME/.config/eos_update_other.$marker"      # contains the "next run day"

    if [ -r "$marker" ] ; then
        local next="$(cat "$marker" 2>/dev/null)"
        if [ -z "$next" ] || [ "${next//[0-9]/}" ] ; then
            next=0                                       # probably not needed...
        fi
        if [ "$yearday" -ge "$next" ] ; then
            rm -rf "$marker"
            return 0
        else
            return 1
        fi
    else
        local nextrunday=$((yearday + ndays))
        [ $nextrunday -gt 366 ] && nextrunday=$((nextrunday - 366))
        echo "$nextrunday" > "$marker"          # save the next run day
        return 0
    fi
}

ColorLines() {
    ## Print a message with the given "color" (see also /bin/eos-color).
    ## A message may include multiple lines via positional parameters.
    ## The lines after the first will be indented, i.e. the trailing positional paramemeters ($2, $3, ...)
    ## will become the additional lines of the message.

    local -r color="$1"
    local -r first_line="$2"
    local -r head="==>"
    local -r head2="${head//?/ }"
    shift 2
    eos-color "$color" 2
    printf "${head}  %s\n" "$first_line" >&2
    [ "$1" ] && printf "${head2} %s\n" "$@" >&2      # other lines of the message
    eos-color reset 2
}
_ColorLines() { ColorLines "$@" ; }


####### Function DeprecatedOldCompatibility is deprecated and will be removed later. ########

DeprecatedOldCompatibility() {
    if OncePerBootSession "I2301msiEBoRW" ; then
        ColorLines info "Tip: you may add other update commands into ${0}."
    fi
}

######################################## <<< Functions to be used in eos-update-other.bash

