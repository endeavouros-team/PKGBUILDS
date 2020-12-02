# akm
Simple kernel manager for EndeavourOS and Arch.<br>
Note: does not support kernels in AUR.

![](akm.png)

## Usage
```
akm [--connect-header]

where
    --connect-header    Tie the header package to the kernel package when installing/uninstalling.
```
## Options

Without options, `akm` installs selected packages and uninstalls unselected packages.<br>
<br>
If option `--connect-header` is used, then `akm` ties kernel and header package into one atomic "unit" when installing or uninstalling.
If selections of a kernel its header conflict, kernel selection is used for both packages.
For example, if you choose to install package `linux-zen`, option `--connect-header` would cause installing linux-zen-headers too.

## Configuration file

Configuration file `/etc/akm.conf` manages how `akm` works.<br>
Currently the supported configurations are:

Variable | Description | Supported values
:--- | :--- | :---
KERNEL_HEADER_WITH_KERNEL | Tie header package with the kernel package. Does the same as option `--connect-header`. | "no" (=default) and "yes"
