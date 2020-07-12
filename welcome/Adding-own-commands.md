# Personalizing Welcome

## Overview
You can personalize Welcome by adding new command buttons in the Welcome app. They will appear under tab **Personal Commands**.<br>
To personalize Welcome, add your new commands into file
<pre>
$HOME/.config/welcome-own-cmds.conf
</pre>

## Command syntax
The Welcome app uses **yad forms** and bash language to create a simple GUI.
<br><small>Note that you don't need to be familiar with yad nor bash (but it may help!) to add your own commands.
Simply follow this short tutorial.<br>
(More info with terminal commands: `man yad`, `man bash`).</small>

Let's start with a simple Firefox example (this already works for Welcome!):
<pre>
local welcome_own_commands=(
    --field=" Firefox web browser!!":fbtn "firefox"
)
</pre>
You will add commands to Welcome by adding <u>yad form fields</u> to a bash array variable named
<pre>
  welcome_own_commands
</pre>
This variable (and possible other variables in this file) <u>should</u> be marked as a *local* variable in bash.<br>

Buttons for Welcome are defined using specially crafted *fields*. Each field defines a command for a button, for example:
<pre>
    --field=" Firefox web browser!firefox-default!Browse the web with Firefox":fbtn  "firefox"
</pre>

A field definition consists of the following *elements*:

Element | Purpose | Value in the example above
:--- | :--- | :---
name | button name | Firefox web browser
icon | name of an icon on the button (optional) | firefox-default
description | useful info for the user (optional) | Browse the web with Firefox
command string | actual command the button executes (can have parameters) | firefox

As you see, yad (together with bash) wants the field to be in a specific format.<br>
Between `--field=` and `:fbtn` you'll write most of the button information.
The name, icon, and description are separated with exclamation (!) marks.<br>
And because the added strings may contain space characters, always use quotes ("a string") around the strings.

<small>*Tip*: to find useful icon names you can use e.g. command **yad-icon-browser**. It is included in the yad package.</small><br>
<small>*Tip (advanced)*: the command string can be e.g. a bash function (that is exported by `export -f`).</small>

An example field about the parameters on the command string:
<pre>
    --field=" EndeavourOS forum!web-browser!Discussions at the EndeavourOS forum":fbtn
            "xdg-open https://forum.endeavouros.com"
</pre>

Another supported (but optional) variable is `activate_own_commands_tab`. It specifies whether the active tab in Welcome is your personal commands (instead of Welcome's default) when Welcome is started.<br>
For example:
<pre>
local activate_own_commands_tab=yes    # "yes" or "no"
</pre>


## Example
Here is a full *example* file containing three commands/buttons, and activating personal commands tab when starting Welcome:
<pre>
#!/bin/bash

# Contents of file $HOME/.config/welcome-own-cmds.conf.

# Own commands:
# - Create a local array variable 'welcome_own_commands'.
# - Add yad form fields as in the example below.
# - To have own commands activated initially, set local variable 'activate_own_commands_tab' to "yes";
#   otherwise the default tab is initially active.

local welcome_own_commands=(
    # Legend: --field=" name!icon!description":fbtn "command"

    --field=" A Kernel Manager!system-software-install!Simple kernel manager and info source":fbtn  "akm"
    --field=" Mousepad!accessories-text-editor!Mousepad text editor":fbtn                           "mousepad"
    --field=" Firefox web browser!firefox-default!Browse the web with Firefox":fbtn                 "firefox"
)

local activate_own_commands_tab=yes
</pre>
Feel free to copy this example and modify it to match your needs.<br>
If you have any questions about the syntax, please go to https://forum.endeavouros.com.
