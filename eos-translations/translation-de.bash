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

# German:

### First some useful definitions:

_tr_lang=de            # required helper variable for _tr_add2

# Help with some special characters (HTML). Yad has problems without them:
_exclamation='&#33;'   # '!'
_and='&#38;'           # '&'
_question='&#63;'      # '?'


###################### Now the actual strings to be translated: ######################
# func   <placeholder>         "string"

_tr_add2 welcome_disabled      "$PRETTY_PROGNAME App ist deaktiviert. Um sie zu starten, benutze --enable."

_tr_add2 butt_later            "Bis später"
_tr_add2 butt_latertip         "$PRETTY_PROGNAME aktiviert lassen"

_tr_add2 butt_noshow           "Nicht mehr starten"
_tr_add2 butt_noshowtip        "$PRETTY_PROGNAME deaktivieren"

_tr_add2 butt_help             "Hilfe"


_tr_add2 nb_tab_INSTALL        "Installiere"
_tr_add2 nb_tab_GeneralInfo    "Allgemeine Informationen"
_tr_add2 nb_tab_AfterInstall   "Nach der Installation"
_tr_add2 nb_tab_AddMoreApps    "Füge mehr Programme hinzu"


_tr_add2 after_install_text    "Aufgaben nach der Installation"

_tr_add2 after_install_um      "Spiegelserver-Liste aktualisieren"
_tr_add2 after_install_umtip   "Aktualisiere die Liste der Spiegelserver vor dem Systemupdate"

_tr_add2 after_install_us      "System Update"
_tr_add2 after_install_ustip   "System Software Update"

_tr_add2 after_install_dsi     "Systemprobleme erkennen"
_tr_add2 after_install_dsitip  "Mögliche Probleme bei Systempaketen oder an anderer Stelle erkennen"

_tr_add2 after_install_etl     "EndeavourOS auf dem aktuellsten Stand$_question"
_tr_add2 after_install_etltip  "Zeigt, was zu tun ist, um dein System auf den neuesten Stand von EndeavourOS zu bringen"

_tr_add2 after_install_cdm     "Display-Manager ändern"
_tr_add2 after_install_cdmtip  "Benutze einen anderen Display-Manager"

_tr_add2 after_install_ew      "EndeavourOS Standard-Hintergrund"
_tr_add2 after_install_ewtip   "Zurücksetzen auf das Standard-Hintergrundbild"


_tr_add2 after_install_pm      "Paketverwaltung"
_tr_add2 after_install_pmtip   "Wie man Pakete mit pacman verwaltet"

_tr_add2 after_install_ay      "AUR $_and yay$_exclamation"
_tr_add2 after_install_aytip   "Info zum Arch User Repository und yay"

_tr_add2 after_install_hn      "Hardware und Netzwerk"
_tr_add2 after_install_hntip   "Bring deine Hardware zum Laufen"

_tr_add2 after_install_bt      "Bluetooth"
_tr_add2 after_install_bttip   "Bluetooth-Hinweise"

_tr_add2 after_install_nv      "NVIDIA-Nutzer$_exclamation"
_tr_add2 after_install_nvtip   "Wie funktioniert der Nvidia-Installer"

_tr_add2 after_install_ft      "Forum-Tipps"
_tr_add2 after_install_fttip   "Hilf uns dir zu helfen$_exclamation"


_tr_add2 general_info_text     "Erkunde die EndeavourOS Webseite$_exclamation"

_tr_add2 general_info_ws       "Webseite"

_tr_add2 general_info_wi       "Wiki"
_tr_add2 general_info_witip    "Herausgehobene Artikel"

_tr_add2 general_info_ne       "Neuigkeiten"
_tr_add2 general_info_netip    "Neuigkeiten und Artikel"

_tr_add2 general_info_fo       "Forum"
_tr_add2 general_info_fotip    "Stell Fragen, kommentiere und plaudere in unserem freundlichen Forum!"

_tr_add2 general_info_do       "Spenden"
_tr_add2 general_info_dotip    "Hilf uns, EndeavourOS am Laufen zu halten"

_tr_add2 general_info_ab       "Über $PRETTY_PROGNAME"
_tr_add2 general_info_abtip    "Wichtige Informationen über diese App"


_tr_add2 add_more_apps_text    "Beliebte Anwendungen installieren"

_tr_add2 add_more_apps_lotip   "Office-Anwendung (libreoffice-fresh)"

_tr_add2 add_more_apps_ch      "Chromium Webbrowser"
_tr_add2 add_more_apps_chtip   "Webbrowser"

