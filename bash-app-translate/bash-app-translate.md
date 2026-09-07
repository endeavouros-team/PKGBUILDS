# bash-app-translate user guide

`bash-app-translate` provides a simple way to add support for langguage translations into bash scripts.

## Applying bash-app-translate in a bash-language app

A script (=bash app) must add the following line before any translation is needed (typically one of the first commands of the app):

```
source /usr/share/endeavouros/translations/bash-app-translate "${appname}" || exit 1
```

<small>Note: the `${appname}` often is `${0##*/}` which provides the name of the app in a script file.</small>

In addition, the app needs to implement the *translation files* and use the translated string with a special syntax.<br>
The initialization above finds the proper translation file (see **Translation files** below) automatically.

## Translation files

An app developer or translator should write translation file(s) into folder `/usr/share/endeavouros/translations`.<br>
The names of the translation files have this naming convention:

```
btr_${appname}_${lang}
```

where
- `${appname}` is the name of the app that needs various translations
- `${lang}` referes to the value of the LANG environment variable before the first dot. Note that in some cases only 2 first letters of LANG value is needed (e.g. `fi`), but sometimes a more specific language part (e.g. `pt_BR`) is needed.

A translation file must contain an associative array with name BTR_ARR, for example:

```
# an English translation example in file "btr_${appname}_en"
declare -A BTR_ARR=(
    [keyname1]="something related to keyname1"
    [keyname2]="something %s related to keyname2"
    # and so on
)
```

<small>Note: bash allows an *alternative* syntax for the associative array. This *may* make the array definition more readable. See `man bash` for more info.</small>

Then a translation (using the same *keynames*) in another language with the *alternative* bash syntax:

```
# a Finnish translation example in file "btr_${appname}_fi"
declare -A BTR_ARR=(
    keyname1  "jotain avaimelle keyname1"
    keyname2  "jotain %s avaimelle keyname2"
    # ja niin edelleen
)
```

These two files provide app's translations for English and Finnish languages.

Note the `%s` in the string related to `keyname2`: it is a placeholder for a *parameter* (see **Parameters** below).

## Using translations in the app

When an app needs a translated string somewhere, use the pairs of `key` and `string` in the `BTR_ARR`. The key identifies for the string, as already seen above in the contents of the `BTR_ARR` above.

Usage in an app is very simple:

```
# Assuming English translation
value="$(BTR keyname1)"                    # $value = "something related to keyname1"
value="$(BTR keyname2 "funny stuff")"      # $value = "something funny stuff related to keyname2"
```
Note the included parameter "funny stuff" with keyname2.

### The keyname and the string

The `key` in the pair should be a word containing only alphabets (`a..z` and `A..Z`), numbers, and underscores (e.g. `This_is_key_nr_1`).<br>
The `string` is any character string. It should be surrounded by quotes (e.g. "this is a message"), especially when it includes white spaces.<br>
Locale dependent special characters may need special handling.

### Parameters

The implementation uses `printf` to construct the final string. This allows using `%s` for adding parameters inside the string (see the example above).

## Notes about creating a new translation

The English translation is considered as the *reference translation*. All other translations should translate the same `[keyname]=string` pairs.

This means when starting to create a translation to a new language, developer is strongly advised to copy the English translation as the base.
Then not *all* strings need a translation (for whatever reason), which may help doing the full translation in phases.
