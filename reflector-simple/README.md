# reflector-simple

Simple GUI for the `reflector` command.<br>
Screenshot:<br>

![](reflector-simple.png)

## Notes about configuration of reflector-simple

- configuration files `/etc/reflector-simple.conf` and `/etc/reflector-auto.conf` are supported
- if file `/etc/reflector-simple.conf` exists, then `/etc/reflector-auto.conf` is not used
- if `/etc/reflector-simple.conf` exists, the GUI selects it by default
- configuration file can contain options supported by the `reflector` command, see `reflector -h` for more info
