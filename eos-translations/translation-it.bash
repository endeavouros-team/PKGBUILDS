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

# Italiano:

### First some useful definitions:

_tr_lang=it            # required helper variable for _tr_add2

# Help with some special characters (HTML). Yad has problems without them:
_exclamation='&#33;'   # '!'
_and='&#38;'           # '&'
_question='&#63;'      # '?'


###################### ORA LE STRINGHE EFFETTIVE DA TRADURRE ######################
# func   <placeholder>            "string"

_tr_add2 welcome_disabled         "$PRETTY_PROGNAME l'app è disabilitata. Per avviarlo comunque, usa l'opzione --enable."

_tr_add2 butt_later               "Arrivederci"
_tr_add2 butt_latertip            "Mantenere $PRETTY_PROGNAME abilitata"

_tr_add2 butt_noshow              "Non mostrarmi più"
_tr_add2 butt_noshowtip           "Disabilita $PRETTY_PROGNAME"

_tr_add2 butt_help                "Aiuto"


_tr_add2 nb_tab_INSTALL           "Installazione"
_tr_add2 nb_tab_GeneralInfo       "Informazioni Generali"
_tr_add2 nb_tab_AfterInstall      "Dopo Installazione"
_tr_add2 nb_tab_AddMoreApps       "Aggiungi altre App"


_tr_add2 after_install_text       "Dopo le attività di installazione"

_tr_add2 after_install_um         "Aggiorna i Mirrors"
_tr_add2 after_install_umtip      "Aggiorna l'elenco dei mirrors prima dell'aggiornamento del sistema"

_tr_add2 after_install_us         "Aggiorna il Sistema"
_tr_add2 after_install_ustip      "Aggiorna software di sistema"

_tr_add2 after_install_dsi        "Rileva errore Sistema"
_tr_add2 after_install_dsitip     "Rileva eventuali problemi sui pacchetti di sistema o altrove"

_tr_add2 after_install_etl        "EndeavourOS ultimo$_question"
_tr_add2 after_install_etltip     "Mostra cosa fare per portare il tuo sistema all'ultimo livello di EndeavourOS"

_tr_add2 after_install_cdm        "Cambia Display Manager"
_tr_add2 after_install_cdmtip     "Utilizzare un display manager diverso"

_tr_add2 after_install_ew         "Ripristina lo sfondo di EndeavourOS"
_tr_add2 after_install_ewtip      "Cambia lo sfondo del desktop con l'impostazione predefinita EOS"


_tr_add2 after_install_pm         "Gestione dei Pacchetti"
_tr_add2 after_install_pmtip      "Come gestire i pacchetti con pacman"

_tr_add2 after_install_ay         "AUR $_and yay$_exclamation"
_tr_add2 after_install_aytip      "Arch User Repository e informazioni su yay"

_tr_add2 after_install_hn         "Hardware e Rete"
_tr_add2 after_install_hntip      "Fai funzionare il tuo hardware"

_tr_add2 after_install_bt         "Bluetooth"
_tr_add2 after_install_bttip      "Consigli sul bluetooth"

_tr_add2 after_install_nv         "Utenti NVIDIA$_exclamation"
_tr_add2 after_install_nvtip      "Utilizzare il programma di installazione NVIDIA"

_tr_add2 after_install_ft         "Suggerimenti dal Forum"
_tr_add2 after_install_fttip      "Aiutaci ad aiutarti$_exclamation"


_tr_add2 general_info_text        "Trova la tua strada sul sito web di EndeavourOS$_exclamation"

_tr_add2 general_info_ws          "Sito web"

_tr_add2 general_info_wi          "Wiki"
_tr_add2 general_info_witip       "Articoli in vetrina"

_tr_add2 general_info_ne          "Notizie"
_tr_add2 general_info_netip       "Notizie e articoli"

_tr_add2 general_info_fo          "Forum"
_tr_add2 general_info_fotip       "Chiedi, commenta e chatta nel nostro amichevole forum$_exclamation"

_tr_add2 general_info_do          "Donazione"
_tr_add2 general_info_dotip       "Aiutaci a far funzionare EndeavourOS"

