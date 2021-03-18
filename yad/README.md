# yad

A patched version of upstream yad.<br>
The patch fixes the window height issue of yad forms.

## How to use this `yad` version

User needs to edit file `/etc/pacman.conf` (with sudo or as root) and move the `[endeavouros]` repository specification as the first repository in the file.

## Example `/etc/pacman.conf`

### Before
```
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

community]
Include = /etc/pacman.d/mirrorlist

# If you want to run 32 bit applications on your x86_64 system,
# enable the multilib repositories as required here.

[multilib-testing]
Include = /etc/pacman.d/mirrorlist

[multilib]
Include = /etc/pacman.d/mirrorlist
```
