# nvidia-inst

`nvidia-inst` helps installing drivers for Nvidia graphics cards when you have
- only nvidia card
- both Intel and Nvidia cards (using bumblebee or prime)

Note that bumblebee is suitable mostly for older machines.

The `nvidia-inst` is meant to be the replacement for the older `nvidia-installer-dkms`.

## Synopsis

```
nvidia-inst [options]
```

## Options
```
  -h, --help              This help.
  -b, --bumblebee         Install bumblebee and Nvidia drivers for optimus cards.
  -f, --force             Force driver installation even if a nvidia card is not detected.
  -n, --nouveau           Install nouveau driver (open source).
  -p, --prime             Install also prime render offload.
  -q, --quiet             Suppress log messages.
  -t, --test              Test mode. Nothing in your system will be modified.
  -v, --version           Show version of this software.
  --32                    Install also support for 32-bit apps.
  --conf                  Create also file /etc/X11/xorg.conf.d/20-nvidia.conf (might be needed on some systems).
  --drivers               Show supported NVIDIA driver series for your card.
  --ignore                Ignore all errors (useful for testing only).
  --legacyrepo            Add a third party repository for legacy (470 and 390 series) Nvidia drivers.
  --listopts              List options supported by nvidia-inst.
  --listseries            List Nvidia driver versions supported by nvidia-inst.
  --series                (Advanced) Use the given Nvidia driver version (for testing).
```

*Note*: option `--legacyrepo` is deprecated and does nothing.

## Tips

### Older Nvidia cards

You can try installing a legacy Nvidia driver from the AUR.

<strike>If you have an older Nvidia graphics card that is no longer supported by the latest driver from the Arch repos, you can add a 3rd party repo to `/etc/pacman.conf` with command
```
nvidia-inst --legacyrepo
```
and install a legacy driver using pacman.</strike>

### Check and test

To see which which Nvidia driver versions support your card:
```
nvidia-inst --drivers
```

To test which packages nvidia-inst *would* add (or remove) without actually doing it:
```
nvidia-inst --test
```
Note that you can add other options of needed.

After the preparations above, use the appropriate options to install the drivers.

## Other considerations

Other ways to manage the Nvidia graphics cards exist.
One popular option is to use the optimus manager (see EndeavourOS wiki and Arch wiki).