_tr_add2 general_info_ab          "Info su $PRETTY_PROGNAME"
_tr_add2 general_info_abtip       "Maggiori informazioni su questa app"


_tr_add2 add_more_apps_text       "Installa app popolari"

_tr_add2 add_more_apps_lotip      "Strumenti di Office (libreoffice-fresh)"

_tr_add2 add_more_apps_ch         "Chromium"
_tr_add2 add_more_apps_chtip      "Web Browser"

_tr_add2 add_more_apps_fw         "Firewall"
_tr_add2 add_more_apps_fwtip      "Gufw firewall"

_tr_add2 add_more_apps_bt         "Bluetooth (blueberry) per Xfce"
_tr_add2 add_more_apps_bt_bm      "Bluetooth (blueman) per Xfce"


###################### ROBA NUOVA DOPO QUESTA LINEA ######################

_tr_add2 settings_dis_contents    "Per eseguire nuovamente $PRETTY_PROGNAME, avviare un terminale ed eseguire: $PROGNAME --enable"
_tr_add2 settings_dis_text        "Riattivazione $PRETTY_PROGNAME:"
_tr_add2 settings_dis_title       "Come riattivare $PRETTY_PROGNAME"
_tr_add2 settings_dis_butt        "Lo ricordo"
_tr_add2 settings_dis_buttip      "Lo prometto"

_tr_add2 help_butt_title          "$PRETTY_PROGNAME Aiuto"
_tr_add2 help_butt_text           "Maggiori informazioni su $PRETTY_PROGNAME app"

_tr_add2 dm_title                 "Seleziona Display Manager"
_tr_add2 dm_col_name1             "Seleziona"
_tr_add2 dm_col_name2             "Nome del DM"

_tr_add2 dm_reboot_required       "È necessario riavviare per rendere effettive le modifiche."
_tr_add2 dm_changed               "DM cambiato in: "
_tr_add2 dm_failed                "Modifica del DM non riuscita."
_tr_add2 dm_warning_title         "Attenzione"

_tr_add2 install_installer        "Installer"
_tr_add2 install_already          "Già installato"
_tr_add2 install_ing              "Installazione"
_tr_add2 install_done             "Finito."

_tr_add2 sysup_no                 "Nessun aggiornamento."
_tr_add2 sysup_check              "Verifica aggiornamenti software..."

_tr_add2 issues_title             "Rilevamento dei problemi del pacchetto"
_tr_add2 issues_grub              "IMPORTANTE: sarà necessario ricreare manualmente il menu di avvio."
_tr_add2 issues_run               "Esecuzione di comandi:"
_tr_add2 issues_no                "Non sono stati rilevati problemi di sistema importanti."

_tr_add2 cal_noavail              "Non disponibile: "        					# installer program
_tr_add2 cal_warn                 "Attenzione"
_tr_add2 cal_info1                "Questa è una versione di sviluppo della comunità.\n\n"	# specials needed!
_tr_add2 cal_info2                "<b>Offline</b> Il metodo offre un desktop Xfce con temi EndeavourOS.\nNon è necessaria la connessione a Internet.\n\n"
_tr_add2 cal_info3                "<b>Online</b> Il metodo ti consente di scegliere il tuo desktop, con temi standard.\nÈ richiesta una connessione a Internet.\n\n"
_tr_add2 cal_info4                "Nota: questa versione è un work-in-progress, ti preghiamo di aiutarci a renderlo stabile segnalando i bug.\n"
_tr_add2 cal_choose               "Scegli il metodo di installazione"
_tr_add2 cal_method               "Metodo"
_tr_add2 cal_nosupport            "$PROGNAME: modalità non supportata: "
_tr_add2 cal_nofile               "$PROGNAME: il file richiesto non esiste: "
_tr_add2 cal_istarted             "Installazione avviata"
_tr_add2 cal_istopped             "Installazione completata"

_tr_add2 tail_butt                "Chiudi questa finestra"
_tr_add2 tail_buttip              "Chiudi solo questa finestra"


