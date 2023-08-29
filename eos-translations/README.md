# Translations for the Welcome app

The `eos-translations` package contains translations mainly for the **Welcome** app, but also some other EndeavourOS apps.

File name | Description
:---- | :------- 
translation-*.bash | All language translation files.
translations.bash | Main script that implements how the translation files are used.

## Translation reference

The English translation file, `translation-en.bash`, serves as the reference for all other translation files.

All translation files need to have variable `_tr_lang` set:
```
_tr_lang=xx            (xx is a language acronym, for example "en" for English)
```
Then there will be actual translation strings as lines of this form:
```
_tr_add2 <unique-string-id>  "<string-contents-in-your-language>"
```
### Special features

A special marking

```
%%s
```

inside the `<string-contents-in-your-language>` means the app using the string can replace **%%s** in the string with app specific contents, e.g. the name of the desktop environment. It resembles printf's %s formatting feature.


### Example:

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
