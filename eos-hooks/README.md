# eos-hooks

Pacman hooks for setting up certain system identification files of EndeavourOS.

File name | Description
:--- | :---
eos-hooks-runner | Fixes files like `os-release`, `lsb-release`, `issues` for EndeavourOS.
eos-hooks.hook | Runs `eos-hooks-runner` after the `eos-hooks` package is updated.
eos-lsb-release.hook | Runs `eos-hooks-runner` after package `lsb-release` has been updated.
eos-os-release.hook | Runs `eos-hooks-runner` after package `filesystem` has been updated.
