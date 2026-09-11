# bash-app-translate user guide

`bash-app-translate` provides a simple way to support language translations in bash scripts.<br>
This document describes how to use it with a bash app.<br>
The examples below assume EndeavourOS linux distribution.

## Applying bash-app-translate in a bash-language app

A script (=bash app) must add the following line before any translation is needed (typically one of the first commands of the app):

```
source /usr/share/endeavouros/translations/bash-app-translate "${appname}" || exit 1
```

In addition, the app needs to implement the *translation files* and use the translated strings with a special (but simple) syntax.<br>
The initialization above finds the proper translation file (see **Translation files** below) automatically.

<small>Note: the `${appname}` often is `${0##*/}` which provides the name of the app in a script file.</small>


## Translation files

An app developer or translator should write translation file(s) into folder `/usr/share/endeavouros/translations`.<br>
The names of the translation files have this naming convention:

```
btr_${appname}_${lang}
```

where
- `${appname}` is the name of the app that uses the translations
- `${lang}` referes to the value of the LANG environment variable before the first dot. Note that in some cases only 2 first letters of LANG value is needed (e.g. `fi`), but sometimes a more specific language part (e.g. `pt_BR`) may be needed.

A translation file must contain an associative array with name BTR_ARR, for example:

```
# an English translation example in file "btr_${appname}_en"
declare -A BTR_ARR=(
    [keyname1]="something related to keyname1"
    [keyname2]="something %s related to keyname2"
    [keyname3]="something %s related to keyname3 %s"
    # and so on
)
```

<small>Note: bash allows an *alternative* syntax for the associative array. This *may* make the array definition more readable. See `man bash` for more info.</small>

Then a translation (using the same *keynames*) in another language using the *alternative* bash syntax:

```
# a Finnish translation example in file "btr_${appname}_fi"
declare -A BTR_ARR=(
    keyname1  "jotain avaimelle keyname1"
    keyname2  "jotain %s avaimelle keyname2"
    keyname3  "jotain %s avaimelle keyname3 %s"
    # ja niin edelleen
)
```

These two files provide app's translations for English and Finnish languages.

Note the `%s` in the strings related to `keyname2` and `keyname3`: it is a placeholder for a *parameter* (see **Parameters** below).

## Using translations in the app

When an app needs a translated string somewhere, use the pairs of `key` and `string` in the `BTR_ARR` (as already seen above). The *key* identifies the *string* in the contents of the `BTR_ARR` above.

Usage in an app is very simple, we use function `BTR`:

```
# Assuming English translation
my_paramA="funny stuff"
my_paramB="still"
value="$(BTR keyname1)"                             # $value = "something related to keyname1"
value="$(BTR keyname2 "$my_paramA")"                # $value = "something funny stuff related to keyname2"
value="$(BTR keyname4 "$my_paramA" "$my_param3")"   # $value = "something funny stuff related to keyname3 still"
```

### About the key and string

The `key` in the pair should be a word containing only alphabets (`a..z` and `A..Z`), numbers, and underscores (e.g. `This_is_key_nr_1`).<br>
The `string` is any character string. It should be surrounded by quotes (e.g. "this is a message"), especially when it includes white spaces.<br>
Locale dependent special characters may need special handling.

### Parameters

The implementation supports `%s` (better known from `printf`, see `man 3 printf`) to allow adding (one or more) parameters inside the string (see the examples above).

```
declare -A BTR_ARR=(
    [mykey1]="the width of string '%-15s' is 15 characters, aligned left"
    [mykey2]="the width of string '%15s' is 15 characters, aligned right"
    # and so on
)
```

Note that this implementation supports only a small subset of features what printf can provide.<br>
Limitations:

1. Only formats `%s`, `%Ns`, and `%-Ns` (where N is a positive integer) are supported. No other **conversion** is supported.<br>
For example, `%*s` is *not* supported.
2. Parsing the format syntax may ignore *unsupported* formats, and this may lead to errors.

#### Multiline parameters

There may be situations when you want to use e.g. long multiline messages. The above *can* be used but it may be clumsy.<br>
Therefore we have a way to bind several strings together:

```
declare -A BTR_ARR=(
    [keyname1]="something related to keyname1"   # like before

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

Some additional notes:

1. The *name* of the multiline array **must** start with `_MULTILINE_`, otherwise it is not recognized as a multiline array but a simple string instead.
2. The *order* of the **parameters** is important: `my_param1` replaces the `%s` on the second array line, and the other parameters replace the two `%s` placeholders on the last array line.

## Special characters

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

## Notes about creating a new translation

The English translation is considered as the *reference translation*. Other translations should translate each `string` for the `[keyname]=string` pairs.

This means when starting to create a translation to a new language, the developer is strongly advised to copy the English translation as the base.
This gives the following benefits:

- One can translate only a subset of English strings, leaving some of the English strings as-is. This can help doing the full translation in phases.
- It is easy to see what still needs to be done.

It is also recommended to keep the order of the translation lines the same as in the English translation. If and when the English translations change, this may help find the TODOs.
