# eos-update-notifier

Checks the availability of package updates (EndeavourOS, Arch, and AUR), and offers to perform the actual update.

## Synopsis
```
eos-update-notifier [options]
```
## Options
```
-init        Initialize the eos-update-notifier systemd service for
             the current user.
-init-force  Same as -init, but may overwrite existing user service files.
-conf        Configure the schedule of checking for the updates.
-show-timer  Show the status of the systemd timer.
-iw=X        Initial sleep time. Value syntax from 'sleep' program.
             Default: 5s.
-nw=X        Max time (seconds) to show the "No updates available" window.
             Default: 10.
-q           Be quieter with dialogs.
--changelog  Show the changelog of this package.
```

## Tips

Configuration file: `/etc/eos-update-notifier.conf`.

## See also

[eos-update-notifier-configure](/etc/eos-apps-info/pageinfo/eos-update-notifier-configure/eos-update-notifier-configure.html)
