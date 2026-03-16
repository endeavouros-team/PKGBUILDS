# eos-reboot-recommended

`eos-reboot-recommended` is a package that shows a notification about a reboot recommendation after updating certain core system packages, e.g. the running kernel.

By default, the notification will be sent (if possible) to all active users on the system. The notification will be shown until user closes it in a manual way.

User may configure these notifications to be received by only one user. Then user can configure how long time the notification is visible before it closes automatically.

## Configuration

File `/etc/eos-reboot-recommended.conf` contains (bash language) variables that can be configured.<br>
Likely the most useful variables for users are explained below.

Variable | Purpose | Default value
:---- | :----- | :-----
`REBOOT_NOTIFICATION_USER` | The username to receive all notifications about reboot recommendation. | Not assigned.
`REBOOT_EXPIRE_TIME` | The time (in seconds) to show each notification.<br>Note that this variable is used *only* when `REBOOT_NOTIFICATION_USER` is assigned.| Not assigned.

### Configuration example

In file `/etc/eos-reboot-recommended.conf`:

```
REBOOT_NOTIFICATION_USER=myusername
REBOOT_EXPIRE_TIME=30
```

## Related info

`eos-reboot-recommended` is no more a dependency of `eos-bash-shared` version 26.3-1 or later.
