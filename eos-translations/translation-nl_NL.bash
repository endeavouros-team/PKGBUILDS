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

_tr_lang=nl_NL            # required helper variable for _tr_add2

# Help with some special characters (HTML). Yad has problems without them:
_exclamation='&#33;'   # '!'
_and='&#38;'           # '&'
_question='&#63;'      # '?'


###################### Now the actual strings to be translated: ######################
# func   <placeholder>         "string"

_tr_add2 welcome_disabled      "$PRETTY_PROGNAME applicatie is uitgeschakeld. Om het toch te starten gebruik de optie: --enable (tijdelijk: --once)."  # changed 2022-Feb-21

_tr_add2 butt_later            "Tot ziens"
_tr_add2 butt_latertip         "Houd $PRETTY_PROGNAME ingeschakeld"

_tr_add2 butt_noshow           "Niet meer tonen"
_tr_add2 butt_noshowtip        "Schakel $PRETTY_PROGNAME uit"

_tr_add2 butt_help             "Help"


_tr_add2 nb_tab_INSTALL        "INSTALLEER"
_tr_add2 nb_tab_GeneralInfo    "Algemene Informatie"
_tr_add2 nb_tab_AfterInstall   "Na installatie"
_tr_add2 nb_tab_AddMoreApps    "Voeg applicaties toe"


_tr_add2 after_install_text    "Taken voor na de installatie"

_tr_add2 after_install_um      "Update spiegelservers"
_tr_add2 after_install_umtip   "Update de lijst met spiegelservers alvorens het systeem op te waarderen"

_tr_add2 after_install_us      "Update systeem,"
_tr_add2 after_install_ustip   "Update systeemsoftware"

_tr_add2 after_install_dsi     "Spoor systeemproblemen op"
_tr_add2 after_install_dsitip  "Spoor mogelijke problemen op in systeempakketten of elders"

_tr_add2 after_install_etl     "EndeavourOS naar nieuwste versie$_question"
_tr_add2 after_install_etltip  "Laat zien wat er moet gebeuren om je systeem naar de nieuwste EndeavourOS versie te actualiseren"

_tr_add2 after_install_cdm     "Wissel Display Manager"
_tr_add2 after_install_cdmtip  "Gebruik een andere display manager"

_tr_add2 after_install_ew      "EndeavourOS standaard achtergrond"      # was: "EndeavourOS wallpaper"
_tr_add2 after_install_ewtip   "Schakel standaard achtergrond weer in"     # was: "Change desktop wallpaper to EOS default"


_tr_add2 after_install_pm      "Pakkettenonderhoud"
_tr_add2 after_install_pmtip   "Hoe je met pacman pakketten onderhoudt"

_tr_add2 after_install_ay      "AUR $_and yay$_exclamation"
_tr_add2 after_install_aytip   "Arch User Repository en yay informatie"

_tr_add2 after_install_hn      "Hardware en netwerk"
_tr_add2 after_install_hntip   "Zorg ervoor dat je hardware werkt"

_tr_add2 after_install_bt      "Bluetooth"
_tr_add2 after_install_bttip   "Bluetooth advies"

_tr_add2 after_install_nv      "NVIDIA gebruikers$_exclamation"
_tr_add2 after_install_nvtip   "Gebruik NVIDIA installer"

_tr_add2 after_install_ft      "Forum tips"
_tr_add2 after_install_fttip   "Help ons jou te helpen$_exclamation"


_tr_add2 general_info_text     "Wegwijs op de EndeavourOS website$_exclamation"

_tr_add2 general_info_ws       "Website"

_tr_add2 general_info_wi       "Wiki"
_tr_add2 general_info_witip    "Uitgelichte artikelen"

_tr_add2 general_info_ne       "Nieuws"
_tr_add2 general_info_netip    "Nieuws en artikelen"

_tr_add2 general_info_fo       "Forum"
_tr_add2 general_info_fotip    "Vraag, geef commentaar en chat in ons vriendelijk forum$_exclamation"