_tr_add2 ins_text                 "Installazione di EndeavourOS su disco"
_tr_add2 ins_start                "Avviare il programma di installazione"
_tr_add2 ins_starttip             "Avviare il programma di installazione di EndeavourOS insieme a un terminale di debug"
_tr_add2 ins_up                   "Aggiorna questa app$_exclamation"
_tr_add2 ins_uptip                "Aggiorna questa app e la riavvia"
_tr_add2 ins_keys                 "Inizializza le key di pacman"
_tr_add2 ins_keystip              "Inizializza le key di pacman"
_tr_add2 ins_pm                   "Gestisci le partizioni"
_tr_add2 ins_pmtip                "Gparted consente di esaminare e gestire le partizioni e la struttura del disco"
_tr_add2 ins_rel                  "Informazioni sulla versione più recente"
_tr_add2 ins_reltip               "Maggiori informazioni sull'ultima versione"
_tr_add2 ins_tips                 "Suggerimenti per l'installazione"
_tr_add2 ins_tipstip              "Suggerimenti per l'installazione"
_tr_add2 ins_trouble              "Risoluzione dei problemi"
_tr_add2 ins_troubletip           "System Rescue"

_tr_add2 after_install_us_from    "Aggiornamenti da"                            		# AUR or upstream
_tr_add2 after_install_us_el      "Sono richiesti privilegi elevati."
_tr_add2 after_install_us_done    "Aggiornamento fatto."
_tr_add2 after_install_us_fail    "Aggiornamento non riuscito$_exclamation"

# 2020-May-14:

_tr_add2 nb_tab_UsefulTips     "Consigli"
_tr_add2 useful_tips_text      "Consigli Utili"

# 2020-May-16:

_tr_add2 butt_changelog        "Registro delle modifiche"
_tr_add2 butt_changelogtip     "Mostra il registro delle modifiche di Benvenuto"

_tr_add2 after_install_themevan      "Tema di vanilla per Xfce"
_tr_add2 after_install_themevantip   "Usa il tema di vanilla per Xfce"

_tr_add2 after_install_themedef     "Tema di default per EndeavourOS di Xfce"
_tr_add2 after_install_themedeftip  "Usa il tema di default per EndeavourOS di Xfce"

# 2020-Jun-28:
_tr_add2 after_install_pclean       "Configurazione della pulizia dei pacchetti"
_tr_add2 after_install_pcleantip    "Configura la pulizia del servizio di pulizia della cache dei pacchetti."

# 2020-Jul-04:
_tr_add2 nb_tab_OwnCommands         "Comandi Personali"                   # modified 2020-Jul-08
_tr_add2 nb_tab_owncmds_text        "Comandi Personalizzati"               # modified 2020-Jul-08

# 2020-Jul-08:
_tr_add2 nb_tab_owncmdstip          "Aiuto sull'inserimento dei comandi personali"

_tr_add2 add_more_apps_akm          "Un gestore del Kernel"
_tr_add2 add_more_apps_akmtip       "Un piccolo programma di gestione del Kernel linux e informazione dei sorgenti"

# 2020-Jul-15:
_tr_add2 butt_owncmds_help        "Tutorial: Comandi Personali"

# 2020-Aug-05:
_tr_add2 butt_owncmds_dnd         "Comandi Personali drag${_and}drop"
_tr_add2 butt_owncmds_dnd_help    "Mostra una finestra dove trascinare gli elementi per i nuovi pulsanti"

# 2020-Sep-03:
_tr_add2 ins_reso                 "Cambia la risoluzione del monitor"
_tr_add2 ins_resotip              "Cambia la risoluzione del monitor"

# 2020-Sep-08:
_tr_add2 add_more_apps_arch          "Mostra tutti i pacchetti di Arch"
_tr_add2 add_more_apps_aur           "Mostra tutti i pacchetti di AUR"
_tr_add2 add_more_apps_done1_text    "Programmi suggeriti già istallati$_exclamation"
_tr_add2 add_more_apps_done2_text    "o mostra tutti i pacchetti Arch e AUR"
_tr_add2 add_more_apps_done2_tip1    "Per installare, usa 'pacman' o 'yay'"
_tr_add2 add_more_apps_done2_tip2    "Per installare, usa 'yay'"

# 2020-Sep-11:
_tr_add2 after_install_ew2        "Scegli uno sfondo per EndeavourOS"   # was: "EndeavourOS wallpaper (choose)"
_tr_add2 after_install_ewtip2     "Scegli uno sfondo"                          # was: "Choose from EndeavourOS default wallpapers"

