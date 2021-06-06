# eos-sendlog

Sends a (text) file from standard input to pastebin, and saves the returned URL<br>
to **~/.config/eos-sendlog.txt**.

## Configuration

Configurable variables in file `/etc/eos-sendlog.conf`:

Variable | Description
:--- | :---
EOS_SENDLOG_URI | URI of the service that saves files.<br>Supported values:<br>http://ix.io  (default)<br>https://clbin.com

Configuration file example:<br>
```
# file /etc/eos-sendlog.conf:
EOS_SENDLOG_URI=http://ix.io
```

<br>

## Usage examples
```
cat log.txt | eos-sendlog
lspci -vnn | eos-sendlog
```
