# reflector-simple

Simple GUI for the `reflector` command.<br>
Screenshot:<br>

![](reflector-simple.png)

## Notes about configuration of reflector-simple

- configuration file `/etc/reflector-simple.conf` is supported
- if `/etc/reflector-simple.conf` exists, the GUI uses it by default
- configuration file can contain options supported by the `reflector` command. Use command `reflector -h` for more info

### Additional old compatibility notes
- for backwards compatibility, configuration file `/etc/reflector-auto.conf` is still supported, but will no more be supported after year 2020.
- if file `/etc/reflector-simple.conf` exists, then `/etc/reflector-auto.conf` is not used

## Operational change

Version 1.15.2-1 changed `reflector-simple` by changing the setting **Max number of mirrors** (which uses reflector's --number option) to **Max number of freshed mirrors** (uses reflector's --latest option).

The old behaviour can be achieved by using an environment variable `REFLECTOR_SIMPLE_PREFER_NUMBER` with value "yes", e.g.
```
REFLECTOR_SIMPLE_PREFER_NUMBER=yes reflector-simple
```
