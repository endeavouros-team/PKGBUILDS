# eos-update-notifier-configure

Manages and configures certain features of `eos-update-notifier` with a small GUI.

![](eos-update-notifier-configure.png)

## Synopsis
```
eos-update-notifier-configure
```
## Tips
Variable `EOS_SUDO_EDITORS` in configuration file
```
/etc/eos-script-lib-yad.conf
```
determines which editor will be used when editing the configuration file
```
/etc/eos-update-notifier.conf
```
after clicking the **Edit config** button above.<br>
Note that environment variables `SUDO_EDITOR`, `VISUAL`, or `EDITOR` can be used if `EOS_SUDO_EDITORS` is not set.