_tr_add2 add_more_apps_fw      "Firewall"
_tr_add2 add_more_apps_fwtip   "Gufw Firewall"

_tr_add2 add_more_apps_bt      "Bluetooth (blueberry) für Xfce4"
_tr_add2 add_more_apps_bt_bm   "Bluetooth (blueman) für Xfce4"


####################### NEW STUFF AFTER THIS LINE:

_tr_add2 settings_dis_contents   "Um $PRETTY_PROGNAME erneut zu starten, führe diesen Befehl im Terminal aus:\n<tt>   $PROGNAME --enable</tt>\n"
_tr_add2 settings_dis_text       "$PRETTY_PROGNAME reaktivieren:"
_tr_add2 settings_dis_title      "Wie kann ich $PRETTY_PROGNAME wieder aktivieren?"
_tr_add2 settings_dis_butt       "Merke ich mir$_exclamation"
_tr_add2 settings_dis_buttip     "Versprochen"

_tr_add2 help_butt_title         "$PRETTY_PROGNAME Hilfe"
_tr_add2 help_butt_text          "Mehr Informationen über das Programm $PRETTY_PROGNAME"

_tr_add2 dm_title                "Display-Manager auswählen"
_tr_add2 dm_col_name1            "Ausgewählt"
_tr_add2 dm_col_name2            "Name des DM"

_tr_add2 dm_reboot_required      "Ein Neustart ist erforderlich, um die Änderungen anzuwenden."
_tr_add2 dm_changed              "Neuer DM: "
_tr_add2 dm_failed               "Änderung des DM fehlgeschlagen."
_tr_add2 dm_warning_title        "Warnung"

_tr_add2 install_installer       "Installer"
_tr_add2 install_already         "bereits installiert"
_tr_add2 install_ing             "Installiere"
_tr_add2 install_done            "Abgeschlossen."

_tr_add2 sysup_no                "Keine Updates."
_tr_add2 sysup_check             "Überprüfe auf Software-Updates..."

_tr_add2 issues_title            "Prüfe auf Paketprobleme"
_tr_add2 issues_grub             "WICHTIG: Das Bootmenü muss manuell neu erstellt werden."
_tr_add2 issues_run              "Führe Befehle aus:"
_tr_add2 issues_no               "Es wurden keine wichtigen Systemprobleme festgestellt."

_tr_add2 cal_noavail            "Nicht verfügbar: "        # installer program
_tr_add2 cal_warn               "Warnung"
_tr_add2 cal_info1              "Dies ist eine Community-Entwicklungsversion.\n\n"                                   # specials needed!
_tr_add2 cal_info2              "<b>Offline</b>Mit dieser Methode erhältst du einen Xfce4-Desktop mit EndeavourOS-Theme.\nEs ist keine Internetverbindung erforderlich.\n\n"
_tr_add2 cal_info3              "<b>Online</b>Mit dieser Methode kannst du eine der Desktop-Umgebungen ohne verändertes Thema auswählen.\nEs wird eine Internetverbindung benötigt.\n\n"
_tr_add2 cal_info4              "Bitte beachte: Diese Version liefert einen unfertigen Zustand. Bitte hilf uns sie stabil zu machen, indem du uns Fehler meldest.\n"
_tr_add2 cal_choose             "Wähle die Installationsmethode"
_tr_add2 cal_method             "Methode"
_tr_add2 cal_nosupport          "$PROGNAME: Methode nicht unterstützt: "
_tr_add2 cal_nofile             "$PROGNAME: Benötigte Datei ist nicht verfügbar: "
_tr_add2 cal_istarted           "Installation gestartet"
_tr_add2 cal_istopped           "Installation abgeschlossen"

_tr_add2 tail_butt              "Dieses Fenster schließen"
_tr_add2 tail_buttip            "Nur dieses Fenster schließen"


_tr_add2 ins_text              "EndeavourOS auf der Festplatte installieren"
_tr_add2 ins_start             "Das Installationsprogramm starten"
_tr_add2 ins_starttip          "Starte das EndeavourOS-Installationsprogramm zusammen mit einem Terminal zur Fehlersuche"
_tr_add2 ins_up                "Dieses Programm aktualisieren$_exclamation"
_tr_add2 ins_uptip             "Aktualisiert dieses Programm startet es neu"
_tr_add2 ins_keys              "Pacman-Schlüssel initialisieren"
_tr_add2 ins_keystip           "Initialisiere die von Pacman benötigten Schlüsseldateien"
_tr_add2 ins_pm                "Partitionsverwaltung"
_tr_add2 ins_pmtip             "Gparted ermöglicht das Untersuchen und Verwalten von Festplattenpartitionen sowie deren Struktur"
_tr_add2 ins_rel               "Informationen zur neuesten Veröffentlichung"
_tr_add2 ins_reltip            "Mehr Informationen zur neuesten Veröffentlichung"
_tr_add2 ins_tips              "Installationstipps"
_tr_add2 ins_tipstip           "Installationstipps"
_tr_add2 ins_trouble           "Fehlerbehebung"
_tr_add2 ins_troubletip        "Systemrettung"

