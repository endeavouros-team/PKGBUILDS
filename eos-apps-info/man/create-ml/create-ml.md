# create-ml

`create-ml` is yet another application to rank Arch mirrors. It is included in package `iso-create-ml`.
Currently it is the default app on the ISO for creating file `/etc/pacman.d/mirrorlist` for the *offline* install mode.
However, it can be used for ranking Arch mirrors in online mode, and on an installed system.

Its prominent online feature is the pre-defined list of *recommended* mirror countries for each location.
The pre-defined list is used for including more mirror sources in addition to the current location.

The list can be overridden or disabled by the user.

## Examples

Command | Notes
---- | ----
`create-ml --save`                             | A simple way to create and save a ranked list of Arch mirrors.
`create-ml --verbose`                          | Show the mirrorlist (with ranking details) but don't save it.
`create-ml --prefs='fi.*niranjan umea' --save` | Specify some preferred mirrors (using regular expressions) that will be the first in the list.<br>Note the necessary *quotes* with option `--prefs`.
`create-ml --timeout-mirror 2 --save`          | Use a timeout for each mirror. Helps discarding unresponsive mirrors.


## Usage and parameters

```
Usage:   create-ml [options]

Options: --help, -h                   This help.
         --nolocal                    Do not include mirrors from the current country.
         --offline                    Don't use internet even when a connection is available.
         --save                       Save mirrorlist to /etc/pacman.d/mirrorlist (see also option --savefile).
         --sequential                 Rank mirrors sequentially (slower) instead of in parallel (faster).
         --verbose, -v                Show more ranking details.
         --http                       Include the http:// mirrors.
         --countries, -c              Give a list of country codes that will be used as additional mirror countries.
                                      The list items can be separated by commas or spaces.
                                      Examples:
                                           -c ca,fr,tw
                                           -c 'ca fr tw'    # note: quotes required here
         --user-countries             Use file /home/edi/user-countries.txt to give country codes.
                                      It can contain a list of country codes separated by white spaces.
         --no-recommended-countries   Don't use recommended countries.
                                      Instead you may give one or more country codes
                                      with option --countries or option --user-countries.
         --fake-country=*             Set a fake current country code (advanced).
         --use-saved-cc               The detected local country code is saved to a file /etc/create-ml-saved-cc.conf.
                                      This option allows using it when local country detection fails (advanced).
         --savefile=*                 File path to save the mirrorlist (advanced).
         --timeout-mirror='seconds'   Max time to rank before timing out a mirror. Default: 10.
         --prefs='regexp-list'        List of preferred mirrors as regexps for grep (advanced).
                                      Use single quotes around the list. Separate items by a space.

Notes:   * Country codes are the two-letter codes as listed by command 'reflector --list-countries'.
           Note: a special code 'ww' can be used too. It is a compact list of 'Worldwide' mirrors.
         * By default only https:// mirrors are included.
         * Use option --save to change the existing /etc/pacman.d/mirrorlist.
         * Use option --no-recommended-countries to rank mirrors without adding recommended countries.
         * If internet connection is available and option --offline is not used, the connection is used for:
               1) Fetching a list of active mirrors from the Arch web site.
               2) Fetching country code and name mappings from the Arch web site.
               3) Ranking mirrors.
           Without a connection the ranking result can be suboptimal or even problematic.
```

## Configure the countries for additional mirrors (*advanced*)

File `/etc/create-ml-recommended-cc.conf` can include a bash function `AddRecommendedCountries` that specifies which additional countries to include in ranking.<br>
The default values (shown below) *should be* reasonable for most users, but there may be reasons to adjust them.

Note that the function below is directly copied from file `/bin/create-ml`. If user creates this file with the function, it overrides the function in `create-ml`.

```
AddRecommendedCountries() {
    # Adding recommended countries for ranking.
    # Note that in *offline* install mode we "fall back" to the last branch of the case..esac below
    # because the current country is unknown.

    case "$country_code" in
        al|at|be|cz|dk|ee|es|fr|gb|gr|hr|it|nl|no|pl|pt|se)  additional_mirror_countries+=(ww de fr) ;;
        'fi')                                                additional_mirror_countries+=(ww se) ;;
        de|us)                                               ;;
        cn|ru)                                               protocols+=(http) ;;
        ca)                                                  additional_mirror_countries+=(us) ;;
        au)                                                  additional_mirror_countries+=(ww) ;;
        br|cl|co|mx)                                         additional_mirror_countries+=(ww us); protocols+=(http) ;;
        tw)                                                  additional_mirror_countries+=(ww sg kr) ;;
        kr)                                                  additional_mirror_countries+=(ww sg tw) ;;
        sg)                                                  additional_mirror_countries+=(ww kr tw) ;;
        'in')                                                additional_mirror_countries+=(ww de us) ;;
        *)                                                   additional_mirror_countries+=(ww de us); protocols+=(http) ;;
    esac
}
```

Help appreciated: If you think some listed country or countries need adjusting above, please go to `forum.endeavouros.com` and tell us how we can improve the list.


## See also

Some alternative apps for the same purpose:
- `rami`
- `rate-mirrors`
- `reflector`
- `reflector-simple`

