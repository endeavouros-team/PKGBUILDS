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
#
# Positional parameter %%s is supported inside a "string". Note that %%s is like %s in printf.

# English:

### First some useful definitions:

_tr_lang=is            # required helper variable for _tr_add2

# Help with some special characters (HTML). Yad has problems without them:
_exclamation='&#33;'   # '!'
_and='&#38;'           # '&'
_question='&#63;'      # '?'


###################### Now the actual strings to be translated: ######################
# func   <placeholder>         "string"

_tr_add2 welcome_disabled      "$PRETTY_PROGNAME forritið er óvirkt. Til að ræsa það samt, má nota valkostinn --enable (tímabundið: --once)."  # changed 2022-Feb-21

_tr_add2 butt_later            "Sjáumst síðar"
_tr_add2 butt_latertip         "Halda $PRETTY_PROGNAME virku"

_tr_add2 butt_noshow           "Ekki birta þetta aftur"
_tr_add2 butt_noshowtip        "Gera $PRETTY_PROGNAME óvirkt"

_tr_add2 butt_help             "Hjálp"


_tr_add2 nb_tab_INSTALL        "SETJA UPP"
_tr_add2 nb_tab_GeneralInfo    "Almennar upplýsingar"
_tr_add2 nb_tab_AfterInstall   "Eftir uppsetningu"
_tr_add2 nb_tab_AddMoreApps    "Bæta við forritum"


_tr_add2 after_install_text    "Verkefni eftir uppsetningu"

_tr_add2 after_install_um      "Uppfæra rekla"
_tr_add2 after_install_umtip   "Uppfæra reklalista fyrir kerfisuppfærslur"

_tr_add2 after_install_us      "Uppfæra kerfið"
_tr_add2 after_install_ustip   "Uppfæra hugbúnað kerfisins"

_tr_add2 after_install_dsi     "Greina kerfisvandamál"
_tr_add2 after_install_dsitip  "Greina möguleg vandamál í kerfispökkum eða annarsstaðar"

_tr_add2 after_install_etl     "Nýjasta EndeavourOS$_question"
_tr_add2 after_install_etltip  "Sýna hvað þarf að gera til að koma kerfinu þínu í nýjustu útgáfu EndeavourOS"

_tr_add2 after_install_cdm     "Skipta um skjástýringu"
_tr_add2 after_install_cdmtip  "Nota annað skjástjórnunarkerfi"

_tr_add2 after_install_ew      "Sjálfgefinn EndeavourOS-bakgrunnur"      # was: "EndeavourOS wallpaper"
_tr_add2 after_install_ewtip   "Endurstilla á sjálfgefinn bakgrunn"     # was: "Change desktop wallpaper to EOS default"


_tr_add2 after_install_pm      "Pakkastýring"
_tr_add2 after_install_pmtip   "Hvernig á að stjórna pökkum með pacman"

_tr_add2 after_install_ay      "AUR $_and yay$_exclamation"
_tr_add2 after_install_aytip   "Upplýsingar um Arch User Repository og yay"

_tr_add2 after_install_hn      "Vélbúnaður og netkerfi"
_tr_add2 after_install_hntip   "Fáðu vélbúnaðinn þinn til að virka"

_tr_add2 after_install_bt      "Blátönn/Bluetooth"
_tr_add2 after_install_bttip   "Ráð varðandi Bluetoot-tengingar"

_tr_add2 after_install_nv      "Notendur NVIDIA $_exclamation"
_tr_add2 after_install_nvtip   "Notið uppsetningaforrit NVIDIA"

_tr_add2 after_install_ft      "Spjallborð fyrir ábendingar"
_tr_add2 after_install_fttip   "Hjálpaðu okkur að hjálpa þér$_exclamation"


_tr_add2 general_info_text     "Finndu það sem þú þarft á vefsvæði EndeavourOS$_exclamation"

_tr_add2 general_info_ws       "Vefsvæði"

