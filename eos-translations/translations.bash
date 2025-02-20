#!/bin/bash

# Translations especially for the 'welcome' app.

tr_indexes=()

# Declare variable that hold translations:
declare -A tr_strings

_UserWarning() {
    if [ "$2" ] ; then
        echo "$PRETTY_PROGNAME: warning: translation string '$1' or parameters '$2' was not properly recognized." >&2
    else
        echo "$PRETTY_PROGNAME: warning: translation string '$1' was not properly recognized." >&2
    fi
}

# Helper functions:
_tr_add() {
    local lang="$1"
    local ix="$2"
    local str="$3"

    shift 3

    printf -v str "$str" "$@"   # add possible parameters into the given string
    [ $? -eq 0 ] || _UserWarning "$str" "$*"

    tr_strings["Lang_${lang}__$ix"]="$str"

    tr_indexes+=("$ix")
}
_tr_add2() {
    local ix="$1"
    local str="$2"

    # local lang="$_tr_lang"
    # test -n "$lang" || lang="$SELECTED_EOS_LANGUAGE"

    if [ -z "$_tr_lang" ] ; then
        echo "Warning: variable '_tr_lang' is not set in the translation file!" >&2
        _tr_lang=en
    fi

    _tr_add "$_tr_lang" "$ix" "$str"
}

ltr() {                                              # puts string to stdout
    local ix="$1"
    local str="${tr_strings["Lang_${SELECTED_EOS_LANGUAGE}__$ix"]}"
    shift
    # test -n "$2" && { str+="$2"; shift; }            # remove this line some day...
    printf -v str "$str" "$@"
    [ $? -eq 0 ] || _UserWarning "$str" "$*"
    echo "$str"
}
ltr2() {                                             # puts string to stderr
    ltr "$@" >&2
}

_translate_with_fixes() {
    # Translate English strings to a language stored in variable $lang.
    #
    # Assume strings like the following example:
    #
    #     "<pre1>$PRETTY_PROGNAME</pre1> app is disabled. To start it anyway, use option <pre2>--enable</pre2>."
    #
    # So phrases that may not be modified in any way are surrounded with HTML like prefix and suffix
    #
    #      <preN>this will not be modified</preN>
    #
    # The N in <preN> must be an ordinal number 1...M. Do not bypass numbers, e.g. 1 2 3 5 fails after 3!

    # First, translate the given string.
    local eng2="$1"
    local to="$(echo "$eng2" | sed 's|&#\([0-9]*\);|<eoscd\1>|g')"
    local to="$(trans -e $tr_engine -no-autocorrect -no-auto -b "en:$lang" "$to")"

    if [ -z "$to" ] ; then
        echo "$eng2"           # translation failed!
        echo "Warning: translating ix '$ix' failed." > "$HOME/.translation-${lang}-issue.log"
        return 1
    fi

    # Then fix those parts that weren't supposed to be modified.
    local eosN ix=0
    while true ; do
        ((ix++))
        eosN="$(echo "$eng2" | sed 's|.*<eos'$ix'(\([^)]*\))>.*|\1|')"
        if [ "$eosN" != "$eng2" ] ; then
            to="$(echo "$to" | sed -e 's|<[ ]*eos'$ix'[ ]*([^)]*)[ ]*>|'"$eosN"'|g')"  # e.g. every pre1 stuff is changed
        else
            break
        fi
    done
    to="$(echo "$to" | sed 's|<eoscd38>|\&#38;|g')"                 # '&'
    to="$(echo "$to" | sed 's|[ ]*<eoscd\([0-9]*\)>|\&#\1;|g')"     # '!' and '?'

    #to="$(echo "$to" | sed 's|<eosb>|<b>|g')"
    #to="$(echo "$to" | sed 's|</eosb>|</b>|g')"
    #to="$(echo "$to" | sed 's|<eosbr>|<br>|g')"

    echo "$to"
}

_tr_generate() {
    # Automatic translation to "any" language!

    mkdir -p "$trdir2"

    echo "Translating to $lang ..." >&2
    export SELECTED_EOS_LANGUAGE="$lang"
    #silent_lang_warnings=yes   # give no more warnings about this language...

    cat <<EOF > $target_gen
# Automatic translation (language: $lang) for the Welcome app.

_tr_lang=$lang

_exclamation='&#33;' # '!'
_and='&#38;'         # '&'
_question='&#63;'    # '?'

EOF

    local tr_indexes_en=(${tr_indexes[*]})
    local ix xx
    local count="${#tr_indexes_en[@]}" j=0

    for ix in "${tr_indexes_en[@]}" ; do
        #echo "$ix"                                          # show something because this is slow...
        ((j++))
        printf "\r%d%% " "$(echo 100*$j/$count | bc)" >&2

        xx="${tr_strings[Lang_en__$ix]}"
        xx="$(_translate_with_fixes "$xx")"
        _tr_add "$lang" "$ix" "$xx"
        xx="$(ltr "$ix")"
        printf "_tr_add2 %-25s \"%s\"\n" "$ix" "$xx" >> $target_gen
    done
    echo "... ${#tr_indexes_en[@]} translations done!" >&2
}

