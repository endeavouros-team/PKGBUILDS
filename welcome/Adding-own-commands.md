# Personalizing Welcome

## Overview
You can personalize Welcome by adding new command buttons in the Welcome app. They will appear under tab **Personal Commands**.<br>
To personalize Welcome, add your new commands into file
<pre>
$HOME/.config/welcome-own-cmds.conf
</pre>

## Command syntax
The Welcome app uses **yad forms** and bash language to create a simple GUI.
<br>
<sup>Note that you don't need to be familiar with yad nor bash (but it may help!) to add your own commands.
Simply follow this short tutorial.<br>
(More info with terminal commands: `man yad`, `man bash`).
</sup>

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
name | button name (may add special _align(name) marking, see below) | Firefox web browser
icon | name of an icon on the button (optional) | firefox-default
description | useful info for the user (optional) | Browse the web with Firefox
command string | actual command the button executes (can have parameters) | firefox

As you see, yad (together with bash) wants the field to be in a specific format.<br>
Between `--field=` and `:fbtn` you'll write most of the button information.
The name, icon, and description are separated with exclamation (!) marks.<br>
And because the added strings may contain space characters, always use quotes ("a string") around the strings.

<sup>*Tip*: to find useful icon names you can use e.g. command **yad-icon-browser**. It is included in the yad package.</sup><br>
<sup>*Tip (advanced)*: the command string can be e.g. a bash function with parameters (see the examples below).
</sup><br>
<sup>*Tip (more advanced)*: take a look at file /usr/bin/eos-welcome about using bash functions in the command strings.
</sup>

### The **name** element and aligning

If you want to left-align the texts on all buttons on your Personal Commands tab, you should use the `_align(name)` marking on each field.
Otherwise texts will be centered. Marking simply makes button's **name** part to be processed by Welcome for left-alignment.<br>
Left-aligning is useful especially if you have icons on the buttons.
<br><sup>*Tip*: use `_align()` on *all* fields to make all left aligned. Mixing left-aligned and centered names may make button layout unappealing.</sup><br>

An example field about the parameters in the command string:
<pre>
    --field="_align(EndeavourOS forum)!web-browser!Discussions at the EndeavourOS forum":fbtn
            "xdg-open https://forum.endeavouros.com"
</pre>

Other supported (but optional) variables are
- `activate_own_commands_tab`: specifies whether the active tab in Welcome is your personal commands (instead of Welcome's default) when Welcome is started.
- `columns_for_own_commands`: specifies the layout (specifically: number of columns) of the buttons under the Personal Commands tab. Note: the layout is managed by **yad** and may *not* contain exactly the specified number of columns!
- `show_predefined_buttons_at_own_commands`: specifies whether to show (yes) or not (no) the two predefined buttons as the first buttons of the Personal Commands tab.
Note that the same two buttons exist on the **Tips** tab.

For example:
<pre>
local activate_own_commands_tab=yes               # "yes" or "no" (default: no)
local columns_for_own_commands=4                  # a small positive number (default: 2)
local show_predefined_buttons_at_own_commands=no  # "yes" or "no" (default:yes)
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
# - Layout: specify the number of columns for the buttons on the Personal Commands tab.

local welcome_own_commands=(
    # Legend: --field=" name!icon!description":fbtn "command"

    --field="_align(A Kernel Manager)!system-software-install!Simple kernel manager and info source":fbtn  "akm"
    --field="_align(Mousepad)!accessories-text-editor!Mousepad text editor":fbtn                           "mousepad"
    --field="_align(Firefox web browser)!firefox-default!Browse the web with Firefox":fbtn                 "firefox"
)

local activate_own_commands_tab=yes
local columns_for_own_commands=2
local show_predefined_buttons_at_own_commands=no
</pre>

## Example (advanced, assumes knowledge about bash language)

This example shows how to use bash functions in the command string.<br>
After writing your bash function, there are two "additional" things to remember:
- export your bash function with: `export -f`
- command string structure changes to: `"bash -c 'MyBashFunction parameters'"`
<pre>

Install_with_pacman() {
    # This bash function installs one or more given packages. Does not reinstall any packages.

    local yadcmd="eos_yad --text-info --title=Installer --wrap --tail --width=600 --height=500 --button=yad-quit:0"
    local pkg pkgs=()

    # Check if given package(s) are already installed:
    for pkg in "$@" ; do
        pacman -Q "$pkg" >& /dev/null || pkgs+=("$pkg")
    done
    test -z "$pkgs" && {
        echo "$*: already installed" | $yadcmd
        return
    }

    # Install packages:
    while true ; do
        echo "Installing ${pkgs[*]} ..."
        pkexec pacman -S --noconfirm "${pkgs[@]}"
        echo "Finished."
        break
    done |& $yadcmd
}

export -f Install_with_pacman         # Mandatory to export the function!

local welcome_own_commands=(
    # When using a bash function, the command string must be changed like this:
    #    "bash -c 'MyBashFunction parameters'"

    --field="_align(Install example)!system-software-install!Install some popular packages":fbtn "bash -c 'Install_with_pacman code vlc'"
)

</pre>

## Example: how to align texts on the buttons on the Personal Commands tab

Welcome's version 3.2.14 added support to automatically align the texts on the buttons under a tab.<br>
To align texts on the buttons, *mark* the **name** element with `_align(name)`.<br>
The following code shows it:

<pre>
local welcome_own_commands=(
    --field="_align(A Kernel Manager)!system-software-install!Simple kernel manager and info source":fbtn  "akm"
    --field="_align(Mousepad)!accessories-text-editor!Mousepad text editor":fbtn                           "mousepad"
    --field="_align(Firefox web browser)!firefox-default!Browse the web with Firefox":fbtn                 "firefox"
)
</pre>
<sup>*Tip*: If you start Welcome from the terminal with command `eos-welcome`, you can get some "debugging" output to the terminal that may be useful for later analysis.</sup>
<br>

## Example: run commands in terminal with `RunInTerminal`

<pre>
    --field="_align(Update system)!system-software-install!":fbtn \
            "RunInTerminal 'checkupdates && sudo pacman -Syu || echo No updates.'"
</pre>

## Drag & drop items into the configuration file!

Starting with Welcome version 3.2-1 you may also drag & drop items like URLs, documents, files, and launchers (= .desktop files).<br>
Welcome has a new button **Personal Commands drag&drop** under the Tips tab:

![](welcome-dnd-tips.png)

Click that button, and it shows a new drag & drop window:

![](welcome-dnd-window.png)

Now you can drop items onto that window, and they will find their place as fields in your Personal Commands configuration file.<br>
And if you didn't have a configuration file, it will be automatically created when dropping an item onto this window!

The new command will also appear on the Welcome app shortly (this feature was added to Welcome version 3.2.6-1)!

Feel free to copy these examples and modify them to match your needs.<br>
If you have any questions about the syntax, please go to https://forum.endeavouros.com.
