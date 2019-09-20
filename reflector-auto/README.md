# reflector-auto
Automates ranking Arch mirrors, calls reflector periodically.<br>
Currently set to launch once a week.
## Notes
Options for reflector (e.g. -c COUNTRY) can be added into file <b>/etc/reflector-auto.conf</b>.<br>
See command:
<pre>
reflector -h
</pre>
for more info about the options.<br>
<br>
If a reflector call fails, a log file <b>/tmp/reflector-auto.log</b> is created.

## Changelog

Date | Version | Description
---- | ------- | -----------
2019-09-20 | 1.1.1-1 | Fixed a problem with whitespaces in the config file.<br>Log file location changed to /tmp/reflector-auto.log.

