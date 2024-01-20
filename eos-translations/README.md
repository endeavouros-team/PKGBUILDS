# Translations for the Welcome app

The `eos-translations` package contains translations mainly for the **Welcome** app, but (to some degree) also other EndeavourOS apps.

Files that implement the actual translations:

File name | Description
:-------- | :----------
translation-*.bash | All language translation files.
translations.bash | Main script that implements the translation mechanism.

## Translation reference

The English translation file, `translation-en.bash`, serves as the reference for all other translation files.

A translation needs to implement the things described below.

### _tr_lang
All translation files need to have variable `_tr_lang` set:
```
_tr_lang=xx     # xx is a language acronym, for example "en" for English
```
The value of `xx` above is case sensitive, and must be set according to the *file name* of a translation (e.g. `translation-`**en**`.bash`).

Note that many language *variations* are currently not implemented. The mechanism, however, is available for adding more variations. For a new variation the value of `_tr_lang` must be set accordingly (e.g. `_tr_lang=en_AU`).

### The translation strings
The actual translation strings will be implemented using the `_tr_add2` function:
```
_tr_add2 <unique-string-id>  "<string-contents-in-your-language>"
```

Note that the string contents *must* be written inside quotes (because the string can include spaces or special characters).

<i>Important: the string should **not** start with a hyphen (`-`) because it will be interpreted unexpectedly and may cause errors.</i>

See also the examples below.

### Special features

A special marking

```
%%s
```

inside the `<string-contents-in-your-language>` means the app using the string can replace **%%s** in the string with app specific contents, e.g. the name of the desktop environment. It resembles printf's %s formatting feature.<br>For example (a shortened version of the actual definition):

```
_tr_add2  cal_info2  "Offline method gives you the %%s desktop.\n"
```

## Example:

```
_tr_add2 nb_tab_GeneralInfo    "General Info"
```
With this definition, Welcome or another app can use id

```
nb_tab_GeneralInfo
```

in place(s) where string `"General Info"` is needed.

### Full changelog

The full changelog of the reference file is [here](https://github.com/endeavouros-team/PKGBUILDS/commits/master/eos-translations/translation-en.bash).
