# Traduzioni per l'applicazione Welcome.
#
# Nota: le variabili (come $PRETTY_PROGNAME qua sotto) possono essere usate se sono state già definite
# - nell'applicazione Welcome
# - globalmente
#
#
# Qualsiasi stringa deve essere definita in uno dei seguenti modi:
#
#    _tr_add <language> <placeholder> "string"
#          o
#    _tr_add2 <placeholder> "string"
#
# dove
#
#    _tr_add         É una funzione bash che aggiunge "string" al database delle stringhe.
#    _tr_add2        É uguale a _tr_add ma utilizza la lingua dalla variabile _tr_lang (dichiarata qui sotto).
#    <language>      É l'acronimo della lingua, es: "en" per l'Inglese (controlla la variabile LANG!).
#    <placeholder>   É un nome predefinito che identifica il posto in cui l'applicazione Welcome userà la stringa.
#    "string"        É la stringa tradotta per l'applicazione Welcome.

# Italiano:

### Prima alcune definizioni utili:

_tr_lang=it            # variabile helper richiesta da _tr_add2

# Alcuni caratteri speciali di aiuto (HTML). Yad ha problemi se non vengono usati:
_exclamation='&#33;'   # '!'
_and='&#38;'           # '&'
_question='&#63;'      # '?'


###################### Seguono le stringhe che vanno effettivamente tradotte: ######################
# func   <placeholder>         "string"

_tr_add2 welcome_disabled      "L'app $PRETTY_PROGNAME è disabilitata. Per avviarla ugualmente, usa l'opzione --enable (temporaneamente: --once)."  # modificato il 21-Feb-2022

_tr_add2 butt_later            "A presto"
_tr_add2 butt_latertip         "Mantieni $PRETTY_PROGNAME abilitata"

_tr_add2 butt_noshow           "Non mostrare più"
_tr_add2 butt_noshowtip        "Disabilita $PRETTY_PROGNAME"

_tr_add2 butt_help             "Aiuto"


_tr_add2 nb_tab_INSTALL        "INSTALLA"
_tr_add2 nb_tab_GeneralInfo    "Informazioni Generali"
_tr_add2 nb_tab_AfterInstall   "Post Installazione"
_tr_add2 nb_tab_AddMoreApps    "Aggiungi Altre Applicazioni"


_tr_add2 after_install_text    "Attività post installazione"

_tr_add2 after_install_um      "Aggiorna i Mirror"
_tr_add2 after_install_umtip   "Aggiorna la lista dei mirror prima di aggiornare il sistema"

_tr_add2 after_install_us      "Aggiorna il Sistema"
_tr_add2 after_install_ustip   "Aggiorna il Software di Sistema"

_tr_add2 after_install_dsi     "Rileva errori di sistema"
_tr_add2 after_install_dsitip  "Rileva qualsiasi potenziale problema nei pacchetti di sistema o altrove"

_tr_add2 after_install_etl     "EndeavourOS più recente$_question"
_tr_add2 after_install_etltip  "Mostra cosa fare per portare il tuo sistema alla versione più recente di EndeavourOS"

_tr_add2 after_install_cdm     "Cambia Display Manager"
_tr_add2 after_install_cdmtip  "Usa un altro display manager"

_tr_add2 after_install_ew      "Sfondo predefinito di EndeavourOS"     # era: "Sfondo di EndeavourOS"
_tr_add2 after_install_ewtip   "Ripristina lo sfondo predefinito"      # era: "Imposta lo sfondo del desktop predefinito di EOS"


_tr_add2 after_install_pm      "Gestione dei pacchetti"
_tr_add2 after_install_pmtip   "Come gestire i pacchetti con pacman"

_tr_add2 after_install_ay      "AUR $_and yay$_exclamation"
_tr_add2 after_install_aytip   "Informazioni sull'Arch User Repository e su yay"

_tr_add2 after_install_hn      "Hardware e Rete"
_tr_add2 after_install_hntip   "Fai funzionare il tuo hardware"

_tr_add2 after_install_bt      "Bluetooth"
_tr_add2 after_install_bttip   "Consigli sul bluetooth"