_tr_add2 general_info_wi       "Wiki"
_tr_add2 general_info_witip    "Valdar greinar"

_tr_add2 general_info_ne       "Fréttir"
_tr_add2 general_info_netip    "Fréttir og greinar"

_tr_add2 general_info_fo       "Spjallborð"
_tr_add2 general_info_fotip    "Spurðu, gerðu athugasemdir og spjallaðu inn á vinalega spjallborðinu okkar$_exclamation"

_tr_add2 general_info_do       "Styrkja"
_tr_add2 general_info_dotip    "Hjálpaðu okkur að halda EndeavourOS gangandi"

_tr_add2 general_info_ab       "Um $PRETTY_PROGNAME"
_tr_add2 general_info_abtip    "Fleiri upplýsingar um þetta forrit"


_tr_add2 add_more_apps_text    "Settu upp vinsæl forrit"

_tr_add2 add_more_apps_lotip   "Skrifstofuforrit (libreoffice-fresh)"

_tr_add2 add_more_apps_ch      "Chromium-vafrinn"
_tr_add2 add_more_apps_chtip   "Vafri"

_tr_add2 add_more_apps_fw      "Eldveggur"
_tr_add2 add_more_apps_fwtip   "Gufw-eldveggur"

_tr_add2 add_more_apps_bt      "Blátönn (blueberry) fyrir Xfce"
_tr_add2 add_more_apps_bt_bm   "Blátönn (blueman) fyrir Xfce"


####################### NEW STUFF AFTER THIS LINE:

_tr_add2 settings_dis_contents   "Til að keyra $PRETTY_PROGNAME aftur, opnaðu skjáhermi og keyrðu:\n<tt>   $PROGNAME --enable</tt>\nor\n<tt>   $PROGNAME --once</tt>\n"  # slightly changed 2021-Dec-21; changed again 2022-Apr-06
_tr_add2 settings_dis_text       "Endurvirkja $PRETTY_PROGNAME:"
_tr_add2 settings_dis_title      "Hvernig á að endurvirkja $PRETTY_PROGNAME"
_tr_add2 settings_dis_butt       "Ég man"
_tr_add2 settings_dis_buttip     "Ég lofa"

_tr_add2 help_butt_title         "$PRETTY_PROGNAME Hjálp"
_tr_add2 help_butt_text          "Fleiri upplýsingar um $PRETTY_PROGNAME forritið"

_tr_add2 dm_title                "Veldu skjástýringu"
_tr_add2 dm_col_name1            "Velja"
_tr_add2 dm_col_name2            "Heiti skjástýringar"

_tr_add2 dm_reboot_required      "Nauðsynlegt er að endurræsa svo að breytingarnar taki gildi."
_tr_add2 dm_changed              "Skjástýringu breytt í: "
_tr_add2 dm_failed               "Mistókst að breyta skjástýringu."
_tr_add2 dm_warning_title        "Aðvörun"

_tr_add2 install_installer       "Uppsetningarforrit"
_tr_add2 install_already         "Þegar uppsett"
_tr_add2 install_ing             "Set upp"
_tr_add2 install_done            "Lokið."

_tr_add2 sysup_no                "Engar uppfærslur."
_tr_add2 sysup_check             "Athuga með hugbúnaðaruppfærslur..."

_tr_add2 issues_title            "Vandamál fannst í pakka"
_tr_add2 issues_grub             "MIKILVÆGT: það þarf að endurgera boot-ræsivalmyndina handvirkt."
_tr_add2 issues_run              "Keyri skipanir:"
_tr_add2 issues_no               "Engin mikilvæg kerfisvandamál fundust."

