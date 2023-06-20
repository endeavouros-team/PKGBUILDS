# eos-update

Package updater for EndeavourOS and Arch.

Basically does about the same as<br>
```
sudo pacman -Syu
```
 with some additional features:

- updates Arch and EndeavourOS keyrings first (if needed)
- manages pacman db lock
- checks available disk space
- runs `sync` after update

and optionally
- updates AUR packages with the given AUR helper (yay or paru)
- checks update compatibility between Nvidia driver and kernel (only on EndeavourOS)



## Synopsis
```
eos-update [options]

Options:
  --help, -h                This help.
  --nvidia                  Check also nvidia driver vs. kernel updates.
  --helper <helper>         AUR helper name. Supported: yay, paru, pacman. Default: pacman.
                            Others supporting option -Sua should work as well.
  --paru                    Same as --helper=paru.
  --yay                     Same as --helper=yay.
  --pacman                  Same as --helper=pacman. Default.
  --min-free-bytes <bytes>  Minimal amount of free space (in bytes) that the root partition
                            should have before updating.
                            Otherwise a warning message will be displayed.
                            Default: 1000 000 000 (~1 GB)
```

