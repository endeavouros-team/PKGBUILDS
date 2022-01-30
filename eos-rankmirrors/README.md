# eos-rankmirrors

`eos-rankmirrors` ranks the mirrors that provide the EndeaavourOS repository.<br>

## Synopsis
```
eos-rankmirrors [options]
```

## Options
```
  --sort <value>
             Primary key for sorting the mirrors.
             Supported key values:
                 age     (latest first)
                 rate    (fastest first)
             Default: age.

  --timeout <value>
  -t <value>
             Set the timeout value (in seconds) for checking a mirror.
             Default: 30.

  --no-save
  -n
             Don't save the generated mirrorlist.

  --ignore '<wordlist>'
             Mirrors to be ignored from the result.
             This is useful for e.g. leaving out non-functional mirrors.
             The <wordlist> is a list of words separated by a pipe '|' character.
             Each word should be a unique part of a mirror address.
             Note that the list should be enclosed in single or double quotes
             if it includes more than one word.
             Example:
                 eos-rankmirrors --ignore='funami|pizza'

  --prefer '<list-of-mirrors>'
             List of preferred mirror addresses.
             Adds given mirror addresses as the first in the EndeavourOS mirrorlist.
             The <list-of-mirrors> is a list of mirror addresses separated by
             a pipe '|' character.
             Note that the list must be enclosed in single quotes.
             Example:
                 eos-rankmirrors --prefer='https://endeavour.remi.lu/repo/$repo/$arch'

  --verbose
             Show more detailed output.

  --help
  -h
             This help.
```
## Configuration

### Configurable variables in file /etc/eos-rankmirrors.conf

For detailed info, see the comments in file `/etc/eos-rankmirrors.conf`.<br>

Variable name | Default value | Description
:---- | :---- | :----
EOS_AUTO_MIRROR_RANKING | no | Write the ranking result to file `/etc/endeavouros-mirrorlist`<br>or `/etc/endeavouros-mirrorlist.pacnew`.
EOS_AUTORANK_TIMEOUT | 30 | Timeout in seconds for each mirror to respond.
ALWAYS_FIRST_EOS_MIRRORS | `''` (an empty string) | A list of mirrors to set as first in the ranking result.


Example:
```
# Essential contents of file /etc/eos-rankmirrors.conf.
# Note: use bash syntax.

EOS_AUTO_MIRROR_RANKING=no

EOS_AUTORANK_TIMEOUT=10

ALWAYS_FIRST_EOS_MIRRORS='https://mirrors.tuna.tsinghua.edu.cn/endeavouros/repo/$repo/$arch'
```
