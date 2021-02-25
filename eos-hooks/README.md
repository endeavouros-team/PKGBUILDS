# eos-hooks

Pacman hooks for setting up certain system identification files and other useful features of EndeavourOS.

File name | Description
:--- | :---
eos-hooks-runner | Fixes files like `os-release`, `lsb-release`, `issues` for EndeavourOS.
eos-hooks.hook | Runs `eos-hooks-runner` after the `eos-hooks` package is updated.
eos-lsb-release.hook | Runs `eos-hooks-runner` after package `lsb-release` has been updated.
eos-os-release.hook | Runs `eos-hooks-runner` after package `filesystem` has been updated.
eos-reboot-required | Notifies user to reboot after essential system files have been updated.
eos-reboot-required2 | Filters kernel targets to `eos-reboot-required`.
eos-reboot-required.hook | Runs `eos-reboot-required2` after any of the listed essential system packages have been updated.
