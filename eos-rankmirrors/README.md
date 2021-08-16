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
