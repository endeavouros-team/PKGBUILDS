# eos-pacdiff

`eos-pacdiff` combines the `pacdiff` program with a user-selectable file comparison program as a convenient and easy-to-use entity.<br>
User can select the file comparison program with variable `EOS_WELCOME_PACDIFFERS` in file `/etc/eos-script-lib-yad.conf`.<br>
Currently `meld` is the recommended file comparison program.

![](eos-pacdiff.png)

If you select the **View** mode, `meld` will help you choosing the modifications you want to apply.

![](meld.png)

## Synopsis

```
Usage: eos-pacdiff [options]
```

Run command

```
eos-pacdiff --help
```
to see the details about the options.

Tip: option `--backup` enables creating backup files (with .bak) in modes view, merge, overwrite. This is a great safety measure, and one might consider writing an alias like:

```
alias pacdiff='eos-pacdiff --backup'
```

into file `~/.bashrc`.<br>
Option `--backup` enables creating backup files in all 3 modes mentioned above.

See also **Configuration** below.

## Configuration

File `/etc/pacdiff.conf` can contain the following (bash) variables, including their default values:

```
BACKUP_OVERWRITE=no
BACKUP_VIEW=no
BACKUP_MERGE=no
```

and their supported values are either `yes` or `no`.<br>
They define whether the original config file will be saved with suffix `.bak` or not.

_**Important note**_: if you want to be on the *safe* side, set the values of all `BACKUP_*` variables to `yes`. This creates the backup file also for any *critical* file (like `/etc/passwd`) if it was accidentally overwritten.

Tip: command line options (e.g. `--backup`) will override the configuration variables.

## See also

[pacdiff](https://man.archlinux.org/man/pacdiff.8)
