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
             Default: 2.

  --no-save
  -n
             Don't save the generated mirrorlist.

  --verbose
             Show more detailed output.

  --help
  -h
             This help.
```
## Configuration

### Preferred mirrors

User may export an environment variable `ALWAYS_FIRST_EOS_MIRRORS` containing a static list of mirror URLs (separated by `'|'` characters). The mirrors on the list are then used by `eos-rankmirrors` as the best EndeavourOS mirrors for the location. The variable defintion can be added e.g. to the `~/.bashrc` file.

Example:
```
# The following two mirrors will take precedence in the endeavouros-mirrorlist file.
ALWAYS_FIRST_EOS_MIRRORS='https://mirrors.tuna.tsinghua.edu.cn/endeavouros/repo/$repo/$arch'
ALWAYS_FIRST_EOS_MIRRORS+='|https://mirror.moson.org/endeavouros/repo/$repo/$arch'
export ALWAYS_FIRST_EOS_MIRRORS
```
