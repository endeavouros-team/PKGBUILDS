# Traduccions per a l'aplicació de benvinguda.
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

_tr_lang=ca            # required helper variable for _tr_add2

# Help with some special characters (HTML). Yad has problems without them:
_exclamation='&#33;'   # '!'
_and='&#38;'           # '&'
_question='&#63;'      # '?'


###################### Now the actual strings to be translated: ######################
# func   <placeholder>         "string"

_tr_add2 welcome_disabled      "L'aplicació $PRETTY_PROGNAME està inhabilitada. Per iniciar-la, useu l'opció --enable (temporarily: --once)."  # changed 2022-Feb-21

_tr_add2 butt_later            "Fins aviat"
_tr_add2 butt_latertip         "Mantén $PRETTY_PROGNAME habilitat"

_tr_add2 butt_noshow           "No ho tornis a mostrar"
_tr_add2 butt_noshowtip        "Inhabilita $PRETTY_PROGNAME"

_tr_add2 butt_help             "Ajuda"


_tr_add2 nb_tab_INSTALL        "INSTAL·LA"
_tr_add2 nb_tab_GeneralInfo    "Informació general"
_tr_add2 nb_tab_AfterInstall   "Després de la instal·lació"
_tr_add2 nb_tab_AddMoreApps    "Afegiu-hi més aplicacions"


_tr_add2 after_install_text    "Després de les tasques d'instal·lació"

_tr_add2 after_install_um      "Actualitza les rèpliques"
_tr_add2 after_install_umtip   "Actualitza la llista de rèpliques abans d'actualitzar el sistema."

_tr_add2 after_install_us      "Actualitza el sistema"
_tr_add2 after_install_ustip   "Actualitza el programari del sistema."

_tr_add2 after_install_dsi     "Detecta problemes del sistema"
_tr_add2 after_install_dsitip  "Detecta qualsevol problema potencial als paquets del sistema o en altres llocs."

_tr_add2 after_install_etl     "L'EndeavourOS més recent$_question"
_tr_add2 after_install_etltip  "Mostra què cal fer per dur el sistema a l'últim nivell d'EndeavourOS"

_tr_add2 after_install_cdm     "Canvia el gestor de pantalla"
_tr_add2 after_install_cdmtip  "Estableix un gestor de visualització diferent."

_tr_add2 after_install_ew      "Fons de pantalla predeterminat de l'EndeavourOS"      # was: "EndeavourOS wallpaper"
_tr_add2 after_install_ewtip   "Restableix el fons de pantalla predeterminat."     # was: "Change desktop wallpaper to EOS default"


_tr_add2 after_install_pm      "Gestió de paquets"
_tr_add2 after_install_pmtip   "Com gestionar paquets amb el Pacman"

_tr_add2 after_install_ay      "AUR i Yay$_exclamation"
_tr_add2 after_install_aytip   "Repositori d'usuaris de l'Arch i informació del Yay"

_tr_add2 after_install_hn      "Maquinari i xarxa"
_tr_add2 after_install_hntip   "Feu que el  maquinari funcioni."

_tr_add2 after_install_bt      "Bluetooth"
_tr_add2 after_install_bttip   "Consells sobre el Bluetooth"

_tr_add2 after_install_nv      "Usuaris d'NVIDIA$_exclamation"
_tr_add2 after_install_nvtip   "Usa l'instal·lador d'NVIDIA"

_tr_add2 after_install_ft      "Consells del fòrum"
_tr_add2 after_install_fttip   "Ajudeu-nos a ajudar-vos!"


_tr_add2 general_info_text     "Trobeu el vostre camí al lloc web d'EndeavourOS$_exclamation"

_tr_add2 general_info_ws       "Lloc web"

_tr_add2 general_info_wi       "Wiki"
_tr_add2 general_info_witip    "Articles destacats"

_tr_add2 general_info_ne       "Notícies"
_tr_add2 general_info_netip    "Notícies i articles"

