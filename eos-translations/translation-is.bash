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

# English:

### First some useful definitions:

_tr_lang=is            # required helper variable for _tr_add2

# Help with some special characters (HTML). Yad has problems without them:
_exclamation='&#33;'   # '!'
_and='&#38;'           # '&'
_question='&#63;'      # '?'


###################### Now the actual strings to be translated: ######################
# func   <placeholder>         "string"

_tr_add2 welcome_disabled      "$PRETTY_PROGNAME appið er óvirkt. Til að starta því hvort sem er, notið valmöguleika --enable (tímabundið: --once)."  # changed 2022-Feb-21

_tr_add2 butt_later            "Sjáumst síðar"
_tr_add2 butt_latertip         "Halda $PRETTY_PROGNAME virkjuðu"

_tr_add2 butt_noshow           "Ekki sýna mér þetta aftur"
_tr_add2 butt_noshowtip        "Afvirkja $PRETTY_PROGNAME"

_tr_add2 butt_help             "Hjálp"


_tr_add2 nb_tab_INSTALL        "SETJA UPP"
_tr_add2 nb_tab_GeneralInfo    "Almennar upplýsingar"
_tr_add2 nb_tab_AfterInstall   "Eftir uppsetningu"
_tr_add2 nb_tab_AddMoreApps    "Bæta við öppum"


_tr_add2 after_install_text    "Verkefni eftir uppsetningu"

_tr_add2 after_install_um      "Uppfæra rekla"
_tr_add2 after_install_umtip   "Uppfæra reklalista fyrir kerfis uppfærslur"

_tr_add2 after_install_us      "Uppfæra kerfið"
_tr_add2 after_install_ustip   "Uppfæra hugbúnað kerfis"

_tr_add2 after_install_dsi     "Greina kerfis vandamál"
_tr_add2 after_install_dsitip  "Greina hvaða hugsamlega vandamál í kerfispökkum eða annarsstaðar"

_tr_add2 after_install_etl     "Nýjasta EndeavourOS$_question"
_tr_add2 after_install_etltip  "Sýna hvað á að gera til að koma kerfinu þínu á nýjasta EndeavourOS staðalinn"

_tr_add2 after_install_cdm     "Breyta um skjástjóra"
_tr_add2 after_install_cdmtip  "Nota annan skjástjóra"

_tr_add2 after_install_ew      "Sjálfgefið EndeavourOS veggfóður"      # was: "EndeavourOS wallpaper"
_tr_add2 after_install_ewtip   "Endurstilla á sjálfgefið veggfóður"     # was: "Change desktop wallpaper to EOS default"


_tr_add2 after_install_pm      "Pakkastjórn"
_tr_add2 after_install_pmtip   "Hvernig á að stjóna pökkum með pacman"

_tr_add2 after_install_ay      "AUR $_and yay$_exclamation"
_tr_add2 after_install_aytip   "Upplýsingar um Arch User Repository og yay"

_tr_add2 after_install_hn      "Vélbúnaður og Net"
_tr_add2 after_install_hntip   "Fáðu vélbúnaðinn þinn til að virka"

_tr_add2 after_install_bt      "Blátönn"
_tr_add2 after_install_bttip   "Ráð varðandi Blátönn advice"

_tr_add2 after_install_nv      "Notendur NVIDIA $_exclamation"
_tr_add2 after_install_nvtip   "Notið uppsetningaforrit NVIDIA"

_tr_add2 after_install_ft      "Spjallborð fyrir ábendingar"
_tr_add2 after_install_fttip   "Hjálpaðu okkur að hjálpa þér$_exclamation"


_tr_add2 general_info_text     "Rataðu um vefsíðu EndeavourOS$_exclamation"

_tr_add2 general_info_ws       "Vefsíða"

_tr_add2 general_info_wi       "Wiki"
_tr_add2 general_info_witip    "Valdar greinar"

_tr_add2 general_info_ne       "Fréttir"
_tr_add2 general_info_netip    "Fréttir og greinar"

_tr_add2 general_info_fo       "Spjallborð"
_tr_add2 general_info_fotip    "Spurðu, gerðu athugasemdir og spjallaðu inn á vinalegu spjallborði okkar$_exclamation"

_tr_add2 general_info_do       "Styrkja"
_tr_add2 general_info_dotip    "Hjálpaðu okkur að halda EndeavourOS gangandi"

_tr_add2 general_info_ab       "Um $PRETTY_PROGNAME"
_tr_add2 general_info_abtip    "Fleiri upplýsingar um þetta app"


_tr_add2 add_more_apps_text    "Settu upp vinsæl öpp"

_tr_add2 add_more_apps_lotip   "Office tæki (libreoffice-fresh)"

