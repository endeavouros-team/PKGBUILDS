# Translations for the Welcome app.
#
# Note: variables (like $PRETTY_PROGNAME below) may be used if they are already defined either
# - in the Welcome app
# - globally
#
# Any string should be defined like:
#    _tr_add <language> <placeholder> "string"
# where
#    _tr_add         A bash function that adds a "string" to the strings database.
#    <language>      An acronym for the language, e.g. "en" for English (check the LANG variable!).
#    <placeholder>   A pre-defined name that identifies the place in the Welcome app where this string is used.
#    "string"        The translated string for the Welcome app.

# Finnish:

### First some potentially useful definitions:

_tr_lang=fi            # helper variable

# Help with some special characters (HTML). Yad has problems without them:
_exclamation='&#33;'   # '!'
_and='&#38;'           # '&'
_question='&#63;'      # '?'


### Now the actual strings to be translated:

_tr_add $_tr_lang welcome_disabled     "$PRETTY_PROGNAME: käyttö on estetty. Ota se käyttöön valitsimella --enable."

_tr_add $_tr_lang butt_later           "Nähdään myöhemmin"
_tr_add $_tr_lang butt_latertip        "Pidä $PRETTY_PROGNAME käytössä"

_tr_add $_tr_lang butt_noshow           "Älä enää näytä minua"
_tr_add $_tr_lang butt_noshowtip        "Poista $PRETTY_PROGNAME käytöstä"

_tr_add $_tr_lang butt_help            "Auta"


_tr_add $_tr_lang nb_tab_INSTALL       "ASENNA"
_tr_add $_tr_lang nb_tab_GeneralInfo   "Yleistä"
_tr_add $_tr_lang nb_tab_AfterInstall  "Asennuksen jälkeen"
_tr_add $_tr_lang nb_tab_AddMoreApps   "Lisää sovelluksia"


_tr_add $_tr_lang after_install_text   "Mitä tehdä asennuksen jälkeen$_question"

_tr_add $_tr_lang after_install_um     "Päivitä peilipalvelimet"
_tr_add $_tr_lang after_install_umtip  "Päivitä peilipalvelinten lista ennen järjestelmän päivitystä"

_tr_add $_tr_lang after_install_us     "Päivitä järjestelmäpaketit"
_tr_add $_tr_lang after_install_ustip  "Päivitä kaikki järjestelmän ohjelmistopaketit"

_tr_add $_tr_lang after_install_dsi     "Tunnista/korjaa järjestelmäongelmia"
_tr_add $_tr_lang after_install_dsitip  "Tarkista tunnetut järjestelmäongelmat ja korjaa ne"

_tr_add $_tr_lang after_install_etl     "EndeavourOS:n uusin taso"
_tr_add $_tr_lang after_install_etltip  "Näytä mitä tehdä jos haluat järjestemĺmän uusimman julkaisun tasolle"

_tr_add $_tr_lang after_install_cdm     "Vaihda ikkunamanageri"
_tr_add $_tr_lang after_install_cdmtip  "Käytä toista ikkunamageria"

_tr_add $_tr_lang after_install_ew     "EndeavourOS:n taustakuva"
_tr_add $_tr_lang after_install_ewtip  "Vaihda taustakuva EndeavourOS:n oletuskuvaksi"


_tr_add $_tr_lang after_install_pm     "Pakettien hallinta"
_tr_add $_tr_lang after_install_pmtip  "Kuinka hallita paketteja pacman-ohjelman avulla"

_tr_add $_tr_lang after_install_ay     "AUR $_and yay$_exclamation"
_tr_add $_tr_lang after_install_aytip  "Tietoa Arch User Repository:stä ja yay-ohjelmasta"

_tr_add $_tr_lang after_install_hn     "Laitteet ja verkko"
_tr_add $_tr_lang after_install_hntip  "Kuinka saat laitteesi ja verkkosi toimimaan"

_tr_add $_tr_lang after_install_bt     "Bluetooth"
_tr_add $_tr_lang after_install_bttip  "Bluetooth-neuvoja"

_tr_add $_tr_lang after_install_nv     "NVIDIA:n käyttäjät$_exclamation"
_tr_add $_tr_lang after_install_nvtip  "NVIDIA-ohjeita"

_tr_add $_tr_lang after_install_ft     "Forum-vinkkejä"
_tr_add $_tr_lang after_install_fttip  "Auta meitä auttamaan sinua!"


_tr_add $_tr_lang general_info_text     "Löydä etsimäsi EndeavourOS:n sivuilta!"

_tr_add $_tr_lang general_info_ws       "Virallinen nettisivu"

_tr_add $_tr_lang general_info_wi       "Wiki"
_tr_add $_tr_lang general_info_witip    "Hyötyartikkeleita"

_tr_add $_tr_lang general_info_ne       "Uutisia"
_tr_add $_tr_lang general_info_netip    "Uutisia ja artikkeleita"

_tr_add $_tr_lang general_info_fo       "Foorumi"
_tr_add $_tr_lang general_info_fotip    "Kysy, kommentoi, ja juttele rennolla foorumillamme!"

_tr_add $_tr_lang general_info_do       "Lahjoita"
_tr_add $_tr_lang general_info_dotip    "Auta meitä pitämään EndeavourOS toiminnassa"

_tr_add $_tr_lang general_info_ab       "Tietoja ohjelmasta $PRETTY_PROGNAME"
_tr_add $_tr_lang general_info_abtip    "Lisätietoja tästä ohjelmasta"


_tr_add $_tr_lang add_more_apps_text    "Asenna suosittuja sovelluksia"

_tr_add $_tr_lang add_more_apps_lotip   "Office-paketti (libreoffice-fresh)"

_tr_add $_tr_lang add_more_apps_ch      "Chromium selain"
_tr_add $_tr_lang add_more_apps_chtip   "Nettiselain"

_tr_add $_tr_lang add_more_apps_fw      "Palomuuri"
_tr_add $_tr_lang add_more_apps_fwtip   "Gufw-palomuuri"

_tr_add $_tr_lang add_more_apps_bt      "Bluetooth-manageri Xfce:lle"
_tr_add $_tr_lang add_more_apps_bttip   "Blueberry"

