# eos-log-tool
A GUI tool for copying various system logs to the internet.

![](eos-log-tool.png)

## Options

Name   |   Description
:--- | :---
`-j, --enable-journal` | Enable showing journal logs.<br>Note that some logs *may* include personal data.<br>
`-h, --help` | This help.


## Use cases

If a user wants help in troubleshooting an issue, with this tool user
can share logs for other users to see e.g. on the EndeavourOS forum.<br>
Note that without logs and/or other system information troubleshooting can be practically impossible.

This tool aims to hide all personal information from the logs that will be sent to the internet when the<br>
**Remove personal data from logs** is selected.

If **Send logs to internet** is selected, then the logs will be sent to the internet, and an <u>URL</u> is returned after a successful send.<br>
This <u>URL</u> is the thing to share with others that help troubleshooting the issue.