_tr_add2 after_install_nv      "Utenti NVIDIA$_exclamation"
_tr_add2 after_install_nvtip   "Usa il programma di installazione NVIDIA"

_tr_add2 after_install_ft      "Consigli dal forum"
_tr_add2 after_install_fttip   "Aiutaci ad aiutarti$_exclamation"


_tr_add2 general_info_text     "Trova la tua strada sul sito di EndeavourOS$_exclamation"

_tr_add2 general_info_ws       "Sito Web"

_tr_add2 general_info_wi       "Wiki"
_tr_add2 general_info_witip    "Articoli in primo piano"

_tr_add2 general_info_ne       "Notizie"
_tr_add2 general_info_netip    "Notizie e articoli"

_tr_add2 general_info_fo       "Forum"
_tr_add2 general_info_fotip    "Chiedi, commenta, e chatta nel nostro amichevole forum$_exclamation"

_tr_add2 general_info_do       "Fai una donazione"
_tr_add2 general_info_dotip    "Aiutaci a mantenere in vita EndeavourOS"

_tr_add2 general_info_ab       "Informazioni su $PRETTY_PROGNAME"
_tr_add2 general_info_abtip    "Maggiori informazioni su questa applicazione"


_tr_add2 add_more_apps_text    "Installa applicazioni popolari"

_tr_add2 add_more_apps_lotip   "Programmi per l'ufficio (libreoffice-fresh)"

_tr_add2 add_more_apps_ch      "Chromium Web Browser"
_tr_add2 add_more_apps_chtip   "Web Browser"

_tr_add2 add_more_apps_fw      "Firewall"
_tr_add2 add_more_apps_fwtip   "Gufw firewall"

_tr_add2 add_more_apps_bt      "Bluetooth (blueberry) per Xfce"
_tr_add2 add_more_apps_bt_bm   "Bluetooth (blueman) per Xfce"


####################### NUOVE STRINGHE DOPO QUESTA RIGA:

_tr_add2 settings_dis_contents   "Per eseguire nuovamente $PRETTY_PROGNAME, apri un terminale ed esegui:\n<tt>   $PROGNAME --enable</tt>\noppure\n<tt>   $PROGNAME --once</tt>\n"  # modificato leggermente il 21-Dic-2021; modificato nuovamente il 06-Apr-2022
_tr_add2 settings_dis_text       "Riabilitare $PRETTY_PROGNAME:"
_tr_add2 settings_dis_title      "Come riabilitare $PRETTY_PROGNAME"
_tr_add2 settings_dis_butt       "Me lo ricordo"
_tr_add2 settings_dis_buttip     "Sono sicuro"

_tr_add2 help_butt_title         "$PRETTY_PROGNAME Aiuto"
_tr_add2 help_butt_text          "Maggiori informazioni sull'applicazione $PRETTY_PROGNAME"

_tr_add2 dm_title                "Seleziona un Display Manager"
_tr_add2 dm_col_name1            "Selezionato"
_tr_add2 dm_col_name2            "Nome DM"

_tr_add2 dm_reboot_required      "É necessario riavviare il sistema per applicare le modifiche."
_tr_add2 dm_changed              "DM cambiato in: "
_tr_add2 dm_failed               "Modifica del DM non riuscita."
_tr_add2 dm_warning_title        "Attenzione"

_tr_add2 install_installer       "Programma di installazione"
_tr_add2 install_already         "già installato"
_tr_add2 install_ing             "Installazione"
_tr_add2 install_done            "Completata."

_tr_add2 sysup_no                "Nessun aggiornamento disponibile."
_tr_add2 sysup_check             "Verifica aggiornamenti software..."

_tr_add2 issues_title            "Rilevamento di problemi con i pacchetti"
_tr_add2 issues_grub             "IMPORTANTE: sarà necessario ricreare manualmente il menù di avvio."
_tr_add2 issues_run              "Esecuzione dei comandi:"
_tr_add2 issues_no               "Non sono stati rilevati problemi importanti nel sistema."

