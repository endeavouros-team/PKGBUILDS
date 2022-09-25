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

_tr_add2 welcome_disabled     "$PRETTY_PROGNAME: käyttö on estetty. Ota se käyttöön valitsimella --enable (tilapäisesti: --once)."  # changed 2022-Feb-21

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
_tr_add2 after_install_ewtip  "Palauta EndeavourOS:n taustakuva oletukseensa"   # oli: "Vaihda taustakuva EndeavourOS:n oletuskuvaksi"


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

_tr_add2 settings_dis_contents   "Saat $PRETTY_PROGNAME:n taas käyttöön kun ajat komennon:\n<tt>   $PROGNAME --enable</tt>\ntai\n<tt>   $PROGNAME --once</tt>\n"  # changed 2022-Apr-06
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
_tr_add2 cal_info2              "<b>Offline</b> asentaa Xfce-työpöydän ja EndeavourOS-teeman.\nNettiyhteyttä ei tarvita.\n\n"
_tr_add2 cal_info3              "<b>Online</b> antaa valita asennettavan työpöydän, johon tulee oletusteema.\nNettiyhteys tarvitaan.\n\n"
_tr_add2 cal_info4              "\nHUOM: Tätä julkaisua kehitetään jatkuvasti. Ole hyvä ja auta tekemään siitä parempi raportoimalla mahdolliset virheet.\n"
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
_tr_add2 ins_uptip             "Päivittää tämän sovelluksen ja käynnistää sen uudelleen (käytä jos niin ohjeistetaan)"
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

# 2020-Jul-08:
_tr_add2 nb_tab_owncmdstip          "Ohjeita omien komentojen tekemiseen"

_tr_add2 add_more_apps_akm          "Linux-ytimien manageri"
_tr_add2 add_more_apps_akmtip       "Helppo linux-ytimien asentaja ja tietolähde"

# 2020-Jul-15:
_tr_add2 butt_owncmds_help        "Tutoriaali: Omat komennot"

# 2020-Aug-05:
_tr_add2 butt_owncmds_dnd         "Omat komennot - raahaa${_and}pudota"
_tr_add2 butt_owncmds_dnd_help    "Näytä ikkuna johon voi raahata elementtejä uusille painikkeille"

# 2020-Sep-03:
_tr_add2 ins_reso                 "Vaihda näytön tarkkuus"
_tr_add2 ins_resotip              "Vaihda näytön tarkkuus nyt"

# 2020-Sep-08:
_tr_add2 add_more_apps_arch          "Selaa kaikkia Arch-sovelluksia"
_tr_add2 add_more_apps_aur           "Selaa kaikkia AUR-sovelluksia"
_tr_add2 add_more_apps_done1_text    "Ehdotetut sovellukset on jo asennettu$_exclamation"
_tr_add2 add_more_apps_done2_text    "tai selaa kaikkia Arch- ja AUR-sovelluksia"
_tr_add2 add_more_apps_done2_tip1    "Käytä asentamiseen ohjelmaa 'pacman' tai 'yay'"
_tr_add2 add_more_apps_done2_tip2    "Käytä asentamiseen ohjelmaa 'yay'"

# 2020-Sep-11:
_tr_add2 after_install_ew2      "Valitse yksi EndeavourOS:n taustakuvista"  # oli: "EndeavourOS:n taustakuva (valitse)"
_tr_add2 after_install_ewtip2   "Taustakuvien valitsin"                     # oli: "Valitse taustakuva EndeavourOS:n kuvien joukosta"

# 2020-Sep-15:
#    IMPORTANT NOTE:
#       - line 71:  changed text of 'after_install_ew'
#       - line 72:  changed text of 'after_install_ewtip'
#       - line 249: changed text of 'after_install_ew2'
#       - line 250: changed text of 'after_install_ewtip2'

# 2020-Oct-23:
_tr_add2 updt_update_check        "päivitysten tarkistus"
_tr_add2 updt_searching           "Etsitään"
_tr_add2 updt_for_updates         "päivityksiä"
_tr_add2 updt_failure             "virhe$_exclamation"
_tr_add2 updt_nothing_todo        "ei mitään tehtävää"
_tr_add2 updt_press_enter         "Paina ENTER-näppäintä sulkeaksesi tämän ikkunan"

# 2020-Oct-24:
#    IMPORTANT NOTE:
#       - line 244: changed text of 'add_more_apps_done2_text'

# 2020-Dec-11:
_tr_add2 after_install_pacdiff_tip "Hallitse tiedostoja pacnew, pacorig $_and pacsave sovelluksilla pacdiff $_and"

