# eos-sendlog

Sends a (text) file from standard input to pastebin, shows the service URL where the file is stored, and saves the returned URL<br>
to **~/.config/eos-sendlog.txt**.

![](eos-sendlog.png)

## Configuration

Configurable variables in file `/etc/eos-sendlog.conf`:

Variable | Description
:--- | :---
`EOS_SENDLOG_URI` | URI of the service that saves files.<br>Supported values:<br>https://clbin.com (default)<br>http://ix.io

Configuration file example:
```
# file /etc/eos-sendlog.conf:
EOS_SENDLOG_URI=http://ix.io
```

## Examples
```
cat log.txt | eos-sendlog
lspci -vnn | eos-sendlog
```