_tr_add2 cal_noavail            "Non disponibile: "        # programma di installazione
_tr_add2 cal_warn               "Attenzione"
_tr_add2 cal_info1              "Questo è un rilascio di sviluppo della comunità.\n\n"                                   # i caratteri speciali sono necesari!
_tr_add2 cal_info2              "<b>Offline</b>: questo metodo fornisce il desktop %%s.\nNon è richiesta una connessione a Internet.\n\n"
_tr_add2 cal_info3              "<b>Online</b>: questo metodo ti permette di scegliere il tuo desktop.\nÉ richiesta una connessione a Internet.\n\n"
_tr_add2 cal_info4              "Nota: Questo rilascio è ancora in fase di sviluppo, per favore aiutaci a renderlo stabile segnalando i bug che riscontri.\n"
_tr_add2 cal_info5              "\nSi consiglia di aggiornare il sistema dopo l'installazione.\n\n"
_tr_add2 cal_info6              "\nDopo l'installazione il sistema sarà già aggiornato.\n\n"
_tr_add2 cal_choose             "Scegli un metodo di installazione"
_tr_add2 cal_method             "Metodo"
_tr_add2 cal_nosupport          "$PROGNAME: modalità non supportata: "
_tr_add2 cal_nofile             "$PROGNAME: il file richiesto non esiste: "
_tr_add2 cal_istarted           "Installazione avviata"
_tr_add2 cal_istopped           "Installazione completata"

_tr_add2 tail_butt              "Chiudi questa finestra"
_tr_add2 tail_buttip            "Chiudi solo questa finestra"


_tr_add2 ins_text              "Installazione di EndeavourOS su disco"
_tr_add2 ins_start             "Avvia il programma di installazione"
_tr_add2 ins_starttip          "Avvia il programma di installazione di EndeavourOS (scegli tra i principali desktop)"   # modificato il 12-Gen-2023
_tr_add2 ins_up                "Aggiorna questa applicazione$_exclamation"
_tr_add2 ins_uptip             "Aggiorna questa applicazione e la riavvia"
_tr_add2 ins_keys              "Inizializza le chiavi di pacman"
_tr_add2 ins_keystip           "Inizializza le chiavi di pacman"
_tr_add2 ins_pm                "Gestisci le partizioni"
_tr_add2 ins_pmtip             "Gparted consente di esaminare e gestire le partizioni e la struttura del disco"
_tr_add2 ins_rel               "Informazioni sull'ultimo rilascio"
_tr_add2 ins_reltip            "Maggiori informazioni sull'ultimo rilascio"
_tr_add2 ins_tips              "Consigli per l'installazione"
_tr_add2 ins_tipstip           "Consigli per l'installazione"
_tr_add2 ins_trouble           "Risoluzione di problemi"
_tr_add2 ins_troubletip        "Ripristina il sistema"

_tr_add2 after_install_us_from    "Ricerca di aggiornamenti su"                            # AUR o upstream
_tr_add2 after_install_us_el      "Sono richiesti privilegi elevati."
_tr_add2 after_install_us_done    "aggiornamento completato con successo."
_tr_add2 after_install_us_fail    "aggiornamento fallito$_exclamation"

# 14-Mag-2020:

_tr_add2 nb_tab_UsefulTips     "Consigli"
_tr_add2 useful_tips_text      "Consigli utili"

# 16-Mag-2020:

_tr_add2 butt_changelog        "Changelog"
_tr_add2 butt_changelogtip     "Mostra il changelog di Welcome"

_tr_add2 after_install_themevan      "Tema originale di Xfce"
_tr_add2 after_install_themevantip   "Usa il tema originale di Xfce"

_tr_add2 after_install_themedef     "Tema predefinito di EndeavourOS per Xfce"
_tr_add2 after_install_themedeftip  "Usa il tema predefinito di EndeavourOS per Xfce"

# 28-Giu-2020:
_tr_add2 after_install_pclean       "Configurazione della pulizia dei pacchetti"
_tr_add2 after_install_pcleantip    "Configura il servizio di pulizia della cache dei pacchetti"

# 04-Lug-2020:
_tr_add2 nb_tab_OwnCommands         "Comandi Personali"                   # modificato il 08-Lug-2020
_tr_add2 nb_tab_owncmds_text        "Comandi Personalizzati"              # modificato il 08-Lug-2020

# 08-Lug-2020:
_tr_add2 nb_tab_owncmdstip          "Aiuto sull'aggiunta di comandi personali"

