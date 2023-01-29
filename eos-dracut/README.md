# eos-dracut

This package provides automation for dracut when not using `kernel-install-for-dracut`

It automatically regenerates the initrds when needed to due to kernel changes or changes to other related packages.

Additionally, the command `dracut-rebuild` will rebuild the initrds for all kernels.

There is also a config file at `/etc/eos-dracut.conf` which allows setting options including the ability to enable dracut's quiet mode and omit the creation of the fallback initrd.