_tr_add2 general_info_do       "Doneer"
_tr_add2 general_info_dotip    "Help ons EndeavourOS draaiende te houden"

_tr_add2 general_info_ab       "Over $PRETTY_PROGNAME"
_tr_add2 general_info_abtip    "Meer informatie over deze applicatie"


_tr_add2 add_more_apps_text    "Installeer populaire applicaties"

_tr_add2 add_more_apps_lotip   "Kantoorsoftware (libreoffice-fresh)"

_tr_add2 add_more_apps_ch      "Chromium Webbrowser"
_tr_add2 add_more_apps_chtip   "Webbrowser"

_tr_add2 add_more_apps_fw      "Firewall"
_tr_add2 add_more_apps_fwtip   "Gufw firewall"

_tr_add2 add_more_apps_bt      "Bluetooth (blueberry) voor Xfce"
_tr_add2 add_more_apps_bt_bm   "Bluetooth (blueman) voor Xfce"


####################### NEW STUFF AFTER THIS LINE:

_tr_add2 settings_dis_contents   "Om $PRETTY_PROGNAME weer te starten, start in een terminal dit commando:\n<tt>   $PROGNAME --enable</tt>\nor\n<tt>   $PROGNAME --once</tt>\n"  # slightly changed 2021-Dec-21; changed again 2022-Apr-06
_tr_add2 settings_dis_text       "Schakel $PRETTY_PROGNAME weer in:"
_tr_add2 settings_dis_title      "Hoe $PRETTY_PROGNAME weer ingeschakeld wordt"
_tr_add2 settings_dis_butt       "Weet ik"
_tr_add2 settings_dis_buttip     "Beloof ik"

_tr_add2 help_butt_title         "$PRETTY_PROGNAME Help"
_tr_add2 help_butt_text          "Meer informatie over de $PRETTY_PROGNAME applicatie"

_tr_add2 dm_title                "Kies Display Manager"
_tr_add2 dm_col_name1            "Gekozen"
_tr_add2 dm_col_name2            "DM naam"

_tr_add2 dm_reboot_required      "Herstart is vereist om de wijzigingen te activeren."
_tr_add2 dm_changed              "DM gewijzigd in: "
_tr_add2 dm_failed               "Wijziging DM mislukt."
_tr_add2 dm_warning_title        "Waarschuwing"

_tr_add2 install_installer       "Installer"
_tr_add2 install_already         "al geïnstalleerd"
_tr_add2 install_ing             "Wordt geïnstalleerd"
_tr_add2 install_done            "Klaar."

_tr_add2 sysup_no                "Geen updates."
_tr_add2 sysup_check             "Controleren op softwareupdates..."

_tr_add2 issues_title            "Controleren op problemen met pakketten"
_tr_add2 issues_grub             "BELANGRIJK: opstartmenu moet handmatig weer worden aangemnaakt."
_tr_add2 issues_run              "Commando's worden uitgevoerd:"
_tr_add2 issues_no               "Geen belangrijke systeemproblemen zijn gedetecteerd."

_tr_add2 cal_noavail            "Niet beschikbaar: "        # installer program
_tr_add2 cal_warn               "Waarschuwing"
_tr_add2 cal_info1              "Dit is een ontwikkelrelease van de community.\n\n"                                   # specials needed!
_tr_add2 cal_info2              "<b>Offline</b> methode installeert de %%s desktop.\nInternetverbinding is niet vereisd.\n\n"
_tr_add2 cal_info3              "<b>Online</b> methode geeft de mogelijkheid een desktop te kiezen.\nInternetverbinding is vereist.\n\n"
_tr_add2 cal_info4              "Let op: Deze release is in ontwikkeling. Help ons alstublieft om deze stabiel te maken door fouten te rapporteren.\n"
_tr_add2 cal_info5              "\nNa de installatie is een systeemupdate aangeraden.\n\n"
_tr_add2 cal_info6              "\nNa de installatie is het systeem up to date.\n\n"
_tr_add2 cal_choose             "Kies een installatiemethode"
_tr_add2 cal_method             "Methode"
_tr_add2 cal_nosupport          "$PROGNAME: niet-ondersteunde methode: "
_tr_add2 cal_nofile             "$PROGNAME: vereist bestand bestaat niet: "
_tr_add2 cal_istarted           "Installatie gestart"
_tr_add2 cal_istopped           "Installatie afgerond"

