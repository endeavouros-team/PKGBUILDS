# eos-pkginfo

Show usage and/or developer information about an EndeavourOS/Arch/AUR package.<br>Package can be identified by its name, included program, or file path.

Supports bash conpletion for file names. Note that for AUR packages completion is not supported.

## Synopsis
```
eos-pkginfo [options] {<package-name> \| <program-name> \| <file path>`}
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