# Initialize translations for the app:
_init_translations() {
    local lang=""
    local generate=no
    local arg
    local tr_engine=""
    local tr_prefer=manual    # or generated
    local trlist trfile
    local errlog=$(mktemp -u /tmp/translations-XXXXX.errlog)

    for arg in "$@" ; do
        case "$arg" in
            --generate) generate=yes ;;
            --tr-engine=*) tr_engine="${arg#*=}" ;;
            --tr-prefer=*) tr_prefer="${arg#*=}" ;;
            -*) echo "Error: $FUNCNAME: unsupported option '$arg'." >&2 ; return 1 ;;
            *) lang="$arg" ;;
        esac
    done

    local trdir="$translations_dir"   # from the using (e.g. welcome) app
    local f1 f2

    # We may have $lang as 'pt' or 'pt_BR' or something else...

    if [ -z "$lang" ] ; then
        # See /usr/share/i18n/locales

        #f1="$(echo "$LANG" | cut -d '_' -f 1)"
        #f2="$(echo "$LANG" | sed "s|^${f1}_\([A-Z@]*[a-z]*\).*$|\1|")"
        case "$LANG" in
            *_*) f1="${LANG%%_*}"
                 f2="${LANG#*_}"
                 ;;
            *)   f1="${LANG}"
                 f2=""
                 ;;
        esac

        if [ -r "$trdir/translation-${f1}_$f2.bash" ] ; then
            lang="${f1}_$f2"
        elif [ -r "$trdir/translation-$f1.bash" ] ; then
            lang="$f1"
        else
            lang=en
        fi
    fi

    if [ ! -r "$trdir/translation-$lang.bash" ] ; then
        echo "Warning: $FUNCNAME: language '$lang' is not recognized, using en." >&2
    fi

    local trdir2="$HOME/.config/EOS-generated-translations"              # generated translations go here
    local target_gen="$trdir2/translation-${lang}-generated.bash"

    if [ "$generate" = "yes" ] ; then
        if [ -z "$tr_engine" ] ; then
            tr_engine=bing
        fi
        source $trdir/translation-reference.bash
        _tr_generate
        return
    fi

    case "$tr_prefer" in
        manual)
            trlist=(
                "$trdir/translation-en.bash"
                "$trdir2/translation-en-generated.bash"
            )
            ;;
        generated)
            trlist=(
                "$trdir2/translation-en-generated.bash"
                "$trdir/translation-en.bash"
            )
            ;;
        *)
            echo "option --tr-prefer has unsupported value '$tr_prefer'." >&2
            return 1
            ;;
    esac

    for trfile in "${trlist[@]}" ; do
        if [ -r "$trfile" ] ; then
            #echo "$trfile" >&2
            source "$trfile"
            break
        fi
    done

    local xx ix
    local silent_lang_warnings=no
    local -r pname="$PRETTY_PROGNAME"
    local selected=0

    export SELECTED_EOS_LANGUAGE=en
    if [ "$lang" != "en" ] ; then
        case "$tr_prefer" in
            manual)
                trlist=(
                    "$trdir/translation-"$lang".bash"
                    "$trdir2/translation-"$lang"-generated.bash"
                )
                ;;
            generated)
                trlist=(
                    "$trdir2/translation-"$lang"-generated.bash"
                    "$trdir/translation-"$lang".bash"
                )
                ;;
        esac

        for trfile in "${trlist[@]}" ; do
            if [ -r "$trfile" ] ; then
                export SELECTED_EOS_LANGUAGE="$lang"
                source "$trfile"
                selected=1

                # silencing warnings no more needed
                if false && [ "$tr_prefer" = "manual" ] ; then
                    case "$lang" in
                        "de") silent_lang_warnings=yes ;;   # de is not fully translated yet...
                    esac
                fi

                break
            fi
        done

        if [ $selected -eq 0 ] ; then
            echo "Warning: $pname: no translations file for language '$lang' - falling back to '$SELECTED_EOS_LANGUAGE'." >&2
            silent_lang_warnings=yes   # give no more warnings about this language...
        fi
    fi

    if [ "$SELECTED_EOS_LANGUAGE" != "en" ] ; then
        # Check we have all strings translated. Copy the missing strings from 'en'.
        for ix in "${tr_indexes[@]}" ; do
            xx="${tr_strings["Lang_${lang}__$ix"]}"
            if [ -z "$xx" ] ; then
                if [ "$silent_lang_warnings" = "no" ] ; then
                    echo "Warning: $pname: language '$lang' placeholder '$ix': translation not found, 'en' used as fallback." >> $errlog
                fi
                tr_strings["Lang_${lang}__$ix"]="${tr_strings[Lang_en__$ix]}"
            fi
        done
    fi
    if [ -r $errlog ] ; then
        echo "Info: some translations will fall back to English, see file '$errlog'."
    fi
}