_tr_add2 tail_butt              "Sluit dit venster"
_tr_add2 tail_buttip            "Sluit alleen dit venster"


_tr_add2 ins_text              "Installeer EndeavourOS op de schijf"
_tr_add2 ins_start             "Start de Installer"
_tr_add2 ins_starttip          "Start de EndeavourOS installer (kies uit bekende desktops)"   # changed 2023-Jan-12
_tr_add2 ins_up                "Update deze applicatie$_exclamation"
_tr_add2 ins_uptip             "Update deze applicatie en start het opnieuw op"
_tr_add2 ins_keys              "Initialiseer pacman sleutels"
_tr_add2 ins_keystip           "Initialiseer pacman sleutels"
_tr_add2 ins_pm                "Partitiemanager"
_tr_add2 ins_pmtip             "Gparted geeft de mogelijkheid partities en structuur van de schijf te onderzoeken en te beheren"
_tr_add2 ins_rel               "Laatste release informatie"
_tr_add2 ins_reltip            "Meer informatie over de laatste release"
_tr_add2 ins_tips              "Installatietips"
_tr_add2 ins_tipstip           "Installatietips"
_tr_add2 ins_trouble           "Onderzoek problemen"
_tr_add2 ins_troubletip        "Systeemherstel"

_tr_add2 after_install_us_from    "Updates vanaf"                            # AUR or upstream
_tr_add2 after_install_us_el      "Beheerrechten vereist."
_tr_add2 after_install_us_done    "update afgerond."
_tr_add2 after_install_us_fail    "update mislukt$_exclamation"

# 2020-May-14:

_tr_add2 nb_tab_UsefulTips     "Tips"
_tr_add2 useful_tips_text      "Handige tips"

# 2020-May-16:

_tr_add2 butt_changelog        "Wijzigingsgeschiedenis"
_tr_add2 butt_changelogtip     "Toon de wijzigingsgeschiedenis van Welcome"

_tr_add2 after_install_themevan      "Xfce standaard EndeavourOS thema"
_tr_add2 after_install_themevantip   "Gebruik het standaard EndeavourOS thema"

_tr_add2 after_install_themedef     "Xfce EndeavourOS standaard thema"
_tr_add2 after_install_themedeftip  "Gebruik EndeavourOS standaard Xfce thema"

# 2020-Jun-28:
_tr_add2 after_install_pclean       "Configureer het opschonen van pakketten"
_tr_add2 after_install_pcleantip    "Configureer het opschonen van de pakketten cache"

# 2020-Jul-04:
_tr_add2 nb_tab_OwnCommands         "Eigen commando's"                   # modified 2020-Jul-08
_tr_add2 nb_tab_owncmds_text        "Aangepaste eigen commando's"               # modified 2020-Jul-08

# 2020-Jul-08:
_tr_add2 nb_tab_owncmdstip          "Hulp bij het toevoegen van eigen commando's"

_tr_add2 add_more_apps_akm          "Een kernelmanager"
_tr_add2 add_more_apps_akmtip       "Een kleine linux kernelmanager en informatiebron"

# 2020-Jul-15:
_tr_add2 butt_owncmds_help        "Tutorial: eigen commando's"

# 2020-Aug-05:
_tr_add2 butt_owncmds_dnd         "Eigen commando's slepen${_and}neerzetten"
_tr_add2 butt_owncmds_dnd_help    "Toon een venster waar items voor nieuwe knoppen naartoe gesleept kunnen worden"

# 2020-Sep-03:
_tr_add2 ins_reso                 "Wijzig monitorresolutie"
_tr_add2 ins_resotip              "Wijzig monitorresolutie nu"

