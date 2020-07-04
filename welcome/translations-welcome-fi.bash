# Translations for the Welcome app.
#
# Note: variables (like $PRETTY_PROGNAME below) may be used if they are already defined either
# - in the Welcome app
# - globally
#
#
# Any string should be defined like:
#
#    _tr_add <language> <placeholder> "string"
#          or
#    _tr_add2 <placeholder> "string"
#
# where
#
#    _tr_add         A bash function that adds a "string" to the strings database.
#    _tr_add2        Same as _tr_add but knows the language from the _tr_lang variable (below).
#    <language>      An acronym for the language, e.g. "en" for English (check the LANG variable!).
#    <placeholder>   A pre-defined name that identifies the place in the Welcome app where this string is used.
#    "string"        The translated string for the Welcome app.

# Finnish:

### First some useful definitions:

_tr_lang=fi            # required helper variable for _tr_add2

# Help with some special characters (HTML). Yad has problems without them:
_exclamation='&#33;'   # '!'
_and='&#38;'           # '&'
_question='&#63;'      # '?'


###################### Now the actual strings to be translated: ######################
# func   <placeholder>         "string"

_tr_add2 welcome_disabled     "$PRETTY_PROGNAME: käyttö on estetty. Ota se käyttöön valitsimella --enable."

_tr_add2 butt_later           "Nähdään myöhemmin"
_tr_add2 butt_latertip        "Pidä $PRETTY_PROGNAME käytössä"

_tr_add2 butt_noshow           "Älä enää näytä minua"
_tr_add2 butt_noshowtip        "Poista $PRETTY_PROGNAME käytöstä"

_tr_add2 butt_help            "Auta"


_tr_add2 nb_tab_INSTALL       "ASENNA"
_tr_add2 nb_tab_GeneralInfo   "Yleistä"
_tr_add2 nb_tab_AfterInstall  "Asennuksen jälkeen"
_tr_add2 nb_tab_AddMoreApps   "Lisää sovelluksia"


_tr_add2 after_install_text   "Mitä tehdä asennuksen jälkeen$_question"

_tr_add2 after_install_um     "Päivitä peilipalvelimet"
_tr_add2 after_install_umtip  "Päivitä peilipalvelinten lista ennen järjestelmän päivitystä"

_tr_add2 after_install_us     "Päivitä järjestelmäpaketit"
_tr_add2 after_install_ustip  "Päivitä kaikki järjestelmän ohjelmistopaketit"

_tr_add2 after_install_dsi     "Tunnista/korjaa järjestelmäongelmia"
_tr_add2 after_install_dsitip  "Tarkista tunnetut järjestelmäongelmat ja korjaa ne"

_tr_add2 after_install_etl     "EndeavourOS:n uusin taso"
_tr_add2 after_install_etltip  "Näytä mitä tehdä jos haluat järjestemĺmän uusimman julkaisun tasolle"

_tr_add2 after_install_cdm     "Vaihda ikkunamanageri"
_tr_add2 after_install_cdmtip  "Käytä toista ikkunamageria"

_tr_add2 after_install_ew     "EndeavourOS:n taustakuva"
_tr_add2 after_install_ewtip  "Vaihda taustakuva EndeavourOS:n oletuskuvaksi"


_tr_add2 after_install_pm     "Pakettien hallinta"
_tr_add2 after_install_pmtip  "Kuinka hallita paketteja pacman-ohjelman avulla"

_tr_add2 after_install_ay     "AUR $_and yay$_exclamation"
_tr_add2 after_install_aytip  "Tietoa Arch User Repository:stä ja yay-ohjelmasta"

_tr_add2 after_install_hn     "Laitteet ja verkko"
_tr_add2 after_install_hntip  "Kuinka saat laitteesi ja verkkosi toimimaan"

_tr_add2 after_install_bt     "Bluetooth"
_tr_add2 after_install_bttip  "Bluetooth-neuvoja"

