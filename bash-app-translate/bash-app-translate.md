# bash-app-translate user guide

`bash-app-translate` provides a simple way to support language translations in bash scripts.

This document describes how to:

- Use the translations in a bash app.
- Write (new) translations for the app.

The examples below assume EndeavourOS linux distribution.

## Using the translations in an app

### Initialization

The app must add the following line before any translation is needed (typically one of the first commands of the app):

```
source /usr/share/endeavouros/translations/bash-app-translate || exit 1
```

If the appname is not the same as `${0##*/}` then the appname needs to be specified:

```
source /usr/share/endeavouros/translations/bash-app-translate ${appname} || exit 1
```

<small>Note: the `${appname}` often is the same as `${0##*/}` which provides the name of the app in a script file.</small>

### Usage

When an app needs a translated string somewhere, use the pairs of `key` and `string` in the `BTR_ARR` (see **Translation files** below).<br>
The *key* identifies the translated *string* in `BTR_ARR`.

Usage in an app is very simple, we use function `BTR`:

```
# Assuming English translation
my_paramA="funny stuff"
my_paramB="still"

value="$(BTR keyname1)"                             # $value = "something related to keyname1"
value="$(BTR keyname2 "$my_paramA")"                # $value = "something funny stuff related to keyname2"
value="$(BTR keyname4 "$my_paramA" "$my_param3")"   # $value = "something funny stuff related to keyname3 still"
```


## Configuration file for the user

File `/etc/bash-app-translate.conf` is the configuration for the user.<br>
For now it only allows user to select the target language, assuming it has been implemented.

Variable | Default value | Purpose
---- | ---- | ----
`BTR_PREFER_LANG` | `""` | Specifies the target language to be used by the app. By default it is empty which means the LANG environment variable will be used for determining the target language automatically.<br>Note that automatic language detection is dependendent on the **names** of the *translation files* (see below), specifically the suffix of the each file name, like suffix `en` in file `btr_${appname}_en`.

## Creating translations

The app developer/translator needs to implement the *translation files*.
The translation file(s) should be found in folder `/usr/share/endeavouros/translations`.
*Initialization* above finds the proper translation file automatically.

The names of the translation files have this naming convention:

```
btr_${appname}_${lang}
```

where
- `${appname}` is the name of the app that uses the translations
- `${lang}` refers to either user-selected or automatically detected language.

If the user does not select the language, the LANG environment variable will be used.<br>
Depending on the name of the translation file for an app (like `btr_${appname}_en` or `btr_${appname}_pt_BR`), 2 or 5 first characters of the LANG value is needed.

A translation file must contain an associative array with name `BTR_ARR`, for example:

```
# an English translation example in file "btr_${appname}_en"
declare -A BTR_ARR=(
    [keyname1]="something related to key name1"
    [keyname2]="something %s related to key name2"
    [keyname3]="something %s related to key name3 %s"
    # and so on
)
```

<small>Note: bash allows an *alternative* syntax for the associative array. This *may* make the array definition more readable. See `man bash` for more info.</small>

Then a translation (using the **same** *keynames*) in another language, but using the *alternative* bash syntax:

```
# a Finnish translation example in file "btr_${appname}_fi"
declare -A BTR_ARR=(
    keyname1  "jotain avaimelle key name1"
    keyname2  "jotain %s avaimelle key name2"
    keyname3  "jotain %s avaimelle key name3 %s"
    # ja niin edelleen
)
```

These two files provide app's translations for English and Finnish languages.

Note the `%s` in the strings of keys `keyname2` and `keyname3`: it is a placeholder for a *parameter* (see **Parameters** below).

### About the key and string

The `key` identifies the translated `string` in `BTR_ARR`.

The `key` in the pair should be a word containing only alphabets (`a..z` and `A..Z`), numbers, and underscores (e.g. `This_is_key_nr_1`).<br>
The `string` is a character string. An included **%** must be a part of a parameter definition ending with an **s**.<br>
The `string` should be surrounded by quotes (e.g. `"this is a message"`), especially when it includes white spaces.<br>
Only the `string` is subject to translation, not the `key`.<br>

Note that (locale dependent) special characters in a `string` may need special handling. See **Special characters in the string** below.


### Parameters for the string

The implementation supports `%s` (better known from `printf`, see `man 3 printf`) to allow adding (one or more) parameters inside the string, as in the examples above.

Note that this implementation supports only a small subset of features what `printf` can provide.<br>
Limitations:

1. Only formats `%s`, `%Ns`, and `%-Ns` (where N is a positive integer) are supported. No other **conversion** is supported.<br>
For example, `%*s` is *not* supported.
2. Parsing the format syntax may ignore *unsupported* formats, and this may lead to errors.

Example:

```
declare -A BTR_ARR=(
    [mykey1]="the width of string '%-15s' is 15 characters, aligned left"
    [mykey2]="the width of string '%15s' is 15 characters, aligned right"
    # and so on
)
```

#### Multiline string parameters

There may be situations when you want to use e.g. long multiline messages. The above *can* be used but it may be clumsy.<br>
Therefore we have a way to bind several strings together:

```
declare -A BTR_ARR=(
    [keyname1]="something related to key name1"  # like before

    [my_many_lines]="_MULTILINE_my_lines"        # refers to the array of strings in _MULTILINE_my_lines below
)

_MULTILINE_my_lines=(                            # always use prefix: _MULTILINE_
    "something else"
    "something else with one parameter: %s"
    "something else with two parameters: %s %s"
)
```

The app can use it simply:

```
many_lines_of_text="$(BTR my_many_lines  "my_param1" "my_param2" "my_param3")"
```

where `my_many_lines` is the *key* in the BTR_ARR.

Note:

1. The *name* of the multiline array **must** start with `_MULTILINE_`, otherwise it is not recognized as a multiline array but a simple string instead.
2. The *order* of the **parameters** is important: `my_param1` replaces the `%s` on the second array line, and the other parameters replace, in order, the two `%s` placeholders on the last array line.

#### Special characters in the string

A translation may need special characters, but not all are directly supported by `yad` (which is the GUI implementation used by `akm`).<br>
For this purpose there are the following *predefined* variables a translation can use:
```
BTR_exclamation='&#33;'         # '!'
BTR_and='&#38;'                 # '&'
BTR_question='&#63;'            # '?'
BTR_exclamation_down='&#161;'   # '�'
BTR_question_down='&#191;'      # '�'
```

Example:

```
declare -A BTR_ARR=(
    [a_demo_key]="This is a knife$BTR_exclamation"    # shows as: This is a knife!
    # ...
)
```

If these are not enough, the developer of a translation is advised to create similar assignments in the translation file as needed.

## The roles of the translation files

The English translation is considered to be the *reference* that others should copy and translate.

Use the placeholders (%s) according to the requirements of the target language.

Copying the English translation as the base gives the following benefits:

- One can translate only a subset of English strings, leaving some of the English strings as-is. This can help doing the full translation in phases.
- It is easy to see what still needs to be done.

It is also recommended to keep the order of the translation lines in file `btr_${appname}_${lang}` the same as in the English translation.<br>
If and when the English translation changes, this may help find the modified lines more easily.
