# show-location-info

Show info about your current location by using the `https://ipinfo.io` site.

## Synopsis
```
show-location-info [options] [location-item]

Location-item: one of
   city country hostname ip loc org postal region timezone 
Location-item defaults to showing all available info.

Options:
  -h, --help       This help.
  -t, --timeout    Max number of seconds to wait for a response from
                   https://ipinfo.io (default: 30).
```

## Example
```
show-location-info -t 10 timezone
```