# 2020-Sep-08:
_tr_add2 add_more_apps_arch          "Blader door alle Arch pakketten"
_tr_add2 add_more_apps_aur           "Blader door alle AUR pakketten"
_tr_add2 add_more_apps_done1_text    "Voorgestelde applicaties zijn al geïnstalleerd$_exclamation"
_tr_add2 add_more_apps_done2_text    "of blader door alle Arch en AUR pakketten"
_tr_add2 add_more_apps_done2_tip1    "Om te installeren, gebruik 'pacman' of 'yay'"
_tr_add2 add_more_apps_done2_tip2    "Om te installeren, gebruik 'yay'"

# 2020-Sep-11:
_tr_add2 after_install_ew2        "Kies één van de EndeavourOS achtergronden"   # was: "EndeavourOS wallpaper (choose)"
_tr_add2 after_install_ewtip2     "Achtergrond kiezer"                          # was: "Choose from EndeavourOS default wallpapers"

# 2020-Sep-15:
#    IMPORTANT NOTE:
#       - line 71:  changed text of 'after_install_ew'
#       - line 72:  changed text of 'after_install_ewtip'
#       - line 249: changed text of 'after_install_ew2'
#       - line 250: changed text of 'after_install_ewtip2'

# 2020-Oct-23:
_tr_add2 updt_update_check        "update controle"
_tr_add2 updt_searching           "Aan het zoeken"
_tr_add2 updt_for_updates         "naar updates"
_tr_add2 updt_failure             "mislukt$_exclamation"
_tr_add2 updt_nothing_todo        "Er valt niet te doen"
_tr_add2 updt_press_enter         "Druk op ENTER om dit venster te sluiten"

# 2020-Oct-24:
#    IMPORTANT NOTE:
#       - line 244: changed text of 'add_more_apps_done2_text'

# 2020-Dec-11:
_tr_add2 after_install_pacdiff_tip "Beheer pacnew, pacorig $_and pacsave bestanden met pacdiff $_and"

# 2021-Apr-07:
_tr_add2 after_install_conf           "Configureer"                             # a starting verb on a sentence "Configure eos-update-notifier"
_tr_add2 after_install_more_wall      "Download meer EndeavourOS achtergronden"
_tr_add2 after_install_more_wall_tip  "Download EndeavourOS legacy en community achtergronden"
_tr_add2 after_install_info           "informatie"                           # last word on a sentence, means just any information

_tr_add2 butt_softnews                "Software nieuws"
_tr_add2 butt_softnews_tip            "Belangrijk nieuws over EndeavourOS software"

_tr_add2 install_community            "Installeer community edities"
_tr_add2 install_community_tip        "Verzameling van community edities (vooral WMs)"    # changed 2021-Oct-23, 2023-Jan-12

# 2021-May-01
_tr_add2 ins_syslog                   "Hoe je systeemlogs deelt"
_tr_add2 ins_syslogtip                "Legt uit hoe je systeemlogs kunt delen in het geval je hulp nodig hebt"
_tr_add2 ins_logtool                  "Logs voor onderzoek van problemen"
_tr_add2 ins_logtooltip               "Selecteer, maak en deel logs voor hulp bij het onderzoeken van problemen"

# 2021-May-20
_tr_add2 nb_tab_DailyAssistant       "Assistent"
_tr_add2 daily_assistant_text        "Hulpmiddelen voor handige en/of dagelijkse taken"
_tr_add2 after_install_itab          "Kies het initiële Welcome-tabblad"
_tr_add2 after_install_itab_tip      "Bepaalt het tabblad waarmee Welcome wordt opgestart"

# 2021-Jun-08
_tr_add2 daily_assist_apps           "Applicatiecategoriën"
_tr_add2 daily_assist_apps_tip       "Applicaties gesorteerd op categorie"

_tr_add2 after_install_vbox1         "Schakel VirtualBox Guest utilities in"
_tr_add2 after_install_vbox2         "Om VirtualBox Guest utilities in te schakelen, kies <b>na installie</b> tabblak and klik op de knop "

