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

_tr_lang=se            # required helper variable for _tr_add2

# Help with some special characters (HTML). Yad has problems without them:
_exclamation='&#33;'   # '!'
_and='&#38;'           # '&'
_question='&#63;'      # '?'
###################### Now the actual strings to be translated: ######################
# func   <placeholder>         "string"

_tr_add2 welcome_disabled      "$PRETTY_PROGNAME app är inaktiv. För att starta den i alla fall, använd --enable. (temporärt: --once)."

_tr_add2 butt_later            "Ses senare"
_tr_add2 butt_latertip         "Håll $PRETTY_PROGNAME aktiverad"

_tr_add2 butt_noshow           "Visa inte mig igen"
_tr_add2 butt_noshowtip        "Deaktivera $PRETTY_PROGNAME"
_tr_add2 butt_help             "Hjälp"

_tr_add2 nb_tab_INSTALL        "INSTALLERA"
_tr_add2 nb_tab_GeneralInfo    "Generell information"
_tr_add2 nb_tab_AfterInstall   "Efter installationen"
_tr_add2 nb_tab_AddMoreApps    "Lägg till fler program"

_tr_add2 after_install_text    "Efterinstallations-sysslor"
_tr_add2 after_install_um      "Uppdatera speglar"
_tr_add2 after_install_umtip   "Uppdatera spegellista innan systemuppdatering"

_tr_add2 after_install_us      "Uppdatera system"
_tr_add2 after_install_ustip   "Uppdatera systemmjukvara"

_tr_add2 after_install_dsi     "Upptäck systemproblem"
_tr_add2 after_install_dsitip  "Upptäck eventuella problem med systempaket eller någon annanstans"

_tr_add2 after_install_etl     "EndeavourOS senaste version$_question"
_tr_add2 after_install_etltip  "Visa hur du får ditt system till senaste EndeavourOS-nivå;"

_tr_add2 after_install_cdm     "Byt bildskärmshanterare"
_tr_add2 after_install_cdmtip  "Använd en annan bildskärmshanterare"

_tr_add2 after_install_ew      "EndeavourOS skrivbordsbakgrund" # var: "EndeavourOS skrivbordsbakgrund"
_tr_add2 after_install_ewtip   "Ändra skrivbordsbakgrund till EOS standardbakgrund" var: "Ändra skrivbordsbakgrund till EOS standard"

_tr_add2 after_install_pm      "Pakethantering"
_tr_add2 after_install_pmtip   "Hur man hanterar paket med pacman"

_tr_add2 after_install_ay      "AUR $_and yay$_exclamation"
_tr_add2 after_install_aytip   "Arch User Repository och yay-information"

_tr_add2 after_install_hn      "Hårdvara och Nätverk"
_tr_add2 after_install_hntip   "Få din hårdvara att fungera"

_tr_add2 after_install_bt      "Blåtand"
_tr_add2 after_install_bttip   "Råd angående blåtand"

_tr_add2 after_install_nv      "NVIDIA-användare$_exclamation"
_tr_add2 after_install_nvtip   "Använd NVIDIA-installeraren"

_tr_add2 after_install_ft      "Forum"
_tr_add2 after_install_fttip   "Hjälp oss hjälpa dig$_exclamation"

_tr_add2 general_info_text     "Finn din väg på EndeavourOS hemsida$_exclamation"

_tr_add2 general_info_ws       "Hemsida"

_tr_add2 general_info_wi       "Wiki"
_tr_add2 general_info_witip    "Rekomenderade artiklar"

_tr_add2 general_info_ne       "Nyheter"
_tr_add2 general_info_netip    "Nyheter och artiklar"

_tr_add2 general_info_fo       "Forum"
_tr_add2 general_info_fotip    "Fråga, kommentera, och chatta i vårt vänliga forum$_exclamation"

_tr_add2 general_info_do       "Donera"
_tr_add2 general_info_dotip    "Hjälp oss hålla igång EndeavourOS"