# 2021-Apr-07:
_tr_add2 after_install_conf           "Asetuksia ohjelmalle"                             # a starting verb on a sentence "Configure eos-update-notifier"
_tr_add2 after_install_more_wall      "Lataa lisää EndeavourOS-taustakuvia"
_tr_add2 after_install_more_wall_tip  "Lataa EndeavourOS:n aiempia ja yhteisön tekemiä taustakuvia"
_tr_add2 after_install_info           "tietoa"                           # last word on a sentence, means just any information

_tr_add2 butt_softnews                "Ohjelmistouutisia"
_tr_add2 butt_softnews_tip            "Tärkeitä uutisia EndeavourOS:n ohjelmistosta"

_tr_add2 install_community            "Asenna yhteisömme kanssa tehty julkaisu"
_tr_add2 install_community_tip        "Valitse haluamasi yhteisöjulkaisu (huomaa: internet-yhteys tarvitaan)"

# 2021-May-01
_tr_add2 ins_syslog                   "Kuinka saan järjestelmän lokit"
_tr_add2 ins_syslogtip                "Ohjeet kuinka saan järjestelmälokit luotua kun tarvitsen apua"
_tr_add2 ins_logtool                  "Luo lokit ongelmatilanteessa"
_tr_add2 ins_logtooltip               "Luo ja jakaa tarvittavat lokit kun haluat apua ongelman selvittämiseksi"

# 2021-May-20
_tr_add2 nb_tab_DailyAssistant       "Apuri"
_tr_add2 daily_assistant_text        "Työkaluja hyödyllisiin ja/tai usein tehtäviin asioihin"
_tr_add2 after_install_itab          "Valitse oletuksena näkyvä välilehti"
_tr_add2 after_install_itab_tip      "Asettaa välilehden joka näkyy aina kun Welcome käynnistetään"

# 2021-Jun-08
_tr_add2 daily_assist_apps           "Sovellukset luokiteltuina"
_tr_add2 daily_assist_apps_tip       "Sovellukset lajiteltu luokituksen mukaan"

_tr_add2 after_install_vbox1         "Käynnistä VirtualBox Guest -toiminnot"
_tr_add2 after_install_vbox2         "Käynnistääksesi VirtualBox Guest -toiminnot, mene <b>AfterInstall</b> välilehdelle ja klikkaa painiketta "

# 2021-Jun-17
_tr_add2 after_install_r8168         "Ethernet-ongelmia$_question Vaihda ajuriksi r8168 tai r8169$_exclamation"   # changed 2021-Dec-14 !!
_tr_add2 after_install_r8168_tip     "Vaihda langallisen netin ajuri (uudelleenkäynnistys voidaan tarvita)"       # changed 2021-Dec-14 !!

# 2021-Oct-08
_tr_add2 daily_assist_DEinfo         "lisätietoa"                                      # assume prefix "DE:", e.g.: "Xfce: info"
_tr_add2 daily_assist_DEinfo_tip     "lisätietoa tästä työpöydästä/ikkunamanagerista"  # assume prefix "DE:", e.g.: "Xfce: more information ..."

# 2022-Feb-16
_tr_add2 add_more_apps_qs            "Valitse ja asenna suosittuja sovelluksia"        # runs eos-quickstart
_tr_add2 add_more_apps_qstip         "Valitse ja asenna joukosta suosittuja sovelluksia"

# 2022-Mar-21
_tr_add2 ins_blue_notes              "Bluetooth-tietoja"
_tr_add2 ins_blue_notes_tip          "Tietoja bluetooth:n ottamisesta käyttöön"

# 2022-Mar-27
_tr_add2 after_install_fw            "Tietoa palomuurista"
_tr_add2 after_install_fwtip         "Katsaus oletuksena asennettuun palomuuriin"

# 2022-Mar-30
_tr_add2 ins_custom                  "Asennuksen mukauttamisesta"
_tr_add2 ins_custom_tip              "Miten asennusta ja asennustulosta voi muokata"

# 2022-Jul-15
_tr_add2 daily_assist_anews          "Viimeisimmät Arch-uutiset"
_tr_add2 daily_assist_anewstip       "Viimeisimmät Arch-uutiset selaimessa"

# 2022-Sep-25
_tr_add2 nb_nofify_user1             "Tärkeitä uutisia saatavilla päivämäärällä"
_tr_add2 nb_nofify_user2             "Klikkaa nappia"                                  # Software News
_tr_add2 nb_nofify_user3             "tämän ikkunan vasemmassa alalaidassa."

