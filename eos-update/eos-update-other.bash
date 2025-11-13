#!/bin/bash

_ColorLines() {
    # Print a message with the given "color" (see also /bin/eos-color).
    # A message may include multiple lines in separate positional parameters.
    # Message lines will be indented.

    local color="$1"   # trailing positional paramemeters are the lines of the message
    shift
    eos-color "$color" 2
    printf "==> %s\n" "$1" >&2
    shift
    [ "$1" ] && printf "    %s\n" "$@" >&2
    eos-color reset 2
}

# You may comment out the following tip.
_ColorLines info "Tip: you may add other update commands into ${0}."

# Add your other update commands (e.g. for 'flatpak') here!
