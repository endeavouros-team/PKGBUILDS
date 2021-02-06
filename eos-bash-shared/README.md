# eos-bash-shared

Code shared between EndeavourOS apps, and certain small but useful tools.

File name | Description
:---- | :-------
ChangeDisplayResolution | Helps changing display resolution (with xrandr).
device-info | A helper app for finding info about devices.
eos-connection-checker | Checks that an internet connection is available.
eos-FindAppIcon | Find a suitable icon path for an app.
eos-pkg-changelog | Show the changelog of (most) EndeavourOS packages.<br>Usage: `eos-pkg-changelog <package-name>`
eos-pkginfo | Show usage and/or developer information about an EndeavourOS/Arch/AUR package.<br>Package can be identified by its name, included program, or file path.<br>Usage: `eos-pkginfo {<package-name> \| <program-name> \| <file path>`}
eos-pkginfo.completion | Bash completion for eos-pkginfo.<br>Note: does not support completion for AUR packages because of performance.
eos-script-lib-yad | Common bash code for various EOS apps.
eos-script-lib-yad.conf | Configuration file for eos-script-lib-yad.
eos-sendlog | Send a text file to pastebin, and save the returned URL to ~/.config/eos-sendlog.txt.<br>Example: `cat log.txt \| eos-sendlog`
eos-wallpaper-set | Sets the wallpaper according to the current DE, given file, or from given folder.
ksetwallpaper.py | KDE wallpaper installer, forked from https://github.com/pashazz/ksetwallpaper.
paccache-service-manager | Tool to manage paccache service (prevents package cache size growing too much).
RunInTerminal | Run one or many commands in a new terminal. Useful for Welcome and related apps.
su-c_wrapper | A small utility to perform command "su -c". Useful e.g. for users without sudoers rights.<br> Tip: make a short alias, for example: `alias root=su-c_wrapper`
UpdateInTerminal | Simple system updater using only terminal.
UpdateInTerminal.desktop | Launcher & icon for UpdateInTerminal.

<br><br>

## Pictures of a few apps

<br>

### ChangeDisplayResolution:

<br>

![](ChangeDisplayResolution.png)

### paccache-service-manager:

<br>

![](paccache-service-manager.png)

## Tips

Tips for some tools above.

### eos-pkginfo

To use a shorter alias name (say `pkgi`) for `eos-pkginfo` and use bash completion support with the alias name,
you can add for example the following lines into your `~/.bashrc`:
<pre>
# 1. Make pkgi as an alias to eos-pkginfo:
source /usr/share/bash-completion/completions/eos-pkginfo
alias pkgi=eos-pkginfo
complete -F _eos-pkginfo_ pkgi

# 2. For completing AUR packages create a symlink eos-pkginfo-aur:
sudo ln -s /usr/bin/eos-pkginfo /usr/bin/eos-pkginfo-aur
# Assuming a sourced completion file as above, create an alias pkgi-aur like above:
alias pkgi-aur=eos-pkginfo-aur
complete -F _eos-pkginfo_aur pkgi-aur
</pre>