_tr_add2 after_install_us_from    "Aktualisiert von"                            # AUR or upstream
_tr_add2 after_install_us_el      "Erweiterte Rechte werden benötigt."
_tr_add2 after_install_us_done    "Update erledigt."
_tr_add2 after_install_us_fail    "Update fehlgeschlagen$_exclamation"

# 2020-May-14:

_tr_add2 nb_tab_UsefulTips     "Tipps"
_tr_add2 useful_tips_text      "Hilfreiche Tipps"

# 2020-May-16:

_tr_add2 butt_changelog        "Änderungsprotokoll"
_tr_add2 butt_changelogtip     "Zeige das Änderungsprotokoll von Welcome"

_tr_add2 after_install_themevan      "Xfce vanilla Thema"
_tr_add2 after_install_themevantip   "Benutze das unveränderte Thema von Xfce"

_tr_add2 after_install_themedef     "Xfce EndeavourOS Thema"
_tr_add2 after_install_themedeftip  "Benutze das Standard-Thema von EndeavourOS für Xfce"

# 2020-Jun-28:
_tr_add2 after_install_pclean       "Konfiguration der Paketbereinigung"
_tr_add2 after_install_pcleantip    "Konfiguriere den Bereinigungsdienst des Paketcaches"

# 2020-Jul-04:
_tr_add2 nb_tab_OwnCommands         "Persönliche Befehle"                   # modified 2020-Jul-08
_tr_add2 nb_tab_owncmds_text        "Personalisierte Befehle"               # modified 2020-Jul-08

# 2020-Jul-08:
_tr_add2 nb_tab_owncmdstip          "Hilfe beim Hinzufügen persönlicher Befehle"

_tr_add2 add_more_apps_akm          "Ein Kernel-Verwalter"
_tr_add2 add_more_apps_akmtip       "Ein kleiner Linux-Kernelverwalter und Informationsquelle"

# 2020-Jul-15:
_tr_add2 butt_owncmds_help        "Anleitung: Persönliche Befehle"

# 2020-Aug-05:
_tr_add2 butt_owncmds_dnd         "Persönliche Befehle drag${_and}drop"
_tr_add2 butt_owncmds_dnd_help    "Zeigt ein Fenster zum Ziehen von Feldelementen für neue Schaltflächen"

# 2020-Sep-03:
_tr_add2 ins_reso                 "Bildschirmauflösung ändern"
_tr_add2 ins_resotip              "Ändere jetzt die Bildschirmauflösung"

# 2020-Sep-08:
_tr_add2 add_more_apps_arch          "Alle Arch-Pakete durchsuchen"
_tr_add2 add_more_apps_aur           "Alle AUR-Pakete durchsuchen"
_tr_add2 add_more_apps_done1_text    "Empfohlene Programme sind bereits installiert$_exclamation"
_tr_add2 add_more_apps_done2_text    "oder durchstöbere alle Arch- und AUR-Pakete"
_tr_add2 add_more_apps_done2_tip1    "Benutze 'pacman' oder 'yay' zum Installieren"
_tr_add2 add_more_apps_done2_tip2    "Benutze 'yay' zum Installieren"

# 2020-Sep-11:
_tr_add2 after_install_ew2      "Eines der EndeavourOS Hintergrundbilder auswählen"
_tr_add2 after_install_ewtip2   "Bildschirmhintergrund-Auswahl"

# 2020-Sep-15:
#    IMPORTANT NOTE:
#       - line 71:  changed text of 'after_install_ew'
#       - line 72:  changed text of 'after_install_ewtip'
#       - line 249: changed text of 'after_install_ew2'
#       - line 250: changed text of 'after_install_ewtip2'
# 2020-Oct-23:
_tr_add2 updt_update_check        "Update-Check"
_tr_add2 updt_searching           "Suche"
_tr_add2 updt_for_updates         "nach Updates"
_tr_add2 updt_failure             "Fehler$_exclamation"
_tr_add2 updt_nothing_todo        "Es gibt nichts zu tun"
_tr_add2 updt_press_enter         "Drücke ENTER um dieses Fenster zu schließen"