_tr_add2 add_more_apps_ch      "Chromium vafri"
_tr_add2 add_more_apps_chtip   "Vafri"

_tr_add2 add_more_apps_fw      "Eldveggur"
_tr_add2 add_more_apps_fwtip   "Gufw eldveggur"

_tr_add2 add_more_apps_bt      "Blátönn (blueberry) fyrir Xfce"
_tr_add2 add_more_apps_bt_bm   "Blátönn (blueman) fyrir Xfce"


####################### NEW STUFF AFTER THIS LINE:

_tr_add2 settings_dis_contents   "Til að keyra $PRETTY_PROGNAME aftur, opnaðu skjáhermi og keyrðu:\n<tt>   $PROGNAME --enable</tt>\nor\n<tt>   $PROGNAME --once</tt>\n"  # slightly changed 2021-Dec-21; changed again 2022-Apr-06
_tr_add2 settings_dis_text       "Endurvirkja $PRETTY_PROGNAME:"
_tr_add2 settings_dis_title      "Hvernig á að endurvirkja $PRETTY_PROGNAME"
_tr_add2 settings_dis_butt       "Ég man"
_tr_add2 settings_dis_buttip     "Ég lofa"

_tr_add2 help_butt_title         "$PRETTY_PROGNAME Hjálp"
_tr_add2 help_butt_text          "Fleiri upplýsingar um $PRETTY_PROGNAME appið"

_tr_add2 dm_title                "Veldu skjástjóra"
_tr_add2 dm_col_name1            "Velja"
_tr_add2 dm_col_name2            "Nafn skjástóra"

_tr_add2 dm_reboot_required      "Það þarf að endurræsa svo að breytingarnar taki gildi."
_tr_add2 dm_changed              "Skjástjóra breytt í: "
_tr_add2 dm_failed               "Mistókst að breyta skjástjóra."
_tr_add2 dm_warning_title        "Aðvörun"

_tr_add2 install_installer       "Uppsetningarforrit"
_tr_add2 install_already         "Þegar uppsett"
_tr_add2 install_ing             "Set upp"
_tr_add2 install_done            "Búið."

_tr_add2 sysup_no                "Engar uppfærslur."
_tr_add2 sysup_check             "Athuga með hugbúnaða uppfærslur..."

_tr_add2 issues_title            "Vandamál í pakka greint"
_tr_add2 issues_grub             "MIKILVÆGT: það þarf að endurgera boot menu handvirkt."
_tr_add2 issues_run              "Keyri skipun:"
_tr_add2 issues_no               "Engin mikilvæg kerfisvandamál fundust."

_tr_add2 cal_noavail            "Ekki í boði: "        # installer program
_tr_add2 cal_warn               "Aðvörun"
_tr_add2 cal_info1              "Þetta er þróunarútgáfa samfélagsins.\n\n"                                   # specials needed!
_tr_add2 cal_info2              "<b>Ótengd</b> aðferð færir þér Xfce skjáborð með EndeavourOS þemu.\nInternet tenging er ekki þörf.\n\n"
_tr_add2 cal_info3              "<b>Tengd</b> aðferð gefur þér möguleika á að velja þitt skjáborð, með grunn þemu.\nInternet tengingar er krafist.\n\n"
_tr_add2 cal_info4              "Vinsamlegast ath: Þessi útgáfa er í þróun, vinsamlegast hjálpið okkur með því að tilkynna vandamál.\n"
_tr_add2 cal_choose             "Veldu aðferð uppsetningar"
_tr_add2 cal_method             "Aðferð"
_tr_add2 cal_nosupport          "$PROGNAME: óstuddur hamur: "
_tr_add2 cal_nofile             "$PROGNAME: nauðsinleg skrá ekki til: "
_tr_add2 cal_istarted           "Uppsetning byrjuð"
_tr_add2 cal_istopped           "Uppsetningu lokið"

_tr_add2 tail_butt              "Lokaðu þessum glugga"
_tr_add2 tail_buttip            "Lokaðu bara þessum glugga"


_tr_add2 ins_text              "Set upp EndeavourOS á disk"
_tr_add2 ins_start             "Byrja uppsetningaforrit"
_tr_add2 ins_starttip          "Starta EndeavourOS uppsetningaforritinu með villuleitar skjáhermi"
_tr_add2 ins_up                "Uppfærðu þessi öpp$_exclamation"
_tr_add2 ins_uptip             "Uppfærðu þetta app og endurræstu það"
_tr_add2 ins_keys              "Frumstilli pacman lykla"
_tr_add2 ins_keystip           "Frumstilli pacman lykla"
_tr_add2 ins_pm                "Diska skipta stjóri"
_tr_add2 ins_pmtip             "Gparted leyfir skoðun og stjórnun og uppröðun á hólfum disks"
_tr_add2 ins_rel               "Nýjustu útgáfu uplýsingar"
_tr_add2 ins_reltip            "Fleiri upplýsingar um nýjustu útgáfu"
_tr_add2 ins_tips              "Uppsetninga ráð"
_tr_add2 ins_tipstip           "Uppsetninga ráð"
_tr_add2 ins_trouble           "Vandamála leit"
_tr_add2 ins_troubletip        "Björgun kerfis"

