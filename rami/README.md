## `rami` - rank Arch mirrors

`rami` is a command line program for ranking Arch mirrors.

This document describes only options of `rami` considered most useful in normal usage.

By default `rami` will rank all known Arch mirrors in the world and show the result on the terminal.<br>
Note that the mirrorlist will *not* be saved by default, you need to apply option `--save` for that.<br>

User can give various *options* to include or exclude mirrors which can

- provide a better result for the location
- save both time and network resources

Bash command completion (using the **Tab** key) works as expected, helping to write options and their parameters.

### Configuration files

File | Description
:--- | :---
`/etc/skel/rami.conf` | Template file for creating a new user.
`~/.config/rami.conf` | Actual configuration file of a user.

A configuration file uses `bash` syntax.<br>
An array variable `CONFIG_OPTIONS` may include any number of `rami` options.<br>
A configuration file is not *required*, but may be helpful.<br>
Each mirror name in a `<list>` (see below) needs to be a unique enough part of the mirror name
to separate it from other mirror names.<br>
A mirror can be from any country, even if the country is not explicitly included.

Example of `~/.config/rami.conf` (see below for more details):

```
CONFIG_OPTIONS=(
    --save                                 # add this if you want to save the list always
    --ranking-data                         # gives interesting information about the mirrors
    --timeout-rank 5                       # max time (in seconds) to rank each mirror; we usually want to keep this number small
    --country DE,FR,GB                     # rank only mirrors of the given countries; use country codes instead of names!
    --favorite DE:thaller,SE:accum         # a list of favorute mirrors; note that 'accum' (not in DE,FR,GB) can be used too
    # --ignore-mirrors name1,name2,name3   # a list of mirrors to exclude, e.g. because they are slow or not up-to-date
    # --ignore-countries CC,CC,CC          # a list of country codes (2 capital letters) for excluding those countries
    # --ignore-continents CC,CC,CC         # a list of continent codes (2 capital letters) for excluding those continents
)
```

### Main options

Option | Description
:--- | :---
`--save` | Save the generated mirrorlist to `/etc/pacman.d/mirrorlist`.
`--help` | Gives more details about available `rami` options.
`--ranking-data` | Include the ranking data in the mirrorlist.<br>This data reveals for each mirror when it was updated, and how fast the download occurred.
`--timeout-rank` | Max time in seconds to rank each mirror. Default: 20.

### Informative options

Option | Description
:--- | :---
`--list-continents-countries` | Shows all supported continent codes, country codes, and country names.

### Selecting mirrors to rank

These options will limit the amount of mirrors to be included in ranking.

Option | Description
:--- | :---
`--country <list>` | Rank mirrors only from the listed countries. Use country codes.
`--ignore-countries <list>` | Exclude mirrors of listed countries. Use country codes.
`--ignore-mirrors <list>` | Exclude listed mirrors. A listed mirror must be a unique (even partial) name of the mirror.
`--continent-given <continent-code>` | Rank mirrors of the given continent.<br>See also: option `--list-continents-countries`.
`--continent` | Rank mirrors of the *current* continent.
`--ignore-continents <list>` | Exclude mirrors of the listed continents.
`--all` | Rank all supported mirrors everywhere.

### Misc options

Option | Description
:--- | :---
`--favorite <list>` | The listed favorite mirrors will be placed before the other ranked mirrors in the mirrorlist.<br>Note that the country code prefix is required. Example: `GB:london`
`--max <number>` | The given value limits the number of mirrors shown. Default: 1000.

### About the parameters above

Parameter | Description
:--- | :---
`<list>` | A comma separated list of items. Values are specific to the option.<br>Example: `rami --country DE,FR,GB`
`<continent-code>` | A two letter code referring to a continent, one of: AF AN AS EU NA OC SA.<br>See also: option `--list-continents-countries`.
`<number>` | A non-negative integer.

### Other related commands

`rami-fzf` is another program in package `rami` which lets the user to *select* the main features to apply in a very simpler manner.<br>
`rami-fzf` also tips you about `rami` options to use if it finds anything that might be helpful for creating the actual mirrorlist file.

### Related packages

There are a few alternative packages available for ranking mirrors. Of them we already use:
- `rate-mirrors`
- `reclector`
- `reflector-simple`