# 2020-Oct-24:
#    IMPORTANT NOTE:
#       - line 244: changed text of 'add_more_apps_done2_text'

# 2020-Dec-11:
_tr_add2 after_install_pacdiff_tip "Verwalte pacnew, pacorig $_and pacsave Dateien mit pacdiff $_and"

# 2021-Apr-07:
_tr_add2 after_install_conf           "Konfiguriere"                             # a starting verb on a sentence "Configure eos-update-notifier"
_tr_add2 after_install_more_wall      "Mehr EndeavourOS Hintergründe herunterladen"
_tr_add2 after_install_more_wall_tip  "Ältere EndeavourOS und Community Hintergründe herunterladen"
_tr_add2 after_install_info           "Information"                           # last word on a sentence, means just any information

_tr_add2 butt_softnews                "Software-Neuigkeiten"
_tr_add2 butt_softnews_tip            "Wichtige Neuigkeiten über EndeavourOS Software"

_tr_add2 install_community            "Community Editionen installieren"
_tr_add2 install_community_tip        "Sammlung von Community Editionen (benötigt Online-Verbindung)"  # changed 2021-Oct-23

# 2021-May-01
_tr_add2 ins_syslog                   "Weitergabe von System-Logs"
_tr_add2 ins_syslogtip                "Erklärt, wie du System-Logs weitergeben kannst, wenn du Hilfe brauchst"
_tr_add2 ins_logtool                  "Logs zur Fehlerbehebung"
_tr_add2 ins_logtooltip               "Logs zur Fehlerbehebung auswählen, erstellen und weitergeben, wenn du Hilfe brauchst"


# 2021-May-20
_tr_add2 nb_tab_DailyAssistant       "Assistent"
_tr_add2 daily_assistant_text        "Werkzeuge für nützliche und/oder tägliche Aufgaben"
_tr_add2 after_install_itab          "Wähle bevorzugten Welcome Tab"
_tr_add2 after_install_itab_tip      "Legt den Tab fest, den Welcome beim Start anzeigt"

# 2021-Jun-08
_tr_add2 daily_assist_apps           "Anwendungskategorien"
_tr_add2 daily_assist_apps_tip       "Anwendungen, sortiert nach Kategorie"

_tr_add2 after_install_vbox1         "VirtualBox-Gasterweiterungen aktivieren"
_tr_add2 after_install_vbox2         "Um die VirtualBox-Gasterweiterungen zu aktivieren, wähle das Tab <b>AfterInstall</b> und klicke auf die Schaltfläche "

# 2021-Jun-17
_tr_add2 after_install_r8168         "Kabelnetzwerk-Probleme$_question Tausche Treiber r8168 und r8169$_exclamation"
_tr_add2 after_install_r8168_tip     "Wechsle zwischen den Treibern r8168 und r8169 (Neustart erforderlich)"

# 2021-Oct-08
_tr_add2 daily_assist_DEinfo         "Information"                                         # assume prefix "DE:", e.g.: "Xfce: information"
_tr_add2 daily_assist_DEinfo_tip     "mehr Informationen über diesen Desktop/Fenster-Manager"  # assume prefix "DE:", e.g.: "Xfce: more information ..."

# 2022-Feb-16
_tr_add2 add_more_apps_qs            "Wähle beliebte Anwendungen zur Installation aus"                      # runs eos-quickstart
_tr_add2 add_more_apps_qstip         "Wähle beliebte Anwendungen und installiere diese"

# 2022-Mar-21
_tr_add2 ins_blue_notes              "Hilfe für Bluetooth"
_tr_add2 ins_blue_notes_tip          "Anleitung zur Bluetooth Nutzung"

# 2022-Mar-27
_tr_add2 after_install_fw            "Firewall Information"
_tr_add2 after_install_fwtip         "Information über die installierte Firewall"

# 2022-Mar-30
_tr_add2 ins_custom                  "Anpassen des Installationsprozesses"
_tr_add2 ins_custom_tip              "Möglichkeiten die Installation anzupassen"


# 2022-Jul-15
_tr_add2 daily_assist_anews          "Archlinux Neugkeiten"
_tr_add2 daily_assist_anewstip       "Zeigt Neugkeiten über Archlinux im Browser an"


# 2022-Sep-25
_tr_add2 nb_nofify_user1             "Wichtige Neuigkeiten"
_tr_add2 nb_nofify_user2             "Bitte klicke auf die"                                  # Software News
_tr_add2 nb_nofify_user3             "Schaltfläche, links unten im Fenster."
