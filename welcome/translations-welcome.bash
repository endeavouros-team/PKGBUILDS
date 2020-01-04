#!/bin/bash

# Translations for the 'welcome' app.

tr_indexes=()

# Declare variable that hold translations:
declare -A tr_strings

# Helper functions:
_tr_add() {
    local lang="$1"
    local ix="$2"
    local str="$3"

    tr_strings["Lang_${lang}__$ix"]="$str"

    tr_indexes+=("$ix")
}

ltr() {                                              # puts string to stdout
    local ix="$1"
    local str="${tr_strings["Lang_${SELECTED_LANGUAGE_WELCOME}__$ix"]}"
    echo "$str"
}
ltr2() {                                             # puts string to stderr
    ltr "$1" >&2
}


# Initialize translations for the app:
_init_translations() {
    local lang="$1"
    local xx ix
    local trdir="$translations_dir"   # from Welcome app
    local silent_lang_warnings=0

    if [ -z "$lang" ] ; then
        lang="$(echo "$LANG" | cut -d '_' -f 1)"
    fi
    case "$lang" in
        [a-z][a-z]) ;;
        *)
            echo "Error: $FUNCNAME: language '$lang' is not recognized!" >&2
            ;;
    esac

    export SELECTED_LANGUAGE_WELCOME="$lang"

    source $trdir/translations-welcome-en.bash       # fallback language: English

    if [ -r $trdir/translations-welcome-$lang.bash ] ; then
        source $trdir/translations-welcome-$lang.bash
    else
        echo "Warning: $FUNCNAME: no translations file for language '$lang' - fallback to 'en'." >&2
        silent_lang_warnings=1   # no need to warn about this language anymore...
    fi

    # Check we have all strings translated.
    for ix in "${tr_indexes[@]}" ; do
        xx="${tr_strings["Lang_${lang}__$ix"]}"    # same as "$(ltr $ix)"
        if [ -z "$xx" ] ; then
            if [ "$silent_lang_warnings" = "0" ] ; then
                echo "Warning: $FUNCNAME: translation for language '$lang' placeholder '$ix' is not found, fallback 'en' used." >&2
            fi
            tr_strings["Lang_${lang}__$ix"]="${tr_strings["Lang_en__$ix"]}"
        fi
    done
}
