# nvidia-installer-dkms

`nvidia-installer-dkms` manages nvidia drivers in an environment with
- only nvidia card
- both Intel and nvidia cards (using bumblebee)

Note that bumblebee is suitable mostly for older machines.<br>

## Synopsis

```
nvidia-installer-dkms [-h] [-b] [-f] [-t] [-q] [-n]
```

## Options
```
  -h, --help       Show this help message and exit
  -b, --bumblebee  For Nvidia Optimus cards (Bumblebee + proprietary Nvidia drivers)
  -f, --force      Force driver installation even if a nvidia card is not detected
  -t, --test       Test mode. Nothing in your system will be modified
  -q, --quiet      Suppress log messages
  -n, --nouveau    Restores nouveau (open) nvidia driver
```
