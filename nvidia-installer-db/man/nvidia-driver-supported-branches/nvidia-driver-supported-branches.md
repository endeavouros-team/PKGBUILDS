# nvidia-driver-supported-branches

`nvidia-driver-supported-branches` finds the latest Nvidia driver series info that support your Nvidia graphics card. With this information you should be able to install the proper Nvidia driver.

## Synopsis

```
nvidia-driver-supported-branches [options] [parameters]

Options:
  -a, --all         (Show status for all available driver branches.)
                    NOTE: this option does nothing due to implementation change.
  -h, --help        This help.

Parameters:
  card_id           Nvidia card id (4 hex numbers, lower case letters).
                    Example: 1b83
                    Note: card_id is an optional parameter.
```

## Tips
The "card_id" value can be found with command:

```
  lspci -vnn | grep -P 'VGA|3D|Display' | sed 's|.*\[10de:\([0-9a-f]*\)\].*|\1|'
```
Note that there may be limitations by other software to which of the older drivers actually work.

## Examples
```
$ nvidia-driver-supported-branches
NVIDIA card id: 1c8f
nvidia-dkms version of Arch: 520.56.06-2

Series 520: supported (Nvidia: 520.56.06)

$ nvidia-driver-supported-branches -a
Info: option '-a' recognized but is no more used.
NVIDIA card id: 1c8f
nvidia-dkms version of Arch: 520.56.06-2

Series 520: supported (Nvidia: 520.56.06)

$ nvidia-driver-supported-branches   # here the Nvidia card needs a beta driver
NVIDIA card id: 20f6
nvidia-dkms version of Arch: 520.56.06-2

Series 525: supported (Nvidia: 525.53)

NOTE: nvidia-beta-dkms 525.53 is an AUR package. To install it, use command:
   yay -S nvidia-beta-dkms

```

## See also

[Nvidia Linux/Unix drivers](https://www.nvidia.com/en-us/drivers/unix)