_tr_add2 add_more_apps_akm          "A Kernel Manager"
_tr_add2 add_more_apps_akmtip       "Un piccolo gestore per i kernel Linux che mostra varie informazioni"

# 15-Lug-2020:
_tr_add2 butt_owncmds_help        "Tutorial: Comandi Personali"

# 05-Ago-2020:
_tr_add2 butt_owncmds_dnd         "Comandi Personali drag${_and}drop"
_tr_add2 butt_owncmds_dnd_help    "Mostra una finestra in cui trascinare degli elementi per creare nuovi pulsanti"

# 03-Set-2020:
_tr_add2 ins_reso                 "Modifica la risoluzione dello schermo"
_tr_add2 ins_resotip              "Modifica subito la risoluzione dello schermo"

# 08-Set-2020:
_tr_add2 add_more_apps_arch          "Visualizza tutti i pacchetti di Arch"
_tr_add2 add_more_apps_aur           "Visualizza tutti i pacchetti dell'AUR"
_tr_add2 add_more_apps_done1_text    "Le applicazioni suggerite sono già installate$_exclamation"
_tr_add2 add_more_apps_done2_text    "o visualizza tutti i pacchetti di Arch e dell'AUR"
_tr_add2 add_more_apps_done2_tip1    "Per installarli, usa 'pacman' o 'yay'"
_tr_add2 add_more_apps_done2_tip2    "Per installarli, usa 'yay'"

# 11-Set-2020:
_tr_add2 after_install_ew2        "Scegli uno degli sfondi di EndeavourOS"     # era: "Sfondo di EndeavourOS (scegli)"
_tr_add2 after_install_ewtip2     "Selettore di sfondi"                        # era: "Scegli tra gli sfondi predefiniti di EndeavourOS"

# 15-Set-2020:
#    NOTA IMPORTANTE:
#       - riga 71:  modificato il testo di 'after_install_ew'
#       - riga 72:  modificato il testo di 'after_install_ewtip'
#       - riga 249: modificato il testo di 'after_install_ew2'
#       - riga 250: modificato il testo di 'after_install_ewtip2'

# 24-Ott-2020:
_tr_add2 updt_update_check        "controllo gli aggiornamenti"
_tr_add2 updt_searching           "Ricerca di aggiornamenti su"
_tr_add2 updt_for_updates         "in corso"
_tr_add2 updt_failure             "fallimento$_exclamation"
_tr_add2 updt_nothing_todo        "non c'è nulla da fare"
_tr_add2 updt_press_enter         "Premi INVIO per chiudere questa finestra"

# 24-Ott-2020:
#    NOTA IMPORTANTE:
#       - riga 244: modificato il testo di 'add_more_apps_done2_text'

# 11-Dic-2020:
_tr_add2 after_install_pacdiff_tip "Gestisci i file pacnew, pacorig e pacsave con pacdiff e"

# 07-Apr-2021:
_tr_add2 after_install_conf           "Configura"                              # verbo iniziale della frase "Configura eos-update-notifier"
_tr_add2 after_install_more_wall      "Scarica altri sfondi di EndeavourOS"
_tr_add2 after_install_more_wall_tip  "Scarica gli sfondi classici di EndeavourOS e quelli realizzati dalla comunità"
_tr_add2 after_install_info           "informazioni"                           # ultima parola di una frase, significa semplicemente una qualsiasi informazione

_tr_add2 butt_softnews                "Notizie sul Software"
_tr_add2 butt_softnews_tip            "Notizie importanti sul software di EndeavourOS"

_tr_add2 install_community            "Installa le edizioni della communità"
_tr_add2 install_community_tip        "Raccolta delle edizioni della comunità (prevalentemente Window Managers)"    # modificata il 23-Ott-2021, 12-Gen-2023

# 01-Mag-2021
_tr_add2 ins_syslog                   "Come condividere i log di sistema"
_tr_add2 ins_syslogtip                "Spiega come puoi condividere i log di sistema quando hai bisogno di aiuto"
_tr_add2 ins_logtool                  "Log per la risoluzione di problemi"
_tr_add2 ins_logtooltip               "Seleziona, crea e condividi i log per la risoluzione di problemi quando hai bisogno di aiuto"