_tr_add2 general_info_ab       "Om $PRETTY_PROGNAME"
_tr_add2 general_info_abtip    "Mer information om detta program"

_tr_add2 add_more_apps_text    "Installera populära program"
_tr_add2 add_more_apps_qs      "Välj populära program att installera"                      # kör eos-quickstart
_tr_add2 add_more_apps_qstip   "Välj populära program och installera dem"

_tr_add2 add_more_apps_lotip   "Office-verktyg (libreoffice-fresh)"

_tr_add2 add_more_apps_ch      "Chromium Webbläsare"
_tr_add2 add_more_apps_chtip   "Webbläsare"

_tr_add2 add_more_apps_fw      "Brandvägg"
_tr_add2 add_more_apps_fwtip   "Gufw brandvägg"

_tr_add2 add_more_apps_bt      "Blåtand (blueberry) för Xfce"
_tr_add2 add_more_apps_bt_bm   "Blåtand (blueman) för Xfce"

####################### NEW STUFF AFTER THIS LINE:

_tr_add2 settings_dis_contents   "För att köra $PRETTY_PROGNAME igen, starta en terminal och kör:\n<tt>   $PROGNAME --enable</tt>\n"
_tr_add2 settings_dis_text       "Återaktivera $PRETTY_PROGNAME:"
_tr_add2 settings_dis_title      "Hur man återaktiverar $PRETTY_PROGNAME"
_tr_add2 settings_dis_butt       "Jag kommer ihåg"
_tr_add2 settings_dis_buttip     "Jag lovar"

_tr_add2 help_butt_title         "$PRETTY_PROGNAME Hjälp"
_tr_add2 help_butt_text          "Mer information om $PRETTY_PROGNAME app"
_tr_add2 dm_title                "Välj Skärmhanterare"
_tr_add2 dm_col_name1            "Vald"
_tr_add2 dm_col_name2            "DM namn"
_tr_add2 dm_reboot_required      "Omstart krävs för att ändringarna ska få; effekt."
_tr_add2 dm_changed              "DM ändrad till: "
_tr_add2 dm_failed               "Byte av DM misslyckades."
_tr_add2 dm_warning_title        "Varning"
_tr_add2 install_installer       "Installerare"
_tr_add2 install_already         "redan installerad"
_tr_add2 install_ing             "Installering"
_tr_add2 install_done            "Klar."
_tr_add2 sysup_no                "Inga uppdateringar."
_tr_add2 sysup_check             "Letar efter mjukvaruuppdateringar..."
_tr_add2 issues_title            "Paketproblem-detektion"
_tr_add2 issues_grub             "VIKTIGT: Manuellt återskapande av bootmeny kommer att krävas."
_tr_add2 issues_run              "Kör komandon:"
_tr_add2 issues_no               "Inga viktiga systemfel upptäcktes."
_tr_add2 cal_noavail            "Icke tillgängligt: "        # installer program
_tr_add2 cal_warn               "Varning"
_tr_add2 cal_info1              "Det här är ett gemenskapsutvecklat släpp.\n\n"                                   # specials needed!
_tr_add2 cal_info2              "<b>Offline</b> metoden ger dig en Xfce-desktop med EndeavourOS-tema.\nInternetuppkoppling 	är inte nödvändig.\n\n"
_tr_add2 cal_info3              "<b>Online</b> metoden låter dig välja skrivbordsbakgrund, med vaniljtema.\nInternetuppkoppling krävs.\n\n"
_tr_add2 cal_info4              "OBS: Detta släpp är ett pågående arbete, vänligen hjälp oss att göra det stabilt genom att rapportera buggar\n"
_tr_add2 cal_choose             "Välj installationsmetod"
_tr_add2 cal_method             "Metod"
_tr_add2 cal_nosupport          "$PROGNAME: Icke stött läge: "
_tr_add2 cal_nofile             "$PROGNAME: nödvändig fil existerar inte: "
_tr_add2 cal_istarted           "Installation startad"
_tr_add2 cal_istopped           "Installation klar"
_tr_add2 tail_butt              "Stäng detta fönster"
_tr_add2 tail_buttip            "Stäng bara detta fönster"

