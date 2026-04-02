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
    printf "${head} %s\n" "$first_line" >&2
    [ "$1" ] && printf "${head2} %s\n" "$@" >&2      # other lines of the message
    eos-color reset 2
}


EOS_DateReached() {
    local targetdate="$1"       # format: YYYY-MM-DD
    targetdate=$(date --date="$targetdate" "+%s")
    [ "$(date "+%s")" -ge "$targetdate" ] && return 0 || return 1
}

_EOS_UPDATE_LIB_BASH_FILE="/etc/eos-update-lib.bash"


####### Deprecated functions to be removed later. ########

_ColorLines() {                                                       # This function will be removed around 1-Sep-2026.
    local -r killdate="2026-09-01"
    local -r id="CL_u1506VBKe2pZ"
    local tips=(
        "Instead consider using function"
        "    ColorLines"
        "See also: $_EOS_UPDATE_LIB_BASH_FILE."
    )

    if EOS_DateReached "$killdate" ; then
        ColorLines error "$0: function $FUNCNAME has been removed." "${tips[@]}"
        return 1
    else
        if OncePerBootSession "$id" ; then
            ColorLines warning "$0: function $FUNCNAME is deprecated and will be removed at $killdate." "${tips[@]}"
        fi
        ColorLines "$@"
        return 0
    fi
}

DeprecatedOldCompatibility() {                                        # This function will be removed around 1-Sep-2026.
    local -r killdate="2026-09-01"
    local -r id="I2301msiEBoRW"
    local tips=(
        "Instead consider using functions"
        "    OncePerBootSession"
        "    ColorLines"
        "See also: $_EOS_UPDATE_LIB_BASH_FILE."
    )

    if EOS_DateReached "$killdate" ; then
        ColorLines error "$0: function $FUNCNAME has been removed." "${tips[@]}"
        return 1
    else
        if OncePerBootSession "$id" ; then
            ColorLines warning "$0: function $FUNCNAME is deprecated and will be removed at $killdate." "${tips[@]}"
            if OncePerBootSession "$id" ; then
                ColorLines info "Tip: you may add other update commands into $0."
            fi
        fi
        return 0
    fi
}

######################################## <<< Functions to be used in eos-update-other.bash