_tr_add2 general_info_fo       "Fòrum"
_tr_add2 general_info_fotip    "Pregunteu, comenteu i xatejeu al nostre fòrum amigable!"

_tr_add2 general_info_do       "Feu una donació"
_tr_add2 general_info_dotip    "Ajudeu-nos a mantenir l'EndeavourOS en funcionament."

_tr_add2 general_info_ab       "Quant a $PRETTY_PROGNAME"
_tr_add2 general_info_abtip    "Més informació sobre aquesta aplicació"


_tr_add2 add_more_apps_text    "Instal·leu aplicacions populars"

_tr_add2 add_more_apps_lotip   "Eines d'oficina (libreoffice-fresh)"

_tr_add2 add_more_apps_ch      "Navegador web Chromium"
_tr_add2 add_more_apps_chtip   "Navegador web"

_tr_add2 add_more_apps_fw      "Tallafoc"
_tr_add2 add_more_apps_fwtip   "Tallafoc Gufw"

_tr_add2 add_more_apps_bt      "Bluetooth (blueberry) per a l'Xfce"
_tr_add2 add_more_apps_bt_bm   "Bluetooth (blueman) per a l'escriptori Xfce"


####################### NEW STUFF AFTER THIS LINE:

_tr_add2 settings_dis_contents   "Per tornar a executar $PRETTY_PROGNAME, obriu un terminal i executeu el següent:\n<tt>   $PROGNAME --enable</tt>\nor\n<tt>   $PROGNAME --once</tt>\n"  # slightly changed 2021-Dec-21; changed again 2022-Apr-06
_tr_add2 settings_dis_text       "Torna a habilitar $PRETTY_PROGNAME:"
_tr_add2 settings_dis_title      "Com tornar a habilitar $PRETTY_PROGNAME"
_tr_add2 settings_dis_butt       "Ho recordo"
_tr_add2 settings_dis_buttip     "Ho prometo"

_tr_add2 help_butt_title         "Ajuda per a $PRETTY_PROGNAME"
_tr_add2 help_butt_text          "Més informació sobre l'aplicació $PRETTY_PROGNAME"

_tr_add2 dm_title                "Seleccioneu un gestor de pantalla"
_tr_add2 dm_col_name1            "Seleccionat"
_tr_add2 dm_col_name2            "Nom del gestor de pantalla"

_tr_add2 dm_reboot_required      "Cal reiniciar perquè els canvis tinguin efecte."
_tr_add2 dm_changed              "El gestor de pantalla s'ha canviat a"
_tr_add2 dm_failed               "Ha fallat canviar el gestor de pantalla."
_tr_add2 dm_warning_title        "Avís"

_tr_add2 install_installer       "Instal·lador"
_tr_add2 install_already         "ja instal·lat"
_tr_add2 install_ing             "S'installa..."
_tr_add2 install_done            "Fet"

_tr_add2 sysup_no                "No hi ha actualitzacions."
_tr_add2 sysup_check             "Es comprova si hi ha actualitzacions de programari..."

_tr_add2 issues_title            "Detecció de problemes de paquets"
_tr_add2 issues_grub             "IMPORTANT: caldrà tornar a crear el menú d'arrencada manualment."
_tr_add2 issues_run              "S'executen ordres:"
_tr_add2 issues_no               "No s'han detectat problemes importants al sistema."

