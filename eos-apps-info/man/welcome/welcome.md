# welcome (also: eos-welcome)

Welcome is an application that helps users by providing
- tools for system management and customization
- links for additional information

and more.

Welcome has two main uses:
- helps in the install phase
- helps in the system usage phase

<br>

![](welcome-man.png)

## Synopsis

eos-welcome [options]

## Options
```
--enable | -f     Enable this Welcome app.
--disable         Disable this Welcome app.
--once | -1       Allow to run Welcome even if disabled.
--lang=X          Use language X on the user interface. Default for X: 'en'
--version         Show the version of this app.
--startdelay=X    Wait before actually starting this app.
                  X value syntax is the same as in the 'sleep' command.
--changelog       Show the changelog of this package.

```

## Description

### Enabling or disabling Welcome

To have Welcome app started when you log in, make sure
- Welcome app is selected in the Autostart feature of the DE<br>
    or
- `Hidden=false` is set in file `/etc/xdg/autostart/welcome.desktop`

On DEs that do not work well with system's *Autostart* feature, you may also disable the Welcome app from the app itself
- with the `--disable` option
- with a button in the app (some DEs only)

To re-enable the app, click the Welcome app icon, or use the terminal command
```
eos-welcome --enable
```

To run Welcome *once* even if it is already disabled, use option `--once`:
```
eos-welcome --once
```
Welcome will stay disabled after using option `--once`.


Note: check also settings in the configuration file `~/.config/EOS-greeter.conf`.

### Personalizing Welcome

User may add own buttons into the Welcome app. The buttons will appear under the **Personal Commands** tab.

### Language support

Option `--lang=X` currently supports a small set of languages.<br>
The X should consist of two (or more) letters (like 'en' for English or 'pt_BR' for Brazilian Portuguese).

See the supported languages (the X) e.g. by terminal command
```
ls -1 /usr/share/endeavouros/scripts/translation-*.bash | \
   sed 's|.*/translation-\([a-zA-Z_]*\)\.bash|\1|'
```
If option `--lang` is not given, the language value is extracted from
the first letters of the environment variable LANG.<br>
If the extracted value is not supported by Welcome, English will be used.

## Tips

### <b>Software news</b>

Welcome app window includes a button **Software News** on the lower left corner.<br>
It contains useful and important news for the user about the EndeavourOS software, e.g. manual interventions or important code changes.

Make sure you click that button regularly!

### <b>Critical info area</b>

Welcome has an info area for critical or very important news near the upper edge of the window.<br>This will used for the uttermost important messages that affect all or most EndeavourOS users.<br>When this area contains text, it is a very good idea to read it!

### Add favorite packages at install time

To customize the *online* mode install phase, you can directly modify file `$HOME/user_pkglist.txt` and add package names to that file. Note that only Arch and EndeavourOS packages are supported, but not AUR packages.

### Add commands at install time (*Advanced*)

To customize the *online* mode install phase, you can directly modify file<br>
```
/home/liveuser/user_commands.bash
```
and add almost any commands to that file. See more instructions in this file.

Examples of things you can do with the commands in `user_commands.bash`:
- install or remove packages
- enable or disable systemd services
- customize new user's personal files at $HOME
- and more!

Here's an example code for `user_commands.bash`. It will be called with the bash interpreter, so it must have bash syntax:
```
#!/bin/bash

pacman -R --noconfirm xed                   # uninstall packages
pacman -S --noconfirm --needed geany gufw   # install packages
systemctl enable ufw                        # enable a systemd service

user=$(cat /tmp/new_username.txt)           # get the new username!
home=/home/$user                            # get the $HOME folder path
if [ "$user" != "" ] ; then
  cat <<EOF >> $home/.bashrc                # add more configuration to your ~/.bashrc

alias pacdiff=eos-pacdiff
alias df='df -hT'

EOF
chown $user:$user $home/.bashrc             # make sure ~/.bashrc has the right owner
fi
```
Yet another tip: download *your* `user_commands.bash` from your website! For example:
```
$ pwd
/home/liveuser
$ wget -O user_commands.bash https://<your-website>/user_commands.bash
```

Examples of commands that *cannot* be used here:
- yay
- makepkg


## Examples
```
eos-welcome --lang=en         # use English instead of the local language
eos-welcome --disable         # disable Welcome from starting automatically
eos-welcome --enable          # re-enable Welcome after disabling it

# Adding packages at install. Close Welcome app first, then commmand:

cat <<EOF >> ~/user_pkglist.txt
  gufw
  emacs
EOF
eos-welcome &
```
## See also

https://discovery.endeavouros.com/endeavouros-tools/welcome