# 2021-Jun-17
_tr_add2 after_install_r8168         "Bedraad netwerkprobleem$_question Schakel tussen r8168 en r8169 driver$_exclamation"    # changed 2021-Dec-14 !!
_tr_add2 after_install_r8168_tip     "Schakel tussen r8168 en r8169 drivers (herstart is misschien nodig)"           # changed 2021-Dec-14 !!

# 2021-Oct-08
_tr_add2 daily_assist_DEinfo         "informatie"                                         # assume prefix "DE:", e.g.: "Xfce: information"
_tr_add2 daily_assist_DEinfo_tip     "meer informatie over deze Desktop/Window Manager"  # assume prefix "DE:", e.g.: "Xfce: more information ..."

# 2022-Feb-16
_tr_add2 add_more_apps_qs            "Kies populaire applicaties om te installeren"                      # runs eos-quickstart
_tr_add2 add_more_apps_qstip         "Kies en installer populaire applicaties"

# 2022-Mar-21
_tr_add2 ins_blue_notes              "Bluetooth opmerkingen"
_tr_add2 ins_blue_notes_tip          "Opmerkingen over het instellen van bluetooth"

# 2022-Mar-27
_tr_add2 after_install_fw            "Firewall informatie"
_tr_add2 after_install_fwtip         "Informatie over de standaard firewall"

# 2022-Mar-30
_tr_add2 ins_custom                  "Het installatieproces aanpassen"
_tr_add2 ins_custom_tip              "Hoe je het installatieproces kunt aanpassen"

# 2022-Jul-15
_tr_add2 daily_assist_anews          "Laatste Arch nieuws"
_tr_add2 daily_assist_anewstip       "Opent het laatste Arch nieuws in een browser"

# 2022-Sep-25
_tr_add2 nb_notify_user1             "Er is belangrijk nieuws op"                        # one (or more) dates, e.g. 2023-Feb-18
_tr_add2 nb_notify_user2             "Druk aub op"                                  # Software News
_tr_add2 nb_notify_user3             "de knop linksonder in dit venster."

# 2023-Feb-20
_tr_add2 ins_customized              "Haal je aangepaste installatiebestand op (expert)"
_tr_add2 ins_cust_text               "Voer URL in naar je aangepaste user_commands.bash"
_tr_add2 ins_cust_text2              "Het opgehaalde bestand zal ~/user_commands.bash vervangen"
_tr_add2 ins_cust_text3              "Dit is vooral nuttig voor <b>online</b> installatie"

# 2023-Mar-29
_tr_add2 ins_no_connection           "Let op: geen internetverbinding beschikbaar; sommige knoppen zijn verborgen of werken niet."

# 2023-Aug-25
_tr_add2 ins_pmtip2                  "Partitiemanager maakt onderzoek en beheer van schijfpartities en -structuur mogelijk"

# 2023-Sep-16
_tr_add2 ins_arm_start               "EndeavourOS ARM Image Installer"
_tr_add2 ins_arm_starttip            "Begin het installeren van de EndeavourOS ARM edition"

# 2024-Apr-18
_tr_add2 ins_conn_issue_title        "Volgende stap?"                                                                   # NOTE: '?' works in a yad title!
_tr_add2 ins_conn_issue_text         "Geen internetverbinding gevonden (wifi is misschien niet gereed${_question})"
_tr_add2 ins_conn_issue_nm1          "Netwerkmanager"
_tr_add2 ins_conn_issue_nm2          "Start de netwerkmanager"
_tr_add2 ins_conn_issue_oi1          "Offline installatie"
_tr_add2 ins_conn_issue_oi2          "Installeert KDE zonder internetverbinding (systeemupdate wordt aanbevolen na installatie)"
_tr_add2 ins_conn_issue_ex1          "Beëindig"
_tr_add2 ins_conn_issue_ex2          "Beëindig dit programma"

# 2024-Apr-20
_tr_add2 ins_start_calamares         "Calamares opstarten"
_tr_add2 ins_please_wait             "Even geduld..."