_tr_add2 cal_noavail            "No disponible: "        # installer program
_tr_add2 cal_warn               "Avís"
_tr_add2 cal_info1              "Aquesta és una versió de desenvolupament de la comunitat.\n\n"                                   # specials needed!
_tr_add2 cal_info2              "El mètode <b>fora de línia</b> ofereix un escriptori Xfce amb temàtica d'EndeavourOS.\nNo cal connexió a Internet.\n\n"
_tr_add2 cal_info3              "El mètode <b>en línia</b> permet triar l'escriptori, amb el tema d'origen.\nCal connexió a Internet.\n\n"
_tr_add2 cal_info4              "Si us plau, tingueu en compte que aquesta versió és un treball en curs; si us plau, ajudeu-nos a fer-la estable informant d'errors.\n"
_tr_add2 cal_info5              "\nDesprés de la instal·lació, és recomanat actualitzar el sistema.\n\n"
_tr_add2 cal_info6              "\nDesprés de la instal·lació, el sistema està actualitzat.\n\n"
_tr_add2 cal_choose             "Trieu el mètode d'instal·lació."
_tr_add2 cal_method             "Mètode"
_tr_add2 cal_nosupport          "$PROGNAME: mode no admès: "
_tr_add2 cal_nofile             "$PROGNAME: el fitxer requerit no existeix: "
_tr_add2 cal_istarted           "S'ha iniciat la instal·lació."
_tr_add2 cal_istopped           "Instal·lació acabada"

_tr_add2 tail_butt              "Tanca aquesta finestra"
_tr_add2 tail_buttip            "Tanca només aquesta finestra"


_tr_add2 ins_text              "Instal·lació de l'EndeavourOS al disc."
_tr_add2 ins_start             "Inicia l'instal·lador"
_tr_add2 ins_starttip          "Inicia l'instal·lador de l'EndeavourOS (trieu entre els escriptoris principals)"
_tr_add2 ins_up                "Actualitza aquesta aplicació$_exclamation"
_tr_add2 ins_uptip             "Actualitza aquesta aplicació i la reinicia."
_tr_add2 ins_keys              "Inicialitza les claus del Pacman"
_tr_add2 ins_keystip           "Inicialitza les claus del Pacman"
_tr_add2 ins_pm                "Gestor de particions"
_tr_add2 ins_pmtip             "El Gparted permet examinar i gestionar les particions i l'estructura del disc."
_tr_add2 ins_rel               "Informació de la darrera versió"
_tr_add2 ins_reltip            "Més infomació de la darrera versió"
_tr_add2 ins_tips              "Consells d'instal·lació"
_tr_add2 ins_tipstip           "Consells d'instal·lació"
_tr_add2 ins_trouble           "Solució de problemes"
_tr_add2 ins_troubletip        "Rescat del sistema"

_tr_add2 after_install_us_from    "Actualizacions d'"                            # AUR or upstream
_tr_add2 after_install_us_el      "Es requereixen privilegis elevats."
_tr_add2 after_install_us_done    "Actualització feta"
_tr_add2 after_install_us_fail    "Ha fallat l'actualització!"

# 2020-May-14:

_tr_add2 nb_tab_UsefulTips     "Consells"
_tr_add2 useful_tips_text      "Consells útils"

# 2020-May-16:

_tr_add2 butt_changelog        "Registre de canvis"
_tr_add2 butt_changelogtip     "Mostra el registre de canvis de la benvinguda."

_tr_add2 after_install_themevan      "Tema original de l'Xfce"
_tr_add2 after_install_themevantip   "Usa el tema original de l'Xfce."

_tr_add2 after_install_themedef     "Tema de l'EndeavourOS per a l'Xfce"
_tr_add2 after_install_themedeftip  "Usa el tema predeterminat de l'EndeavourOS per a l'Xfce."

# 2020-Jun-28:
_tr_add2 after_install_pclean       "Configuració de la neteja de paquets"
_tr_add2 after_install_pcleantip    "Configura el servei de neteja de la memòria cau de paquets."

# 2020-Jul-04:
_tr_add2 nb_tab_OwnCommands         "Ordres personals"                   # modified 2020-Jul-08
_tr_add2 nb_tab_owncmds_text        "Ordres personalitzades"               # modified 2020-Jul-08

# 2020-Jul-08:
_tr_add2 nb_tab_owncmdstip          "Ajuda per afegir ordres personals"

_tr_add2 add_more_apps_akm          "Un gestor del nucli"
_tr_add2 add_more_apps_akmtip       "Un petit gestor del nucli de Linux i font d'informació"

