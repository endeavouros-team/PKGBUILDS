# yad

A patched version of upstream yad.<br>
The patch fixes the window height issue of yad forms.

## How to use this `yad` version

There are many alternative ways:
1. command `sudo pacman -S endeavouros/yad`
2. in Welcome app, `Add More Apps` tab, button **Yad (patched)**
3. (least recommended) edit file `/etc/pacman.conf` (with sudo or as root) and move the `[endeavouros]` repository specification as the first repository in the file.

## Example: editing `/etc/pacman.conf`

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
