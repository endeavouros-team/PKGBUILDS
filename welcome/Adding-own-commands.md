# Personalizing Welcome

## Overview
You can personalize Welcome by adding new command buttons in the Welcome app. They will appear under tab **Personal Commands**.<br>
To personalize Welcome, add your new commands into file
<pre>
$HOME/.config/welcome-own-cmds.conf
</pre>

## Command syntax
The Welcome app uses **yad forms** and bash language to create a simple GUI.
You can add commands to the Welcome by adding <u>yad form fields</u> to a bash array variable named
<pre>
  welcome_own_commands
</pre>
The variable should be marked as a *local* variable in bash.<br><br>
Note that you don't need to be familiar with yad nor bash (but it may help!) to add your own commands.
Simply follow this short tutorial.<br>
(More info: `man yad`, `man bash`).

Welcome buttons are defined using specially crafted yad form *fields*. Each field defines a command for a button, for example:
<pre>
    --field=" Firefox web browser!firefox-default!Browse the web with Firefox":fbtn  "firefox"
</pre>

and consists of the following *elements*:

Element | Purpose | Value in the example above
:--- | :--- | :---
name | button name | Firefox web browser
icon | icon on the button (can be left out) | firefox-default
description | useful info for the user (but can be left out) | Browse the web with Firefox
command string | actual command the button executes | firefox

As you see, yad (together with bash) wants the field to be in a specific format.<br>
Between `--field=` and `:fbtn` you'll write most of the button information.
The name, icon, and description are separated with exclamation (!) marks.<br>
And because the added strings may contain space characters, always use quotes ("a string") around the strings.

*Tip*: to find useful icon names you can use e.g. command **yad-icon-browser**. It is included in the yad package.

## Example
Here is an *example* file containing three commands/buttons:
<pre>
#!/bin/bash

# Contents of file $HOME/.config/welcome-own-cmds.conf:

# Own commands:
# - Create a local array variable 'welcome_own_commands'.
# - Add yad form fields as in the example below.
# - To have own commands activated initially, set local variable 'activate_own_commands_tab' to "yes";
#   otherwise the default tab is initially active.

local welcome_own_commands=(
    # Legend:
    # --field=" name!icon!description":fbtn "command"

    --field=" Simple Kernel Manager!system-software-install!Simple kernel manager":fbtn  "akm"
    --field=" Pamac!system-software-install!GUI package manager":fbtn                    "pamac-manager"
    --field=" Mousepad!accessories-text-editor!Mousepad text editor":fbtn                "mousepad"
    --field=" Firefox web browser!firefox-default!Browse the web with Firefox":fbtn      "firefox"
)

# If you want to have your own commands tab initially activated instead of the default tab,
# set variable 'activate_own_commands_tab' to 'yes':

local activate_own_commands_tab=yes    # "yes" or "no"
</pre>
Feel free to copy this example and modify it to match your needs.<br>
If you have any questions about the syntax, please go to https://forum.endeavouros.com.
