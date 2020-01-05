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

_tr_add2 welcome_disabled      "$PRETTY_PROGNAME app ist deaktiviert. Um sie trotzdem zu starten, benutze --enable."

_tr_add2 butt_later            "Bis Später"
_tr_add2 butt_latertip         "Behalte $PRETTY_PROGNAME aktiviert"

_tr_add2 butt_noshow           "Nicht mehr automatisch starten"
_tr_add2 butt_noshowtip        "Deaktiviere $PRETTY_PROGNAME"

_tr_add2 butt_help             "Hilfe"


_tr_add2 nb_tab_INSTALL        "Installiere"
_tr_add2 nb_tab_GeneralInfo    "Allgemeine Informationen"
_tr_add2 nb_tab_AfterInstall   "Nach der Installation"
_tr_add2 nb_tab_AddMoreApps    "Füge mehr Programme hinzu"


_tr_add2 after_install_text    "Erledigungen nach der Installation"

_tr_add2 after_install_um      "Erneuere die Spiegelserver Liste"
_tr_add2 after_install_umtip   "Erneuere die Liste der Spiegelserver vor dem Systemupdate"

_tr_add2 after_install_us      "System Update"
_tr_add2 after_install_ustip   "System Software Update"

_tr_add2 after_install_dsi     "Suche nach System Problemen"
_tr_add2 after_install_dsitip  "Sucht nach Problemen mit Systemeinstellungen oder Paketen"

_tr_add2 after_install_etl     "EndeavourOS auf dem letzten Stand$_question"
_tr_add2 after_install_etltip  "Zeigt an was zu tun ist um das System auf den neuesten EndeavourOS Stand zu bringen"

_tr_add2 after_install_cdm     "Ändere den Login-Manager"
_tr_add2 after_install_cdmtip  "benutze einen anderen Login-Manager"

_tr_add2 after_install_ew      "EndeavourOS Hintergrund"
_tr_add2 after_install_ewtip   "Benutze den EndeavourOS Bildschirm-Hintergrund"


_tr_add2 after_install_pm      "Paket Verwaltung"
_tr_add2 after_install_pmtip   "Wie verwalte ich meine Pakete mit pacman"

_tr_add2 after_install_ay      "AUR $_and yay$_exclamation"
_tr_add2 after_install_aytip   "Arch User Repository und yay info"

_tr_add2 after_install_hn      "Hardware und Netzwerk"
_tr_add2 after_install_hntip   "Bring deine Hardware zum Laufen"

_tr_add2 after_install_bt      "Bluetooth"
_tr_add2 after_install_bttip   "Bluetooth Informationen"

_tr_add2 after_install_nv      "NVIDIA Nutzer$_exclamation"
_tr_add2 after_install_nvtip   "Wie funktioniert der Nvidia-Installer"

_tr_add2 after_install_ft      "Forum tips"
_tr_add2 after_install_fttip   "Hilf uns dir zu helfen!"


_tr_add2 general_info_text     "Finde dich auf der EndeavourOS Webseite zurecht$_exclamation"

_tr_add2 general_info_ws       "Webseite"

_tr_add2 general_info_wi       "Wiki"
_tr_add2 general_info_witip    "Interessante Einträge"

_tr_add2 general_info_ne       "Neuigkeiten"
_tr_add2 general_info_netip    "Neuigkeiten und Berichte"

_tr_add2 general_info_fo       "Forum"
_tr_add2 general_info_fotip    "Erhalte Hilfe in unserem freundlichen und offenem Forum"

_tr_add2 general_info_do       "Spenden"
_tr_add2 general_info_dotip    "Unterstütze unsere Arbeit mit einer Spende"

_tr_add2 general_info_ab       "Über $PRETTY_PROGNAME"
_tr_add2 general_info_abtip    "Wichtige Informationen über diese App"


_tr_add2 add_more_apps_text    "Installiere einige nützliche Programme"

_tr_add2 add_more_apps_lotip   "Office Anwendung (libreoffice-fresh)"

_tr_add2 add_more_apps_ch      "Chromium Web Browser"
_tr_add2 add_more_apps_chtip   "Web Browser"

_tr_add2 add_more_apps_fw      "Firewall"
_tr_add2 add_more_apps_fwtip   "Gufw Firewall"

_tr_add2 add_more_apps_bt      "Bluetooth Manager für Xfce"
_tr_add2 add_more_apps_bttip   "Blueberry"