# 2020-Jul-15:
_tr_add2 butt_owncmds_help        "Tutorial: ordres personals"

# 2020-Aug-05:
_tr_add2 butt_owncmds_dnd         "Arrossegar i deixar anar ordres personals"
_tr_add2 butt_owncmds_dnd_help    "Mostra una finestra on arrossegar els elements per als botons nous."

# 2020-Sep-03:
_tr_add2 ins_reso                 "Canvia la resolució de la pantalla"
_tr_add2 ins_resotip              "Canvia la resolució de la pantalla ara."

# 2020-Sep-08:
_tr_add2 add_more_apps_arch          "Exploreu tots els paquets de l'Arch"
_tr_add2 add_more_apps_aur           "Exploreu tots els paquets de l'AUR"
_tr_add2 add_more_apps_done1_text    "Aplicacions suggerides ja instal·lades$_exclamation"
_tr_add2 add_more_apps_done2_text    "o exploreu tots els paquets de l'Arch i l'AUR."
_tr_add2 add_more_apps_done2_tip1    "Per instal·lar-ne, useu pacman o yay."
_tr_add2 add_more_apps_done2_tip2    "Per instal·lar-ne, useu yay."

# 2020-Sep-11:
_tr_add2 after_install_ew2        "Trieu un dels fons de pantalla de l'EndeavourOS"   # was: "EndeavourOS wallpaper (choose)"
_tr_add2 after_install_ewtip2     "Selector de fons de pantalla"                          # was: "Choose from EndeavourOS default wallpapers"

# 2020-Sep-15:
#    IMPORTANT NOTE:
#       - line 71:  changed text of 'after_install_ew'
#       - line 72:  changed text of 'after_install_ewtip'
#       - line 249: changed text of 'after_install_ew2'
#       - line 250: changed text of 'after_install_ewtip2'

# 2020-Oct-23:
_tr_add2 updt_update_check        "Comprovació d'actualitzacions"
_tr_add2 updt_searching           "Se cerca a"
_tr_add2 updt_for_updates         "si hi ha actualitzacions"
_tr_add2 updt_failure             "Ha fallat$_exclamation"
_tr_add2 updt_nothing_todo        "No hi ha res per fer."
_tr_add2 updt_press_enter         "Premeu RETORN per tancar aquesta finestra"

# 2020-Oct-24:
#    IMPORTANT NOTE:
#       - line 244: changed text of 'add_more_apps_done2_text'

# 2020-Dec-11:
_tr_add2 after_install_pacdiff_tip "Gestioneu fitxers pacnew, pacorig i pacsave amb pacdiff i"

# 2021-Apr-07:
_tr_add2 after_install_conf           "Configuració del dimoni"                             # a starting verb on a sentence "Configure eos-update-notifier"
_tr_add2 after_install_more_wall      "Baixeu més fons de pantalla de l'EndeavourOS"
_tr_add2 after_install_more_wall_tip  "Baixeu fons de pantalla de llegat i de la comunitat de l'EndeavourOS."
_tr_add2 after_install_info           "informació"                           # last word on a sentence, means just any information

_tr_add2 butt_softnews                "Notícies de programari"
_tr_add2 butt_softnews_tip            "Notícies importants sobre el programari de l'EndeavourOS"

_tr_add2 install_community            "Instal·leu edicions comunitàries"
_tr_add2 install_community_tip        "Col·lecció d'edicions comunitàries (diversos gestors de finestres)"    # changed 2021-Oct-23

# 2021-May-01
_tr_add2 ins_syslog                   "Com compartir els registres del sistema"
_tr_add2 ins_syslogtip                "Explica com podeu compartir els registres del sistema quan necessiteu ajuda."
_tr_add2 ins_logtool                  "Registres per a la resolució de problemes"
_tr_add2 ins_logtooltip               "Seleccioneu, creeu i compartiu registres de resolució de problemes quan demaneu ajuda."

