# eos-sendlog

Sends a (text) file from standard input to pastebin, shows the service URL where the file is stored, and saves the returned URL<br>
to **~/.config/eos-sendlog.txt**.

Note: personal data will *not* be removed by `eos-sendlog`.<br>If you want personal data removed, consider using `eos-log-tool` for specific logs.

![](eos-sendlog.png)

## Configuration

Configurable variables in file `/etc/eos-sendlog.conf`:

Variable | Description
:--- | :---
`WGETPASTE_OPTIONS` | Any options for the `wgetpaste` command.<br>Default: `"--nick nobody"`
`EOS_SENDLOG_URI` | (No more used due to some pastebin service issues.)


## Examples
```
cat log.txt | eos-sendlog
lspci -vnn | eos-sendlog
```