_tr_add2 ins_text              "Installerar EndeavourOS till disk"
_tr_add2 ins_start             "Starta installereraren"
_tr_add2 ins_starttip          "Starta EndeavourOS-installeraren tillsammans med felsökningsterminal"
_tr_add2 ins_up                "Uppdatera detta program$_exclamation"
_tr_add2 ins_uptip             "Uppdaterar detta program och startar om det"
_tr_add2 ins_keys              "Initiera pacman-nycklar"
_tr_add2 ins_keystip           "Initiera pacman-nycklar"
_tr_add2 ins_pm                "Partitionshanterare"
_tr_add2 ins_pmtip             "Gparted tillåter undersökning and hantering av diskpartitioner och strukturer"
_tr_add2 ins_rel               "Senaste släpp-information"
_tr_add2 ins_reltip            "Mer information om senaste släppet"
_tr_add2 ins_tips              "Installationstips"
_tr_add2 ins_tipstip           "Installationstips"
_tr_add2 ins_trouble           "Felsök"
_tr_add2 ins_troubletip        "Systemräddning"

_tr_add2 after_install_us_from    "Uppdateringar från"                            # AUR or upstream
_tr_add2 after_install_us_el      "Utökade rättigheter krävs."
_tr_add2 after_install_us_done    "uppdatering färdig."
_tr_add2 after_install_us_fail    "uppdatering misslyckades$_exclamation"
_tr_add2 nb_tab_UsefulTips     "Tips"
_tr_add2 useful_tips_text      "Användbara Tips"
_tr_add2 butt_changelog        "Ändringslogg"
_tr_add2 butt_changelogtip     "Visa Ändringslogg för Welcome"
_tr_add2 after_install_themevan "Xfce Vanilj tema"
_tr_add2 after_install_themevantip "Använd Xfce vanilj tema"
_tr_add2 after_install_themedef "Xfce EndeavourOS standardtema"
_tr_add2 after_install_themedeftip "Använd EndeavourOS Xfce standardtema"
_tr_add2 after_install_pclean "Konfiguration för paketrensning"
_tr_add2 after_install_pcleantip "Konfigurera tjänsten för rengöring av paketcache"
_tr_add2 nb_tab_OwnCommands    "Personliga kommandon"
_tr_add2 nb_tab_owncmds_text   "Personliga kommandon"
_tr_add2 nb_tab_owncmdstip     "Hjälp med att lägga till personliga kommandon"
_tr_add2 add_more_apps_akm     "En kärnhanterare"
_tr_add2 add_more_apps_akmtip  "En liten Linux kärnhanterare och informationskälla"
_tr_add2 butt_owncmds_help    "Handledning: Personliga kommandon"
_tr_add2 butt_owncmds_dnd      "Personliga kommandon dra${_and}släpp"
_tr_add2 butt_owncmds_dnd_help "Visa ett fönster vart man kan dra fältobjekt för nya knappar"

_tr_add2 ins_reso                "Ändra skärmupplösning"
_tr_add2 ins_resotip             "Ändra skärmupplösning nu"

_tr_add2 add_more_apps_arch    "Bläddra bland alla Arch paket"
_tr_add2 add_more_apps_aur     "Bläddra bland alla AUR paket"
_tr_add2 add_more_apps_done1_text "SFöreslagna program redan installerade$_exclamation"
_tr_add2 add_more_apps_done2_text  "Eller bläddra bland alla Arch och AUR paket"
_tr_add2 add_more_apps_done2_tip1  "För att installera, använd 'pacman' eller 'yay'"
_tr_add2 add_more_apps_done2_tip2    "För att installera, använd 'yay'"

_tr_add2 after_install_ew2     "Välj en av EndeavourOS-bakgrunderna" # var: "EndeavourOS bakgrunder (välj)
_tr_add2 after_install_ewtip2  "Skrivbordsbakgrundsväljare"                          # var: "Välj från EndeavourOS standardbakgrunder"