_tr_add2 after_install_us_from    "Uppfærslur frá"                            # AUR or upstream
_tr_add2 after_install_us_el      "Aukin réttindi áskilin."
_tr_add2 after_install_us_done    "uppfærslur búnar."
_tr_add2 after_install_us_fail    "uppfærslur mistókust$_exclamation"

# 2020-May-14:

_tr_add2 nb_tab_UsefulTips     "Ráð"
_tr_add2 useful_tips_text      "Nothæf ráð"

# 2020-May-16:

_tr_add2 butt_changelog        "Breytingaskrá"
_tr_add2 butt_changelogtip     "Sýna breytingaskrá fyrir Welcome"

_tr_add2 after_install_themevan      "Xfce grunn þema"
_tr_add2 after_install_themevantip   "Nota grunn Xfce þemu"

_tr_add2 after_install_themedef     "Xfce EndeavourOS grunn þema"
_tr_add2 after_install_themedeftip  "Nota EndeavourOS grunn Xfce þemu"

# 2020-Jun-28:
_tr_add2 after_install_pclean       "Stilla pakka hreinsun"
_tr_add2 after_install_pcleantip    "Stilla hreinsun skyndiminn pakkaþjónustu"

# 2020-Jul-04:
_tr_add2 nb_tab_OwnCommands         "Persónulegar skipanir"                   # modified 2020-Jul-08
_tr_add2 nb_tab_owncmds_text        "Sérsniðnar skipanir"               # modified 2020-Jul-08

# 2020-Jul-08:
_tr_add2 nb_tab_owncmdstip          "Hjálp við að bæta við persónulegar skipanir"

_tr_add2 add_more_apps_akm          "Kjarna stjórnandi"
_tr_add2 add_more_apps_akmtip       "Lítill Linux kjarna stjórnandi og upplýsinga gjafi"

# 2020-Jul-15:
_tr_add2 butt_owncmds_help        "Leiðbeiningar: Persónulegar skipanir"

# 2020-Aug-05:
_tr_add2 butt_owncmds_dnd         "Persónulegar skipanir draga${_and}sleppa"
_tr_add2 butt_owncmds_dnd_help    "Sýna glugga þar sem á að hluti fyrir nýja takka"

# 2020-Sep-03:
_tr_add2 ins_reso                 "Breyta skjáupplausn"
_tr_add2 ins_resotip              "Breyta skjáupplausn núna"

# 2020-Sep-08:
_tr_add2 add_more_apps_arch          "Skoða alla Arch pakka"
_tr_add2 add_more_apps_aur           "Skoða alla AUR pakka"
_tr_add2 add_more_apps_done1_text    "Öpp sem mælt er með þegar uppsett$_exclamation"
_tr_add2 add_more_apps_done2_text    "eða skoða alla Arch og AUR pakka"
_tr_add2 add_more_apps_done2_tip1    "Til að setja upp, notaðu 'pacman' eða 'yay'"
_tr_add2 add_more_apps_done2_tip2    "Til að setja upp, notaðu 'yay'"

# 2020-Sep-11:
_tr_add2 after_install_ew2        "Veldu eitt af EndeavourOS veggfóðrum"   # was: "EndeavourOS wallpaper (choose)"
_tr_add2 after_install_ewtip2     "Veggfóðurs veljari"                          # was: "Choose from EndeavourOS default wallpapers"

# 2020-Sep-15:
#    IMPORTANT NOTE:
#       - line 71:  changed text of 'after_install_ew'
#       - line 72:  changed text of 'after_install_ewtip'
#       - line 249: changed text of 'after_install_ew2'
#       - line 250: changed text of 'after_install_ewtip2'

# 2020-Oct-23:
_tr_add2 updt_update_check        "uppfærslu tékk"
_tr_add2 updt_searching           "Leita"
_tr_add2 updt_for_updates         "eftir uppfærslum"
_tr_add2 updt_failure             "mistókst$_exclamation"
_tr_add2 updt_nothing_todo        "það er ekkert að gera"
_tr_add2 updt_press_enter         "Ýttu á ENTER til að loka þessum glugga"