# 2021-May-20
_tr_add2 nb_tab_DailyAssistant       "Assistent"
_tr_add2 daily_assistant_text        "Eines per a tasques útils o quotidianes"
_tr_add2 after_install_itab          "Seleccioneu la pestanya inicial de la benvinguda"
_tr_add2 after_install_itab_tip      "Estableix la pestanya de la benvinguda que es mostra quan s'inicia."

# 2021-Jun-08
_tr_add2 daily_assist_apps           "Categories d'aplicacions"
_tr_add2 daily_assist_apps_tip       "Aplicacions classificades per categories"

_tr_add2 after_install_vbox1         "Habiliteu les utilitats de convidat de VirtualBox"
_tr_add2 after_install_vbox2         "Per habilitar les utilitats de convidat de VirtualBox, seleccioneu la pestanya <b>Després de la instal·lació</b> i cliqueu al botó."

# 2021-Jun-17
_tr_add2 after_install_r8168         "Problema amb la xarxa amb fil$_question Canvieu el controlador r8168 pel r8169$_exclamation"    # changed 2021-Dec-14 !!
_tr_add2 after_install_r8168_tip     "Canvia entre els controladors r8168 i r8169 (pot ser que calgui reiniciar)."           # changed 2021-Dec-14 !!

# 2021-Oct-08
_tr_add2 daily_assist_DEinfo         "informació"                                         # assume prefix "DE:", e.g.: "Xfce: information"
_tr_add2 daily_assist_DEinfo_tip     "més informació sobre aquest gestor d'escriptori / finestres"  # assume prefix "DE:", e.g.: "Xfce: more information ..."

# 2022-Feb-16
_tr_add2 add_more_apps_qs            "Trieu aplicacions populars per instal·lar"                      # runs eos-quickstart
_tr_add2 add_more_apps_qstip         "Trieu aplicacions populars i instal·leu-les."

# 2022-Mar-21
_tr_add2 ins_blue_notes              "Notes del Bluetooth"
_tr_add2 ins_blue_notes_tip          "Notes sobre la configuració del Bluetooth"

# 2022-Mar-27
_tr_add2 after_install_fw            "Informació del tallafoc"
_tr_add2 after_install_fwtip         "Informació sobre el tallafoc predeterminat"

# 2022-Mar-30
_tr_add2 ins_custom                  "Personalització del procés d'instal·lació"
_tr_add2 ins_custom_tip              "Com personalitzar el procés d'instal·lació"

# 2022-Jul-15
_tr_add2 daily_assist_anews          "Darreres notícies sobre l'Arch"
_tr_add2 daily_assist_anewstip       "Mostra les darreres notícies de l'Arch en un navegador."

# 2022-Sep-25
_tr_add2 nb_notify_user1             "Hi ha notícies importants:"
_tr_add2 nb_notify_user2             "Si us plau, cliqueu al botó"                                  # Software News
_tr_add2 nb_notify_user3             "del cantó de baix a l'esquerra d'aquesta finestra."

# 2023-Feb-20
_tr_add2 ins_customized              "Obteniu el vostre fitxer de personalització d'instal·lació (avançat)"
_tr_add2 ins_cust_text               "Doneu l'URL del vostre user_commands.bash personalitzat"
_tr_add2 ins_cust_text2              "El fitxer obtingut substituirà ~/user_commands.bash"
_tr_add2 ins_cust_text3              "Això és molt útil per a la instal·lació <b>en línia</b>"

# 2023-Mar-29
_tr_add2 ins_no_connection           "Nota: no hi ha connexió a Internet disponible, alguns botons estan ocults o no funcionen."

# 2023-Aug-25
_tr_add2 ins_pmtip2                  "Partitionmanager permet examinar i gestionar les particions i l'estructura del disc"

# 2023-Sep-16
_tr_add2 ins_arm_start             "Instal·lador de la imatge EndeavourOS ARM"
_tr_add2 ins_arm_starttip          "Comença la instal·lació de l'edició EndeavourOS ARM"

