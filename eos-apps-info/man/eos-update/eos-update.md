# eos-update

Package updater for EndeavourOS and Arch.

Basically does about the same as

```
sudo pacman -Syu
```
 with some additional features:

- updates Arch and EndeavourOS keyrings first (if needed)
- manages pacman db lock
- checks available disk space
- runs `sync` after update

and optionally

- updates AUR packages with the given AUR helper (`yay` or `paru`)
- checks update compatibility between Nvidia driver and kernel (only on EndeavourOS)

## Synopsis

```
eos-update [options]
```

## Options

Option | Purpose
:--- | :---
  `--help`<br>`-h`     | This help.
  `--nvidia`           | Simple validity check for non-dkms Nvidia driver vs. kernel updates.
  `--no-keyring`       | Do not try to update keyrings first.
  `--keyrings-reset`   | Resets Arch and EndeavourOS keyrings.<br>Try this if keyring issues constantly make system update fail.
  `--no-sync`          | Do not run `sync` after update.
  `--helper`           | Give the name of an AUR helper. Supported values: yay, paru, pacman.<br>Default: pacman (i.e. no AUR helper)<br>Other AUR helpers supporting option `-Sua` like in `yay` should work as well.
  `--paru`             | Same as `--helper=paru`.
  `--yay`              | Same as `--helper=yay`.
  `--aur`              | Uses the AUR helper configured in /etc/eos-script-lib-yad.conf.
  `--pacman`           | Same as `--helper=pacman`. Default. (Note: pacman does not support AUR directly).
  `--min-free-bytes`   | Minimal amount of free space (in bytes) that the root partition should have before updating. Otherwise a warning message will be displayed.<br>Default: 1000000000
