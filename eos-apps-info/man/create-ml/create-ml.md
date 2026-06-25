# create-ml

`create-ml` is yet another application to rank Arch mirrors. It is included in package `iso-create-ml`.
Currently it is the default app on the ISO for creating file `/etc/pacman.d/mirrorlist` for the *offline* install mode.
However, it can be used for ranking Arch mirrors in online mode, and on an installed system.

Its prominent online feature is the pre-defined list of *recommended* mirror countries for each location.
The pre-defined list is used for including more mirror sources in addition to the current location.
The list can be overridden or disabled by the user.

Another noteworthy feature is *parallel* mirror ranking which makes it pretty fast.

## Usage and parameters

Use command
```
create-ml --help
```
to see the explanation of supported parameters.

## Command examples

Command | Notes
---- | ----
`create-ml --save`                             | A simple way to create and save a ranked list of Arch mirrors.
`create-ml --verbose`                          | Show the mirrorlist (with ranking details) but don't save it.
`create-ml --prefs='fi.*niranjan umea' --save` | Specify some preferred mirrors (using regular expressions) that will be the first in the list.<br>Note the necessary *quotes* with option `--prefs`.
`create-ml --timeout-mirror 2 --save`          | Use a timeout for each mirror. Helps discarding unresponsive mirrors.

## Configure the countries for additional mirrors (*advanced*)

File `/etc/create-ml-recommended-cc.conf` can include a bash function `AddRecommendedCountries` that specifies which additional countries to include in ranking.<br>
The default values (shown below) *should be* reasonable for most users, but there may be reasons to adjust them.

Note that the function below is directly copied from file `/bin/create-ml`. If user creates this file with the function, it overrides the function in `create-ml`.

All two letter items below are country codes (for example, `de` means Germany). A special code `ww` means Worldwide.

```
AddRecommendedCountries() {
    # Adding recommended countries for ranking.
    # Note that in *offline* install mode we "fall back" to the last branch of the case..esac below
    # because the current country is unknown.

    case "$country_code" in
        al|at|be|cz|dk|ee|es|fr|gb|gr|hr|it|nl|pl|pt|se)     additional_mirror_countries+=(ww de fr) ;;
        no)                                                  additional_mirror_countries+=(ww de se) ;;
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
```
 rami                # deprecated!
 rate-mirrors
 reflector
 reflector-simple
```

