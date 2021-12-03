# nvidia-driver-supported-branches

`nvidia-driver-supported-branches` finds the latest Nvidia driver series info that support your Nvidia graphics card. With this information you should be able to choose the proper Nvidia driver.

## Synopsis

```
nvidia-driver-supported-branches [options] [parameters]

Options:
  -a, --all         Show status for all available driver branches.
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
NVIDIA card id: 1b83
Series 495: supported

$nvidia-driver-supported-branches -a
NVIDIA card id: 1b83
Series 495: supported
Series 470: supported
Series 390: supported
Series 340: not supported

$ nvidia-driver-supported-branches -a 1b83
NVIDIA card id: 1b83
Series 495: supported
Series 470: supported
Series 390: supported
Series 340: not supported
```

## See also

[Nvidia Linux/Unix drivers](https://www.nvidia.com/en-us/drivers/unix)
