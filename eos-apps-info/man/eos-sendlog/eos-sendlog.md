# eos-sendlog

Sends a (text) file from standard input to a pastebin service and shows the service URL where the file is stored, and saves the returned URL
to file **~/eos-sendlog.log**.

Note: personal data will *not* be removed by `eos-sendlog`.<br>If you want personal data removed, consider using `eos-log-tool` for specific logs.

![](eos-sendlog.png)

## Examples
```
cat log.txt | eos-sendlog
lspci -vnn | eos-sendlog
```