_tr_add2 cal_noavail            "Ekki í boði: "        # installer program
_tr_add2 cal_warn               "Aðvörun"
_tr_add2 cal_info1              "Þetta er þróunarútgáfa samfélagsins.\n\n"                                   # specials needed!
_tr_add2 cal_info2              "<b>Ónettengd</b> uppsetning færir þér Xfce skjáborð með EndeavourOS þemu.\nEkki er þörf fyrir internettengingu.\n\n"
_tr_add2 cal_info3              "<b>Nettengd</b> uppsetning gefur þér kost á að velja skjáborðsumhverfi.\nInternettenging er nauðsynleg.\n\n"
_tr_add2 cal_info4              "Athugaðu: Þessi útgáfa er í þróun, vinsamlegast hjálpaðu okkur með því að tilkynna vandamál.\n"
_tr_add2 cal_info5              "\nEftir uppsetningu er mælt með því að uppfæra kerfið.\n\n"
_tr_add2 cal_info6              "\nEftir uppsetningu er kerfið af nýjustu útgáfu.\n\n"
_tr_add2 cal_choose             "Veldu aðferð uppsetningar"
_tr_add2 cal_method             "Aðferð"
_tr_add2 cal_nosupport          "$PROGNAME: óstuddur hamur: "
_tr_add2 cal_nofile             "$PROGNAME: nauðsynleg skrá ekki til: "
_tr_add2 cal_istarted           "Uppsetning hafin"
_tr_add2 cal_istopped           "Uppsetningu lokið"

_tr_add2 tail_butt              "Loka þessum glugga"
_tr_add2 tail_buttip            "Loka aðeins þessum glugga"


_tr_add2 ins_text              "Setja EndeavourOS upp á disk"
_tr_add2 ins_start             "Ræsa uppsetningaforrit"
_tr_add2 ins_starttip          "Setja í gang EndeavourOS-uppsetningaforritið (velja milli algengustu skjáborða)"
_tr_add2 ins_up                "Uppfæra þett forrit$_exclamation"
_tr_add2 ins_uptip             "Uppfærir þetta forrit og endurræsir það"
_tr_add2 ins_keys              "Frumstilla pacman-lykla"
_tr_add2 ins_keystip           "Frumstillir pacman-auðkennislykla"
_tr_add2 ins_pm                "Disksneiðingarstjóri"
_tr_add2 ins_pmtip             "Gparted gerir kleift að skoða og skipuleggja á uppskiptingar disks"
_tr_add2 ins_rel               "Nýjustu útgáfuuplýsingar"
_tr_add2 ins_reltip            "Nánari upplýsingar um nýjustu útgáfuna"
_tr_add2 ins_tips              "Ábendingar fyrir uppsetningu"
_tr_add2 ins_tipstip           "Góð ráð og ábendingar varðandi uppsetningar"
_tr_add2 ins_trouble           "Leit að vandamálum"
_tr_add2 ins_troubletip        "Björgun kerfis"

_tr_add2 after_install_us_from    "Uppfærslur frá"                            # AUR or upstream
_tr_add2 after_install_us_el      "Auknar heimildir nauðsynlegar."
_tr_add2 after_install_us_done    "uppfærslu lokið."
_tr_add2 after_install_us_fail    "uppfærsla mistókust$_exclamation"

# 2020-May-14:

_tr_add2 nb_tab_UsefulTips     "Ábendingar"
_tr_add2 useful_tips_text      "Notadrjúg ráð"

# 2020-May-16:

_tr_add2 butt_changelog        "Breytingaskrá"
_tr_add2 butt_changelogtip     "Sýna breytingaskrá fyrir Welcome-kynningarforritið"

_tr_add2 after_install_themevan      "Xfce grunnþema"
_tr_add2 after_install_themevantip   "Nota grunnþema Xfce"

_tr_add2 after_install_themedef     "Sjálfgefið Xfce-þema EndeavourOS"
_tr_add2 after_install_themedeftip  "Nota sjáfgefið Xfce-þema fyrir EndeavourOS"

# 2020-Jun-28:
_tr_add2 after_install_pclean       "Stilla hreinsun pakka"
_tr_add2 after_install_pcleantip    "Stilla þjónustu sem hreinsar skyndiminni pakka"

