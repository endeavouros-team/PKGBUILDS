# Tips for `eos-update`

`eos-update` updates the software packages of your system using
programs `pacman` and optionally `yay` or `paru`.<br>
This document gives a few tips about some lesser known features of `eos-update`.

Some more or less obvious notes:
- The *bash command completion* feature is supported to help writing a command.
- The options explained below can be combined with other options as usual.

## Show available options

`eos-update --help`

There are many more options available than explained here.<br> And the help output is the most up-to-date documentation.

## Update AUR packages too

`eos-update --aur`

This assumes either `yay` or `paru` is installed.

## User defined updates (e.g. flatpak) and other commands

Option `--other-updates` gives user the opportunity to expand what `eos-update` does.<br>
Edit file `/etc/eos-update-other.bash` and add proper commands to update *other* than native or AUR packages.
Then run `eos-update` with option `--other-updates`, and your commands will be executed after native (and optionally AUR) updates.

Note that the template file `/etc/eos-update-other.bash` supports `eos-update` to call other apps in both phases:
- ***beginning***
- ***end***

Then, in between those two phases, `eos-update` does what it normally would do.

For example, you could (in the ***beginning***) update mirrors and later (in the ***end***) call
`pacman -Fy` to update the database of the package contents.

Example:
```
eos-update --aur --other-updates
```


## Unlock locked privilege elevation

Giving a wrong password to `sudo` three times in a row may lock `sudo` from doing its job.<br>
This can be fixed with option `--faillock-check`:

`eos-update --faillock-check`

## See the descriptions of the updated packages

`eos-update --descriptions`

Note: only descriptions of the *native* packages will be listed.

## Use the fast mode

`eos-update --fast`<br><br>
Note: this option saves the latest update level *each time* you run with it,
which may cause undetected updates.<br>
For example:
1. Run `eos-update --fast` *and* decline updating.
2. *Immediately* run `eos-update --fast` the second time, the fast mode
thinks there are no updates. In that case
run `eos-update` without option `--fast`.

## Check the validity of the lists of mirrors

`eos-update --check-mirrors`

## Nvidia GPU drivers

`eos-update --nvidia`

This will check that the updates of the kernel (`linux` or `linux-lts`)
and the *non-dkms* Nvidia driver are in proper sync.
A warning is displayed if not.

This warning means it is better not to update until
the updates for the mentioned packages are in sync,
and `eos-update --nvidia` gives no warning.
Usually the wait is not long.

Note that there have been cases they weren't in sync, causing a problem
at system restart.

## Manage package cache

With option `--cache-limit`, `eos-update` will remove older packages in the package cache
(usually in `/var/cache/pacman/pkg`) after each update.
<br><br>
*Tip*: option `--cache-limit` can be useful when ***sharing*** the package cache with other installations (that use
Arch and/or EndeavourOS repos).

### Example
`eos-update --cache-limit 2`
<br><br>
will call<br>
`paccache -rk2`
<br><br>
so it keeps only **two** of the latest versions of each package in the cache and removes older package versions.<br>
See also options `-k` and `-r` in `man paccache`.

## Colors in eos-update's output

`eos-update` by default shows slightly colored output, in addition to what `pacman` and the AUR helpers may show.<br>
Option `--colors` can enable or disable the usage of the *additional* colors added by `eos-update`.<br>
Example:<br>
```
eos-update --colors yes       # enable additional colors in output
eos-update --colors no        # disable additional colors in output
```

## Aliases

Here's some potentially useful aliases for `eos-update`:
```
alias u='eos-update --fast --descriptions'           # "fast" update check; also show the descriptions of updated packages
alias u='eos-update --fast --descriptions --nvidia'  # the same when Nvidia GPU is installed
alias u='eos-update --cache-limit 1'                 # limits the growth of the package cache
```
Note that option `--nvidia` does nothing if the system has *no* Nvidia GPU.
