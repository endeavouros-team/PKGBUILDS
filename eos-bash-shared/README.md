# eos-bash-shared

Various different terminal and misc improvements to the user experience.

File name | Description
:--- | :---
eos-reboot-required | (Obsoleted) Notifies user to reboot after essential system files have been updated.
eos-reboot-required2 | Filters packages that may need a notificication about a recommended reboot.
eos-reboot-required.hook | Runs `eos-reboot-required2` after any of the listed essential system packages have been updated.
