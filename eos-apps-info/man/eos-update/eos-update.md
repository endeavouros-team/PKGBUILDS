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
- clear package databases, see option `--clear-databases`
- reset keyrings, see option `--keyrings-reset`
- check for unsupported mirrors in files (option `--check-mirrors`)
  - /etc/pacman-d/mirrorlist
  - /etc/pacman.d/endeavouros-mirrorlist

Tip: run `eos-update --help` to see info about the latest options.<br>

See more tips at
[github](https://github.com/endeavouros-team/eos-bash-shared/blob/main/eos-update-tips.md)
or
[gitlab](https://gitlab.com/endeavouros-filemirror/eos-bash-shared/blob/main/eos-update-tips.md).

## Synopsis

```
eos-update [options]
```

## Options

```
  --help, -h              This help.
  --check-mirrors         Check files /etc/pacman.d/endeavouros-mirrorlist and /etc/pacman.d/mirrorlist
                          for unsupported mirrors.
                          This may be useful when one or more mirrors start failing unexpectedly.
                          Note: only x86_64 hardware is supported.
  --check-mirrors-eos     Check file /etc/pacman.d/endeavouros-mirrorlist for unsupported mirrors.
  --check-mirrors-arch    Check file /etc/pacman.d/mirrorlist for unsupported mirrors.
  --nvidia                Check also nvidia driver vs. kernel updates. Useful only with the Nvidia GPU.
  --clear-databases       Clears package database files.
                          Use this only if package database issues constantly make system update fail.
  --keyrings-reset        Resets Arch and EndeavourOS keyrings.
                          Use this only if keyring issues constantly make system update fail.
  --no-keyring            Do not try to update keyrings first.
  --no-sync               Do not run 'sync' after update.
  --show-only-fixed       Show only packages that have already been fixed (runs: arch-audit -u) and exit.
  --show-upstream-news    Show the news page of the upstream site and exit.
  --helper                AUR helper name. Supported: yay, paru, pacman.
                          Default: pacman
                          Other AUR helpers supporting option -Sua like yay should work as well.
  --paru                  Same as --helper=paru.
  --yay                   Same as --helper=yay.
  --aur                   Uses the AUR helper configured in /etc/eos-script-lib-yad.conf.
  --pacman                Same as --helper=pacman. Default. (Note: pacman does not support AUR directly).
  --min-free-bytes        Minimum amount of free space (in bytes) that the root partition should have
                          before updating. Otherwise a warning message will be displayed.
                          Default: 1000000000
```

## Examples

```
# basic update for native packages
eos-update

# update also packages from the AUR
eos-update --aur

# check and report the validity of the configured Arch and EndeavourOS mirrors
eos-update --check-mirrors
```