_tr_add2 after_install_nv     "NVIDIA:n käyttäjät$_exclamation"
_tr_add2 after_install_nvtip  "NVIDIA-ohjeita"

_tr_add2 after_install_ft     "Forum-vinkkejä"
_tr_add2 after_install_fttip  "Auta meitä auttamaan sinua!"


_tr_add2 general_info_text     "Löydä etsimäsi EndeavourOS:n sivuilta!"

_tr_add2 general_info_ws       "Virallinen nettisivu"

_tr_add2 general_info_wi       "Wiki"
_tr_add2 general_info_witip    "Hyötyartikkeleita"

_tr_add2 general_info_ne       "Uutisia"
_tr_add2 general_info_netip    "Uutisia ja artikkeleita"

_tr_add2 general_info_fo       "Foorumi"
_tr_add2 general_info_fotip    "Kysy, kommentoi, ja juttele rennolla foorumillamme!"

_tr_add2 general_info_do       "Lahjoita"
_tr_add2 general_info_dotip    "Auta meitä pitämään EndeavourOS toiminnassa"

_tr_add2 general_info_ab       "Tietoja ohjelmasta $PRETTY_PROGNAME"
_tr_add2 general_info_abtip    "Lisätietoja tästä ohjelmasta"


_tr_add2 add_more_apps_text    "Asenna suosittuja sovelluksia"

_tr_add2 add_more_apps_lotip   "Office-paketti (libreoffice-fresh)"

_tr_add2 add_more_apps_ch      "Chromium selain"
_tr_add2 add_more_apps_chtip   "Nettiselain"

_tr_add2 add_more_apps_fw      "Palomuuri"
_tr_add2 add_more_apps_fwtip   "Gufw-palomuuri"

_tr_add2 add_more_apps_bt      "Bluetooth (blueberry) Xfce:lle"
_tr_add2 add_more_apps_bt_bm   "Bluetooth (blueman) Xfce:lle"


####################### NEW STUFF AFTER THIS LINE:

_tr_add2 settings_dis_contents   "Saat $PRETTY_PROGNAME:n taas käyttöön kun ajat komennon: $PROGNAME --enable"
_tr_add2 settings_dis_text       "Ota uudestaan käyttöön $PRETTY_PROGNAME:"
_tr_add2 settings_dis_title      "Kuinka otat uudestaan käyttöön $PRETTY_PROGNAME:n"
_tr_add2 settings_dis_butt       "Selvä"
_tr_add2 settings_dis_buttip     "Minä lupaan"

_tr_add2 help_butt_title         "$PRETTY_PROGNAME apua"
_tr_add2 help_butt_text          "Lisätietoja ohjelmasta $PRETTY_PROGNAME"

_tr_add2 dm_title                "Valitse Display Manager"
_tr_add2 dm_col_name1            "Valittu"
_tr_add2 dm_col_name2            "DM nimi"

_tr_add2 dm_reboot_required      "Uudelleenkäynnistyksen jälkeen muutokset tulevat voimaan."
_tr_add2 dm_changed              "Uusi DM: "
_tr_add2 dm_failed               "DM:n vaihtaminen epäonnistui."
_tr_add2 dm_warning_title        "Varoitus"

_tr_add2 install_installer       "Asentaja"
_tr_add2 install_already         "jo asennettu"
_tr_add2 install_ing             "Asennan"
_tr_add2 install_done            "Valmis."

_tr_add2 sysup_no                "Ei päivityksiä."
_tr_add2 sysup_check             "Tarkistan päivitykset..."

_tr_add2 issues_title            "Tutkitaan mahdollisia korjauskohteita"
_tr_add2 issues_grub             "TÄRKEÄÄ: koneen käynnistyvalikko pitää luoda uudelleen."
_tr_add2 issues_run              "Ajetaan komennot:"
_tr_add2 issues_no               "Korjattavaa ei löydetty."