# 2020-Jul-04:
_tr_add2 nb_tab_OwnCommands         "Persónulegar skipanir"                   # modified 2020-Jul-08
_tr_add2 nb_tab_owncmds_text        "Sérsniðnar skipanir"               # modified 2020-Jul-08

# 2020-Jul-08:
_tr_add2 nb_tab_owncmdstip          "Aðstoð við að bæta við persónulegum skipunum"

_tr_add2 add_more_apps_akm          "Kjarnastýring"
_tr_add2 add_more_apps_akmtip       "Lítil stýring og upplýsingagjafi fyrir Linux-kjarna"

# 2020-Jul-15:
_tr_add2 butt_owncmds_help        "Leiðbeiningar: Persónulegar skipanir"

# 2020-Aug-05:
_tr_add2 butt_owncmds_dnd         "Persónulegar skipanir draga${_and}sleppa"
_tr_add2 butt_owncmds_dnd_help    "Birta glugga þar sem hægt er að draga inn gagnaatriði fyrir nýja hnappa"

# 2020-Sep-03:
_tr_add2 ins_reso                 "Breyta skjáupplausn"
_tr_add2 ins_resotip              "Breyta skjáupplausn núna"

# 2020-Sep-08:
_tr_add2 add_more_apps_arch          "Skoða alla Arch-pakka"
_tr_add2 add_more_apps_aur           "Skoða alla AUR-pakka"
_tr_add2 add_more_apps_done1_text    "Forrit sem mælt er með eru þegar uppsett$_exclamation"
_tr_add2 add_more_apps_done2_text    "eða skoða alla Arch og AUR-pakka"
_tr_add2 add_more_apps_done2_tip1    "Til að setja upp, notaðu 'pacman' eða 'yay'"
_tr_add2 add_more_apps_done2_tip2    "Til að setja upp, notaðu 'yay'"

# 2020-Sep-11:
_tr_add2 after_install_ew2        "Veldu einn af bakgrunnum EndeavourOS"   # was: "EndeavourOS wallpaper (choose)"
_tr_add2 after_install_ewtip2     "Val á bakgrunnum"                          # was: "Choose from EndeavourOS default wallpapers"

# 2020-Sep-15:
#    IMPORTANT NOTE:
#       - line 71:  changed text of 'after_install_ew'
#       - line 72:  changed text of 'after_install_ewtip'
#       - line 249: changed text of 'after_install_ew2'
#       - line 250: changed text of 'after_install_ewtip2'

# 2020-Oct-23:
_tr_add2 updt_update_check        "athugun uppfærslu"
_tr_add2 updt_searching           "Leita"
_tr_add2 updt_for_updates         "að uppfærslum"
_tr_add2 updt_failure             "mistókst$_exclamation"
_tr_add2 updt_nothing_todo        "það er ekkert að gera"
_tr_add2 updt_press_enter         "Ýttu á ENTER til að loka þessum glugga"

# 2020-Oct-24:
#    IMPORTANT NOTE:
#       - line 244: changed text of 'add_more_apps_done2_text'

# 2020-Dec-11:
_tr_add2 after_install_pacdiff_tip "Stýrðu pacnew, pacorig og pacsave-skrám með pacdiff $_and"

# 2021-Apr-07:
_tr_add2 after_install_conf           "Grunnstilla"                             # a starting verb on a sentence "Configure eos-update-notifier"
_tr_add2 after_install_more_wall      "Sækja fleiri EndeavourOS bakgrunna"
_tr_add2 after_install_more_wall_tip  "Sækja eldri bakgrunna EndeavourOS og frá öðrum notendum"
_tr_add2 after_install_info           "upplýsingar"                           # last word on a sentence, means just any information

_tr_add2 butt_softnews                "Hugbúnaðarfréttir"
_tr_add2 butt_softnews_tip            "Mikilvægar fréttir um hugbúnað í EndeavourOS"

