# yad

A patched version of upstream yad.<br>
The patch fixes the window height issue of yad forms.

## How to use this `yad` version

User needs to edit file `/etc/pacman.conf` (with sudo or as root) and move the `[endeavouros]` repository specification as the first repository in the file.

## Example `/etc/pacman.conf`

### Before
```
#[testing]
#Include = /etc/pacman.d/mirrorlist

[community]
Include = /etc/pacman.d/mirrorlist

[multilib-testing]
Include = /etc/pacman.d/mirrorlist

[multilib]
Include = /etc/pacman.d/mirrorlist

[endeavouros]
Include = /etc/pacman.d/endeavouros-mirrorlist
```

### After
```
[endeavouros]
Include = /etc/pacman.d/endeavouros-mirrorlist

#[testing]
#Include = /etc/pacman.d/mirrorlist

[community]
Include = /etc/pacman.d/mirrorlist

[multilib-testing]
Include = /etc/pacman.d/mirrorlist

[multilib]
Include = /etc/pacman.d/mirrorlist
```
