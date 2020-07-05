# Adding own commands to Welcome

You can add you own commands that will appear in the Welcome app under tab **Own Commands**. Add your commands into file
<pre>
$HOME/.config/welcome-own-cmds.conf
</pre>

The Welcome app uses **yad forms** to create a simple GUI.
You can add own commands to the GUI by adding yad form *fields* to a bash variable named
<pre>
  welcome_own_commands
</pre>
The variable should be marked as a *local* variable in bash.<br>
Note that you don't need to be familiar with yad nor bash (but it may help!) to add you own commands.
Simply follow this short tutorial.

Welcome buttons are defined using yad form *fields*. Each field defines a command for a button, and consists of the following *elements*:
 - **name** (for command, shown as the button name)
 - **icon** (shown on the button, can be left out)
 - **description** (useful, but can be left out)
 - **command string** (the actual command the button executes)

An example yad form field:
<pre>
    --field=" Pamac!system-software-install!GUI package manager":fbtn  "pamac-manager"
</pre>
where the elements and values are
element | value
:--- | :---
name | Pamac
icon | system-software-install
description | GUI package manager
command string | pamac-manager

Note that yad (together with bash) wants the field to be in specific format. You'll add the parts withing quotes. Between the --field= and :fbtn you'll write most of the information for the command. The name, icon, and description are separated with an exclamation (!) mark.
And because your added strings may contain spaces, it is good to always use quotes around the strings.

Note also that to find useful icon names you can use e.g. command **yad-icon-browser**. It is included in the yad package.

Here is an example file containing your own commands:
<pre>
# Contents of file $HOME/.config/welcome-own-cmds.conf:

local welcome_own_commands=(
    --field=" Pamac!system-software-install!GUI package manager":fbtn      "pamac-manager"
    --field=" Mousepad!accessories-text-editor!Mousepad text editor":fbtn  "mousepad"
    --field=" Firefox!firefox!Firefox web browser":fbtn                    "firefox"
)
</pre>
Feel free to copy this definition and modify it to match your needs.