_tr_add2 install_community            "Setja upp samfélagsútgáfur"
_tr_add2 install_community_tip        "Safn samfélagsútgáfa (nettengingar krafist - mest sýndarvélar)"    # changed 2021-Oct-23

# 2021-May-01
_tr_add2 ins_syslog                   "Hvernig er hægt að deila atvikaskrám kerfisins"
_tr_add2 ins_syslogtip                "Útskýrir hvernig þú getur deilt atvikaskrám kerfis þegar þig vantar hjálp"
_tr_add2 ins_logtool                  "Atvikaskrár fyrir bilanagreiningu"
_tr_add2 ins_logtooltip               "Velja, búa til og deila atvikaskrám bilanagreininga þegar þig vantar hjálp"

# 2021-May-20
_tr_add2 nb_tab_DailyAssistant       "Leiðarvísir"
_tr_add2 daily_assistant_text        "Verkfæri fyrir gagnleg og/eða dagleg verkefni"
_tr_add2 after_install_itab          "Veldu upphafsflipa Welcome-kynningarforritsins"
_tr_add2 after_install_itab_tip      "Stillir flipann sem Welcome sýnir þegar það ræsir"

# 2021-Jun-08
_tr_add2 daily_assist_apps           "Flokkar forrita"
_tr_add2 daily_assist_apps_tip       "Forritum raðað eftir flokkum"

_tr_add2 after_install_vbox1         "Virkja VirtualBox gestatól"
_tr_add2 after_install_vbox2         "Til að virkja gestatól VirtualBox-sýndarvéla, veldu <b>AfterInstall</b>-flipann og ýttu á hnappinn"

# 2021-Jun-17
_tr_add2 after_install_r8168         "Vandamál með kapaltengt net$_question Skiptu á milli r8168 og r8169-rekla$_exclamation"    # changed 2021-Dec-14 !!
_tr_add2 after_install_r8168_tip     "Skipta á milli r8168 og r8169-rekla (gæti þurft að endurræsa)"           # changed 2021-Dec-14 !!

# 2021-Oct-08
_tr_add2 daily_assist_DEinfo         "upplýsingar"                                         # assume prefix "DE:", e.g.: "Xfce: information"
_tr_add2 daily_assist_DEinfo_tip     "nánari upplýsingar um þetta skjáborð/skjástýringu"  # assume prefix "DE:", e.g.: "Xfce: more information ..."

# 2022-Feb-16
_tr_add2 add_more_apps_qs            "Veldu og settu upp vinsæl forrit"                      # runs eos-quickstart
_tr_add2 add_more_apps_qstip         "Veldu vinsæl forrit til uppsetningar"

# 2022-Mar-21
_tr_add2 ins_blue_notes              "Punktar um Blátönn/Bluetooth"
_tr_add2 ins_blue_notes_tip          "Punktar um uppsetningu Bluetooth-tengingar"

# 2022-Mar-27
_tr_add2 after_install_fw            "Upplýsingar um eldvegg"
_tr_add2 after_install_fwtip         "Upplýsingar um sjálfgefinn eldvegg"

# 2022-Mar-30
_tr_add2 ins_custom                  "Sérsníða uppsetningarferlið"
_tr_add2 ins_custom_tip              "Hvernig á að sérsníða uppsetningarferlið"

# 2022-Jul-15
_tr_add2 daily_assist_anews          "Nýjustu Arch-fréttirnar"
_tr_add2 daily_assist_anewstip       "Sýnir nýjustu fréttirnar um Arch í vafra"

# 2022-Sep-25
_tr_add2 nb_notify_user1             "Það eru mikilvægar upplýsingar á"
_tr_add2 nb_notify_user2             "Smelltu á"                                  # Software News
_tr_add2 nb_notify_user3             "hnappinn í neðra vinstra horninu á þessum glugga."