# 20-Mag-2021
_tr_add2 nb_tab_DailyAssistant       "Assistenza"
_tr_add2 daily_assistant_text        "Strumenti per le attività utili e/o quotidiane"
_tr_add2 after_install_itab          "Seleziona la scheda iniziale di Welcome"
_tr_add2 after_install_itab_tip      "Scegli quale scheda di Welcome verrà aperta all'avvio"

# 08-Giu-2021
_tr_add2 daily_assist_apps           "Applicazioni per categoria"
_tr_add2 daily_assist_apps_tip       "Applicazioni suddivise per categoria"

_tr_add2 after_install_vbox1         "Abilita le VirtualBox Guest Utilities"
_tr_add2 after_install_vbox2         "Per abilitare le VirtualBox Guest Utilities, seleziona la scheda <b>Post Installazione</b> e clicca sul pulsante "

# 17-Giu-2021
_tr_add2 after_install_r8168         "Problemi con la rete cablata$_question Alterna i driver r8168 e r8169 $_exclamation"    # modificata il 14-Dic-2021 !!
_tr_add2 after_install_r8168_tip     "Alterna i driver r8168 e r8169 (potrebbe essere necessario riavviare il sistema)"       # modificata il 14-Dic-2021 !!

# 08-Ott-2021
_tr_add2 daily_assist_DEinfo         "informazioni"                                            # assume il prefisso "Ambiente desktop:", es: "Xfce: informazioni"
_tr_add2 daily_assist_DEinfo_tip     "maggiori informazioni su questo Desktop/Window Manager"  # assume il prefisso "Ambiente desktop:", es: "Xfce: maggiori informazioni ..."

# 16-Feb-2022
_tr_add2 add_more_apps_qs            "Scegli delle applicazioni popolari da installare"        # esegue eos-quickstart
_tr_add2 add_more_apps_qstip         "Scegli delle applicazioni popolari e installale"

# 21-Mar-2022
_tr_add2 ins_blue_notes              "Note sul bluetooth"
_tr_add2 ins_blue_notes_tip          "Note sulla configurazione del bluetooth"

# 27-Mar-2022
_tr_add2 after_install_fw            "Informazioni sul firewall"
_tr_add2 after_install_fwtip         "Informazioni sul firewall predefinito"

# 30-Mar-2022
_tr_add2 ins_custom                  "Personalizzare il processo di installazione"
_tr_add2 ins_custom_tip              "Come personalizzare il processo di installazione"

# 15-Lug-2022
_tr_add2 daily_assist_anews          "Ultime notizie su Arch"
_tr_add2 daily_assist_anewstip       "Mostra le ultime notizie su Arch in un browser"

# 25-Set-2022
_tr_add2 nb_nofify_user1             "Sono state pubblicate delle notizie importanti in data"           # una (o più) date, es: 18-Feb-2023
_tr_add2 nb_nofify_user2             "Per favore clicca sul pulsante"                                   # Notizie sul Software
_tr_add2 nb_nofify_user3             "che trovi nell'angolo inferiore sinistro di questa finestra."

# 20-Feb-2023
_tr_add2 ins_customized              "Scarica il tuo file per l'installazione personalizzata (avanzato)"
_tr_add2 ins_cust_text               "Inserisci l'URL del tuo file user_commands.bash personalizzato"
_tr_add2 ins_cust_text2              "Il file scaricato sostituirà ~/user_commands.bash"
_tr_add2 ins_cust_text3              "Questo è particolarmente utile per l'installazione <b>online</b>"

# 29-Mar-2023
_tr_add2 ins_no_connection           "Nota: nessuna connessione a Internet disponibile, alcuni pulsanti sono nascosti o non funzionano."

# 25-Ago-2023
_tr_add2 ins_pmtip2                  "Il gestore delle partizioni di KDE consente di esaminare e gestire le partizioni e la struttura del disco"

# 16-Set-2023
_tr_add2 ins_arm_start             "Scarica e installa l'immagine di EndeavourOS per ARM"
_tr_add2 ins_arm_starttip          "Avvia l'installazione di EndeavourOS per ARM"

