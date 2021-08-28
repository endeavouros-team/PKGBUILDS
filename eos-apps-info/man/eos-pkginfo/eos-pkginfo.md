# eos-pkginfo

Show usage and/or developer information about an EndeavourOS/Arch/AUR package using information on the internet.<br>Package can be identified by its name, included program, or file path.

Note: EndeavourOS specific manual pages exist at the EndeavourOS pages (currently at github), and are shown from there.<br>
Other manual pages are shown from their respective sites.

Supports bash completion for
- package names
- full paths

but (currently) bash completion is not supported command names without full path.

Note that, for performance reasons, completion of the AUR packages is supported with a different command name, `eos-pkginfo-aur` (which can be a made symlink to `eos-pkginfo`, see the **Tips** below).

## Synopsis
```
eos-pkginfo [options] {<package-name> | <program-name> | <file path>}
```

## Options
```
--browser=<browser-command>
        Set the preferred browser, e.g. firefox
```

## Examples

```
eos-pkginfo --browser=firefox welcome
```



## Tips

To use a shorter alias name (say `pkgi`) for `eos-pkginfo` and use bash completion support with the alias name,
you can add for example the following lines into your `~/.bashrc`:
```
# 1. Make pkgi as an alias to eos-pkginfo:
source /usr/share/bash-completion/completions/eos-pkginfo
alias pkgi=eos-pkginfo
complete -F _eos-pkginfo_ pkgi

# 2. For completing AUR packages create a symlink eos-pkginfo-aur:
sudo ln -s /usr/bin/eos-pkginfo /usr/bin/eos-pkginfo-aur
# Assuming a sourced completion file as above, create an alias pkgi-aur like above:
alias pkgi-aur=eos-pkginfo-aur
complete -F _eos-pkginfo_aur pkgi-aur
```
To support something similar to manual pages, write the following function into your `~/.bashrc`:
```
hlp() {
    /usr/bin/man "$@" 2>/dev/null || \
        /usr/bin/eos-pkginfo "$@" 2>/dev/null || \
        echo "No manual entry for $*"
}

# add bash completion support:
complete -F _eos-pkginfo_ hlp
```

With this definition `hlp` works like `man` for Arch and AUR manual page entries, and supports EndeavourOS manual page entries via `eos-pkginfo`:
```
hlp ls
hlp eos-pkginfo
```

## See also
eos-apps-info