# 2023-Feb-20
_tr_add2 ins_customized              "Sækja sérsníðingarskrána þína fyrir uppsetningu (fyrir mjög vana)"
_tr_add2 ins_cust_text               "Gefa URL-slóð á þína sérsniðnu user_commands.bash skrá"
_tr_add2 ins_cust_text2              "Sótta skráin mun koma í stað ~/user_commands.bash"
_tr_add2 ins_cust_text3              "Þetta nýtist best við <b>nettengda</b> uppsetningu"

# 2023-Mar-29
_tr_add2 ins_no_connection           "Athugaðu: sé engin internettenging í boði, verða sumir hnappar faldir eða virka ekki."

# 2023-Aug-25
_tr_add2 ins_pmtip2                  "Disksneiðingarstjórinn gerir kleift að skoða og skipuleggja á uppskiptingar á diskum"

# 2023-Sep-16
_tr_add2 ins_arm_start               "Uppsetningarforrit fyrir EndeavourOS ARM diskmynd"
_tr_add2 ins_arm_starttip            "Hefja uppsetningu á EndeavourOS ARM-útgáfunni"

# 2024-Apr-18
_tr_add2 ins_conn_issue_title        "Hvað næst?"                                                                   # NOTE: '?' works in a yad title!
_tr_add2 ins_conn_issue_text         "Engin internettenging fannst (kannski er þráðlausa WiFi-netið ekki tilbúið${_question})"
_tr_add2 ins_conn_issue_nm1          "Netkerfisstýring"
_tr_add2 ins_conn_issue_nm2          "Ræsir netkerfisstýringuna"
_tr_add2 ins_conn_issue_oi1          "Uppsetning án nettengingar"
_tr_add2 ins_conn_issue_oi2          "Setur upp KDE án tengingar við internetið (mælt er með uppfærslu kerfisins eftir uppsetningu)"
_tr_add2 ins_conn_issue_ex1          "Hætta"
_tr_add2 ins_conn_issue_ex2          "Fara út úr þessu forriti"

# 2024-Apr-20
_tr_add2 ins_start_calamares         "Ræsi calamares"
_tr_add2 ins_please_wait             "Bíddu aðeins..."

# 2024-Dec-05 (see also: 'after_install_us' and 'after_install_ustip' above)
_tr_add2 after_install_usnat         "Uppfæra kerfislæga (native) pakka"
_tr_add2 after_install_usnat_tip     "Uppfærir pakka frá hugbúnaðarsöfnum í /etc/pacman.conf"
_tr_add2 after_install_usnataur      "Uppfæra kerfislæga (native) og AUR-pakka"
_tr_add2 after_install_usnataur_tip  "Uppfærir pakka frá hugbúnaðarsöfnum í /etc/pacman.conf og AUR"
_tr_add2 after_install_ushlp         "Uppfæra kerfislæga (native) og AUR-pakka"
_tr_add2 after_install_ushlp_tip     "Uppfærir pakka frá hugbúnaðarsöfnum í /etc/pacman.conf og AUR með aðstoð AUR-helper"

_tr_add2 after_install_umartip       "Uppfæra lista yfir Arch-spegla áður en pakkar eru uppfærðir"
_tr_add2 after_install_umentip       "Uppfæra lista yfir EndeavourOS-spegla áður en pakkar eru uppfærðir"

# 2024-Dec-06
_tr_add2 after_install_reisub        "REISUB upplýsingar"
_tr_add2 after_install_reisub2       "Virkja REISUB"
_tr_add2 after_install_reisubtip     "REISUB hjálpar við að eiga við kerfishrun"

# 2024-Dec-06, take 2
_tr_add2 _commonphrase_enabled       "virkt"
_tr_add2 _commonphrase_disabled      "óvirkt"

# 2024-Dec-10
_tr_add2 arch_chroot                 "arch-chroot upplýsingar"
_tr_add2 arch_chroot_tip             "arch-chroot gefur kost á skipuanalínuaðgangi yfir í annað kerfi"
_tr_add2 _commonphrase_not_found     "%%s fannst ekki"                                                   # Example usage: "$(ltr _commonphrase_not_found "file1.txt")"