# 2020-Sep-15:
#    IMPORTANT NOTE:
#       - line 71:  changed text of 'after_install_ew'
#       - line 72:  changed text of 'after_install_ewtip'
#       - line 249: changed text of 'after_install_ew2'
#       - line 250: changed text of 'after_install_ewtip2'

# 2020-Oct-23:
_tr_add2 updt_update_check        "controllo gli aggiornamenti"
_tr_add2 updt_searching           "Sto cercando su"
_tr_add2 updt_for_updates         "gli aggiornamenti"
_tr_add2 updt_failure             "fallimento$_exclamation"
_tr_add2 updt_nothing_todo        "non c'è nulla da fare"
_tr_add2 updt_press_enter         "Premi INVIO per chiudere questa finestra"

# 2020-Oct-24:
#    IMPORTANT NOTE:
#       - line 244: changed text of 'add_more_apps_done2_text'

# 2020-Dec-11:
_tr_add2 after_install_pacdiff_tip "Gestisce i file pacnew, pacorig $_and pacsave con pacdiff $_and"

# 2021-Apr-07:
_tr_add2 after_install_conf           "Configura"                             # a starting verb on a sentence "Configure eos-update-notifier"
_tr_add2 after_install_more_wall      "Scarica più sfondi per EndeavourOS"
_tr_add2 after_install_more_wall_tip  "Scarica gli sfondi per EndeavourOS e dalla comunità"
_tr_add2 after_install_info           "informazione"                           # last word on a sentence, means just any information

_tr_add2 butt_softnews                "Notizie sui programmi"
_tr_add2 butt_softnews_tip            "Importanti notizie sui programmi di EndeavourOS"

_tr_add2 install_community            "Installa le versioni della Comunità"
_tr_add2 install_community_tip        "Versioni della Comunità: Sway, Bspwm (nota: richiesta la connessione internet)"

# 2021-May-01
_tr_add2 ins_syslog                   "Come condividere i registri di sistema"
_tr_add2 ins_syslogtip                "Spiega come condividere i registri di sistema per quando ne avrai bisogno"
_tr_add2 ins_logtool                  "Registri per la risoluzione dei problemi"
_tr_add2 ins_logtooltip               "Seleziona, crea e condividi i registri della risoluzione dei problemi per quando ne avrai bisogno"
 
# 2021-May-20
_tr_add2 nb_tab_DailyAssistant       "Assistenza"
_tr_add2 daily_assistant_text        "Strumenti utili per le attività quotidiane"
_tr_add2 after_install_itab          "Seleziona la scheda iniziale di Benvenuto"
_tr_add2 after_install_itab_tip      "Imposta la scheda iniziale di Benvenuto all'avvio"

# 2021-Jun-08
_tr_add2 daily_assist_apps           "Categorie delle applicazioni"
_tr_add2 daily_assist_apps_tip       "Applicazioni ordinate per categoria"

_tr_add2 after_install_vbox1         "Abilità le utilità di VirtualBox"
_tr_add2 after_install_vbox2         "Per abilitare le utilità di VirtualBox, selezionare <b>dopo l'installazione</b> la scheda e fare click sul pulsante"

# 2021-Jun-17
_tr_add2 after_install_r8168         "Problemi di rete$_question Attiva/Disattiva i seguenti driver: r8168 e r8169$_exclamation"    # changed 2021-Dec-14 !!
_tr_add2 after_install_r8168_tip     "Scambia i driver r8168 e r8169 (poi riavvia)"                    # changed 2021-Dec-14 !!

# 2021-Oct-08
_tr_add2 daily_assist_DEinfo         "informazioni"                                         # assume prefix "DE:", e.g.: "Xfce: information"
_tr_add2 daily_assist_DEinfo_tip     "maggiori informazioni sul Desktop/Window Manager"  # assume prefix "DE:", e.g.: "Xfce: more information ..."

# 2022-Feb-16
_tr_add2 add_more_apps_qs            "Scegli le app più popolari da installare"                      # runs eos-quickstart
_tr_add2 add_more_apps_qstip         "Scegli le app più popolari e installale"