_tr_add2 cal_noavail            "Ei saatavilla: "        # installer program
_tr_add2 cal_warn               "Varoitus"
_tr_add2 cal_info1              "Tämä on Community Development -julkaisu.\n"                                   # specials needed!
_tr_add2 cal_info2              "<b>Offline</b> asentaa Xfce-työpöydän ja EndeavourOS-teeman.\n"
_tr_add2 cal_info3              "<b>Online</b> antaa valita asennettavan työpöydän, johon tulee oletusteema.\n"
_tr_add2 cal_info4              "\nHUOM: Tätä julkaisua kehitetään jatkuvasti. Ole hyvä ja auta tekemään siitä parempi raportoimalla mahdolliset virheet."
_tr_add2 cal_choose             "Valitse asennustapa"
_tr_add2 cal_method             "Tapa"
_tr_add2 cal_nosupport          "$PROGNAME: ei-tuettu tapa: "
_tr_add2 cal_nofile             "$PROGNAME: tarvittu tiedosto ei löydy: "
_tr_add2 cal_istarted           "Asennus alkoi"
_tr_add2 cal_istopped           "Asennus loppui"

_tr_add2 tail_butt              "Sulje tämä ikkuna"
_tr_add2 tail_buttip            "Sulje vain tämä ikkuna"


_tr_add2 ins_text              "Asenna EndeavourOS"
_tr_add2 ins_start             "Käynnistä asennus"
_tr_add2 ins_starttip          "Käynnistä asentaja (sekä lisätietoa antava pääteikkuna)"
_tr_add2 ins_up                "Päivitä tämä sovellus$_exclamation"
_tr_add2 ins_uptip             "Päivittää tämän sovelluksen ja käynnästää sen uudelleen (käytä jos niin ohjeistetaan)"
_tr_add2 ins_keys              "Alusta pacman-avaimet"
_tr_add2 ins_keystip           "Alustaa pacman-avaimet (ei yleensä välttämätöntä)"
_tr_add2 ins_pm                "Osioiden muokkaaja"
_tr_add2 ins_pmtip             "Gparted sallii levyn osioiden tutkimisen ja muokkaamisen (käytä tarvittaessa)"
_tr_add2 ins_rel               "Uusimman julkaisun tiedot"
_tr_add2 ins_reltip            "Lisätietoja uusimmasta julkaisusta"
_tr_add2 ins_tips              "Asennusohjeita"
_tr_add2 ins_tipstip           "Vinkkejä asentamiseen"
_tr_add2 ins_trouble           "Vinkkejä vianetsintään"
_tr_add2 ins_troubletip        "Järjestelmän korjausohjeita"

_tr_add2 after_install_us_from    "Päivityslähde:"                            # AUR or upstream
_tr_add2 after_install_us_el      "Lisäoikeuksia tarvitaan."
_tr_add2 after_install_us_done    "päivitys valmis."
_tr_add2 after_install_us_fail    "päivitys epäonnistui!"

# 2020-May-14:

_tr_add2 nb_tab_UsefulTips    "Vinkkejä"
_tr_add2 useful_tips_text     "Hyödyllisiä linkkejä ${_and} vinkkejä"

# 2020-May-16:

_tr_add2 butt_changelog        "Muutosloki"
_tr_add2 butt_changelogtip     "Näytä Welcome:n muutosloki"

_tr_add2 after_install_themevan      "Xfce: perusteema"
_tr_add2 after_install_themevantip   "Ota Xfce:n perusteema käyttöön"

_tr_add2 after_install_themedef     "Xfce: EndeavourOS:n oletusteema"
_tr_add2 after_install_themedeftip  "Ota Xfce:n EndeavourOS-oletusteema käyttöön"

# 2020-Jun-28:
_tr_add2 after_install_pclean       "Pakettien tallennustilan konfigurointi"
_tr_add2 after_install_pcleantip    "Muokkaa vanhojen pakettien hallinnointipalvelua"

# 2020-Jul-04:
_tr_add2 nb_tab_OwnCommands         "Omat komennot"
_tr_add2 nb_tab_owncmds_text        "Lisätyt omat komennot"
