# bash completion for reflector        -*- shell-script -*-

_reflector_complete() {
    COMPREPLY=($(compgen -W "$1" -- "$cur"))
    [[ $COMPREPLY == *= ]] && compopt -o nospace
    compopt -o nosort
}

_reflector_complete_delay() {
    COMPREPLY=($(compgen -W "$1" -- "$cur"))          # float
    [[ $COMPREPLY == *= ]] && compopt -o nospace
    compopt -o nosort
}

_reflector_complete_threads() {
    COMPREPLY=($(compgen -W "{1..99}" -- "$cur"))     # uint8
    [[ $COMPREPLY == *= ]] && compopt -o nospace
    compopt -o nosort
}

_reflector_complete_countries() {
    local -r file=$folder/countrylist.$(/bin/date +%Y%V)     # update countrylist weekly
    local country_names

    mkdir -p $folder
    if [ -r $file ] ; then
        country_names="$(< $file)"
    else
        rm -f ${file%.*}.*
        country_names=$(/bin/reflector --list-countries) || return 1
        country_names=$(echo "$country_names" | /bin/sed -e '1,2d' -e 's|^\(.*[a-z]\)[ ]*[A-Z][A-Z].*$|\1|')
        echo "$country_names" > $file
    fi

    local IFS=$'\n'
    COMPREPLY=( $(compgen -W "$country_names" -- "$cur") )
    compopt -o nosort
    compopt -o filenames
}

_reflector_complete_mirrors() {
    local -r file=$folder/mirrors.$date
    mkdir -p $folder
    if [ -r $file ] ; then
        local mirrors=$(< $file)
    else
        local -r timeout=30
        local -r url="https://archlinux.org/mirrorlist/?protocol=https&ip_version=4&use_mirror_status=on"
        local mirrors=$(curl --fail -Lsm $timeout "$url" | grep "^#Server = " | awk '{print $NF}')
        [ "$mirrors" ] || exit 1
        echo "$mirrors" > $file
    fi
    mirrors=$(fzf -m < $file)

    local IFS=$'\n'
    COMPREPLY=( $(compgen -W "$mirrors" -- "$cur") )
    compopt -o nosort
    #compopt -o filenames
}

_reflector_options() {
    local opts=(
        --help     -h
        --age      -a
        --country  -c
        --exclude  -x
        --fastest  -f
        --include  -i
        --latest   -l
        --number   -n
        --protocol -p

        --cache-timeout
        --completion-percent
        --connection-timeout
        --delay
        --download-timeout
        --info
        --ipv4
        --ipv6
        --isos
        --list-countries
        --save
        --score
        --sort
        --threads
        --url
        --verbose
    )
    echo "${opts[*]}"
}

_reflector_() 
{
    local cur prev #words cword split
    _init_completion -s || return

    local -r folder=$HOME/.config/reflector-complete

    # Handle options that need sub-options.
    # Each option "case" should return immediately.

    case "$prev" in
        --age | --cache-timeout | --connection-timeout | --download-timeout | --fastest | --latest | --score | --number | -a | -f | -l | -n)
            COMPREPLY=($(compgen -P "$cur" -W "{0..9}"))
            compopt -o nospace
            ;;
        --completion-percent)
            COMPREPLY=($(compgen -W "{0..100}" -- "$cur"))
            compopt -o nosort
            ;;
        --country | -c)  _reflector_complete_countries ;;
        --protocol | -p) _reflector_complete "https http rsync" ;;
        --sort)          _reflector_complete "age rate country score delay" ;;
        --threads)       _reflector_complete ;;
        --delay)         _reflector_complete ;;
        --save)          _filedir ;;
        --url) ;;
        --include | -i | --exclude | -x) ;;    #_reflector_complete_mirrors ;;

        *)
            # Handle all top-level parameters.
            case "$cur" in
                -* | "")
                    # Any option or nothing yet.
                    _reflector_complete "$(_reflector_options)"
                    ;;
                *)
                    # Non-option parameters.
                    ;;
            esac
            ;;
    esac
} &&
complete -F _reflector_ reflector
