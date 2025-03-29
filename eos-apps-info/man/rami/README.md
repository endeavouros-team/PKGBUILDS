## `rami` - rank Arch mirrors

`rami` is a command line program for ranking Arch mirrors.

This document describes mainly the options of `rami` considered most useful in normal usage.

By default `rami` will rank all known Arch mirrors in the world and show the result on the terminal.<br>
Note that the mirrorlist will *not* be saved by default, you need to apply option `--save` to do so.<br>

User can give various *options* to include or exclude mirrors which are meant to

- provide a better result for the location
- save both time and network resources

Bash command completion (using the **Tab** key) works as expected, helping to write options and their parameters.

### Synopsis

`rami [options]`

Option | Description
:--- | :---
`-A, --all` | Rank all supported mirrors on all continents.
`-C, --continent` | Rank all supported countries of the current continent.
`-c, --country <list>` | Include a comma separated list of country code(s) for ranking their mirrors.<br>Codes are case insensitive.<br>Examples:<br>`--country  de,gb`        # *adds* DE and GB mirrors for ranking<br>`--country %de,dk`         # *sets* DE and DK mirrors for ranking<br>See **About the parameters of options** below.
`-t, --country-current` | Include current country to be ranked.
`-e, --edit-config` | Edit your configuration file.
`-f, --favorite` | Add a favorite mirror to be added in the beginning of the ranked mirrorlist.<br>This option can be used many times to append favorites.<br>A mirror can be added<br>- as a full path in single quotes, or<br>- in a special format 'CC:st'<br>The special 'CC:st' has components:<br>- 'CC' is a two-letter country code (see `reflector --list-countries`)<br>- 'st' is a (unique) partial string of the mirror URL<br>A special value 'none' disables favorites (useful in testing).<br>See also the examples below.
`-X, --ignore-continents <list>` | A comma separated list of continent codes to ignore.
`-x, --ignore-countries <list>` | A comma separated list of country codes to ignore.
`-i, --ignore-mirrors <list>` | A comma separated list of mirrors to ignore.<br>A mirror can be a unique part of the mirror address.
`--list-continent-codes` | List all supported continent codes.
`--list-continents-countries` | List all country names with their continent codes and country codes.
`-l, --list-country-codes-names` | List all supported country codes and names.
`--prefer-local-rank` | If no countries nor continents are requested, prefers mirror ranking only in the<br>current country instead of all supported countries.<br>If there are no supported mirrors in the country, falls back to using *all* supported countries.
`-r, --ranking-data` | Show ranking data too.
`--save` | Save the mirrorlist to `/etc/pacman.d/mirrorlist`.
`--sort <value>` | The <value> specified what to prefer when sorting the list of mirrors.<br>Supported values:<br>- **age**        Prefer mirrors that are most up-to-date.<br>- **rate**       Prefer mirrors that provide answers faster.
`--time` | Show the elapsed time of the measurement.
`-k, --timeout-rank` | Max timeout in seconds for ranking a mirror.
`-u` | Update mirror info first.
`--verbosity <value>` | Sets the verbosity level for the displayed messages.<br>Supported values in verbosity order:<br>- **least**      Show only fatal error messages.<br>- **less**       Show also other error messages.<br>- **default**    Show also warning messages (this is the default).<br>- **more**       Show also info messages.<br>- **most**       Show all available messages.<br>Note: all levels may not be fully implemented.
`-h, --help` | This help.


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
    --timeout-rank 5                       # max time (in seconds) to rank each mirror; keep this number small if possible
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
`--favorite <list>` | The listed favorite mirrors will be placed before the other ranked mirrors in the mirrorlist.<br>Note that the country code prefix is required. Example: `GB:london,DE:berlin`
`--max <number>` | The given value limits the number of mirrors shown. Default: 1000.

### About the parameters of options

Parameter | Description
:--- | :---
`<list>` | A comma separated list of items. Values are specific to the option.<br>Example: `rami --country DE,FR,GB`<br>A special character `%` in the beginning of a list means the list *replaces* the current list value.<br>Example: `rami --country %SE,US`
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