# 2020-Oct-24:
#    IMPORTANT NOTE:
#       - line 244: changed text of 'add_more_apps_done2_text'

# 2020-Dec-11:
_tr_add2 after_install_pacdiff_tip "Stjórna pacnew, pacorig $_and pacsave skjölum með pacdiff $_and"

# 2021-Apr-07:
_tr_add2 after_install_conf           "Stilla"                             # a starting verb on a sentence "Configure eos-update-notifier"
_tr_add2 after_install_more_wall      "Hlaða niður fleiri EndeavourOS veggfóðrum"
_tr_add2 after_install_more_wall_tip  "Hlaða niður gömlum EndeavourOS og samfélags veggfóðrum"
_tr_add2 after_install_info           "upplýsingar"                           # last word on a sentence, means just any information

_tr_add2 butt_softnews                "Hugbúnaðar fréttir"
_tr_add2 butt_softnews_tip            "Mikilvægar fréttir um hugbúnað EndeavourOS"

_tr_add2 install_community            "Setja upp samfélags útgáfur"
_tr_add2 install_community_tip        "Safn samfélags útgáfa (nettengingar krafist)"    # changed 2021-Oct-23

# 2021-May-01
_tr_add2 ins_syslog                   "Hvernig á að deila kerfisdagbók"
_tr_add2 ins_syslogtip                "Útskýrir hvernig þú getur deilt kerfisdagbók þegar þig vantar hjálp"
_tr_add2 ins_logtool                  "Dagbók fyrir bilanagreiningu"
_tr_add2 ins_logtooltip               "Velja, búa til og deila bilanagreininga dagbók þegar þig vantar hjálp"

# 2021-May-20
_tr_add2 nb_tab_DailyAssistant       "Aðstoðarmaður"
_tr_add2 daily_assistant_text        "Verkfæri fyrir gagnleg og/eða dagleg verkefni"
_tr_add2 after_install_itab          "Veldu byrjunar Welcome flipann"
_tr_add2 after_install_itab_tip      "Setur flipann sem Welcome sýnir þegar það startar"

# 2021-Jun-08
_tr_add2 daily_assist_apps           "Forrita flokkur"
_tr_add2 daily_assist_apps_tip       "Forritum raðað eftir flokkum"

_tr_add2 after_install_vbox1         "Virkja tól gesta sýndarbox"
_tr_add2 after_install_vbox2         "Til að virkja tól gesta sýndarboxsins, veldu <b>AfterInstall</b> flipann og ýttu á takkann"

# 2021-Jun-17
_tr_add2 after_install_r8168         "Vandamál með tengt net$_question Skiptu á milli r8168 og r8169 dræver$_exclamation"    # changed 2021-Dec-14 !!
_tr_add2 after_install_r8168_tip     "Skipta á milli r8168 og r8169 drævera (gæti þurft að endurræsa)"           # changed 2021-Dec-14 !!

# 2021-Oct-08
_tr_add2 daily_assist_DEinfo         "Upplýsingar"                                         # assume prefix "DE:", e.g.: "Xfce: information"
_tr_add2 daily_assist_DEinfo_tip     "Fleiri upplýsingar um þetta skjáborð/skjástýringu"  # assume prefix "DE:", e.g.: "Xfce: more information ..."

# 2022-Feb-16
_tr_add2 add_more_apps_qs            "Veldu og settu upp vinsæl öpp"                      # runs eos-quickstart
_tr_add2 add_more_apps_qstip         "Veldu og settu upp vinsæl öpp"

# 2022-Mar-21
_tr_add2 ins_blue_notes              "Blátannar nótur"
_tr_add2 ins_blue_notes_tip          "Nótur um uppsetningu blátannar"

# 2022-Mar-27
_tr_add2 after_install_fw            "Upplýsingar um eldvegg"
_tr_add2 after_install_fwtip         "Upplýsingar um sjálfgefinn eldvegg"

# 2022-Mar-30
_tr_add2 ins_custom                  "Sérsníða uppsetningar ferlið"
_tr_add2 ins_custom_tip              "Hvernig á að sérsníða uppsetningar ferlið"

# 2022-Jul-15
_tr_add2 daily_assist_anews          "Nýjustu Arch fréttirnar"
_tr_add2 daily_assist_anewstip       "Sýna nýjustu Arch fréttirnar í vafra"

# 2022-Sep-25
_tr_add2 nb_nofify_user1             "Það eru mikilvægar upplýsingar á"
_tr_add2 nb_nofify_user2             "Vinsamlegast ýttu á"                                  # Software News
_tr_add2 nb_nofify_user3             "hnappinn í neðra vinstra horninu á þessum glugga."