_tr_add2 updt_update_check "Uppdateringskontroll"
_tr_add2 updt_searching    "söker"
_tr_add2 updt_for_updates  "efter uppdateringar"
_tr_add2 updt_failure      "misslyckades$_exclamation"
_tr_add2 updt_nothing_todo "det finns ingenting att göra"
_tr_add2 updt_press_enter  "Tryck på ENTER för att stänga detta fönster"

_tr_add2 after_install_pacdiff_tip "Hantera pacnew, pacorig $_and pacsave filer med pacdiff $_and"

_tr_add2 after_install_conf        "Konfigurera" 
_tr_add2 after_install_more_wall   "Ladda ner mer EndeavourOS-bakgrundsbilder"
_tr_add2 after_install_more_wall_tip "Ladda ner EndeavourOS äldre och gemenskaps bakgrundsbilder"
_tr_add2 after_install_info "Information"


_tr_add2 butt_softnews  "Programvarunyheter"
_tr_add2 butt_softnews_tip "Viktiga nyheter om EndeavourOS programvara"

_tr_add2 install_community            "Installera gemenskapsutgåvor"
_tr_add2 install_community_tip        "Gemenskapsutgåvor samlingar (online anslutning krävs)"

_tr_add2 ins_syslog                   "Hur man delar systemloggar"
_tr_add2 ins_syslogtip                "Förklarar hur du kan dela systemloggar när du behöver hjälp"

_tr_add2 ins_logtool                  "Loggar för felsökning"
_tr_add2 ins_logtooltip               "Välj, skapa och dela felsökningsloggar när du ber om hjälp"

_tr_add2 nb_tab_DailyAssistant "Assistent"
_tr_add2 daily_assistant_text  "Verktyg för användbara och/eller dagliga uppgifter"
_tr_add2 after_install_itab    "Välj initial Welcome flik"
_tr_add2 after_install_itab_tip "Väljer fliken som Welcome visar när det startas"

_tr_add2 daily_assist_apps     "Programkategorier"
_tr_add2 daily_assist_apps_tip "Program sorterade efter kategori"

_tr_add2 after_install_vbox1   "Aktivera VirtualBox Gästverktyg"
_tr_add2 after_install_vbox2   "För att aktivera VirtualBox Gästverktyg, Välj  <b>Efter installationen</b> fliken och klicka på knappen"

_tr_add2 after_install_r8168   "Ethernet problem$_question Ta bort r8168$_exclamation"
_tr_add2 after_install_r8168_tip "Borttagning av paket <b>r8168</b> kan fixa trasig trådbunden anslutning (omstart krävs)"

_tr_add2 daily_assist_DEinfo         "Information"                                         # anta prefixet "DE:", t.e.x.: "Xfce: information"
_tr_add2 daily_assist_DEinfo_tip     "Mer information om denna Skrivbords/Fönsterhanterare"  # anta prefixet "DE:", t.e.x.: "Xfce: information"

_tr_add2 ins_blue_notes              "Blåtands anteckningar"
_tr_add2 ins_blue_notes_tip          "Anteckningar om hur man ställer in blåtand"

_tr_add2 after_install_fw            "Brandväggsinformation"
_tr_add2 after_install_fwtip         "Information om standardbrandväggen"

_tr_add2 ins_custom                  "Anpassa installationsprocessen"
_tr_add2 ins_custom_tip              "Hur man anpssar installationsprocessen"

_tr_add2 daily_assist_anews          "Senaste Arch nyheter"
_tr_add2 daily_assist_anewstip       "Visa senaste Arch nyheter i en webbläsare"

_tr_add2 nb_nofify_user1             "Det finns viktiga nyheter på"
_tr_add2 nb_nofify_user2             "Klicka på"                                  # Software News
_tr_add2 nb_nofify_user3             "knappen i den nedre vänstra hörnet av detta fönster"
