# reflector-auto
Automates ranking Arch mirrors, calls reflector periodically.<br>
Currently performed once a week.
## Notes
Options for reflector (e.g. -c COUNTRY) can be added into file <b>/etc/reflector-auto.conf</b>.<br>
See command:
<pre>
reflector -h
</pre
>for more info about the options.<br>
<br>
If a reflector call fails, a log file <b>/etc/reflector-auto.log</b> is created.<br>
