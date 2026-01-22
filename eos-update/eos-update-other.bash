#!/bin/bash

Main() {
    ## Run your commands at various points in time during eos-update.
    case "$1" in
        beginning)
            ## HERE: Add your commands to be executed in the beginning of eos-update.
            ## Example idea: ranking mirrors.
            ;;
        end)
            ## HERE: Add your commands to be executed in the end of eos-update.
            ## Example idea: updates with flatpak or other tools.
            ;;
    esac

    ## You may comment out this tip:
    _ColorLines info "Tip: you may add other update commands into ${0}."

    ## HERE: Add your other update commands (e.g. for 'flatpak') here!
    ## Note: This is deprecated, use the 'end)' branch of the 'case..esac' above instead.
}

_ColorLines() {
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

Main "$@"
