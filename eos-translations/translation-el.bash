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

# Ελληνικά:

### First some useful definitions:

_tr_lang=el            # required helper variable for _tr_add2

# Help with some special characters (HTML). Yad has problems without them:
_exclamation='&#33;'   # '!'
_and='&#38;'           # '&'
_question='&#59;'      # ';'
_lquote='&#171;'       # '«'
_rquote='&#187;'       # '»'


###################### Now the actual strings to be translated: ######################
# func   <placeholder>         "string"

_tr_add2 welcome_disabled      "Η εφαρμογή $_lquote$PRETTY_PROGNAME$_rquote είναι απενεργοποιημένη. Για να την εκκινήσετε, χρησιμοποιήστε την επιλογή --enable (προσωρινά: --once)."  # changed 2022-Feb-21

_tr_add2 butt_later            "Εμφάνιση αργότερα"
_tr_add2 butt_latertip         "Διατηρεί ενεργοποιημένο το $PRETTY_PROGNAME"

_tr_add2 butt_noshow           "Να μην εμφανίζεται πλέον"
_tr_add2 butt_noshowtip        "Απενεργοποίηση του $PRETTY_PROGNAME"

_tr_add2 butt_help             "Βοήθεια"


_tr_add2 nb_tab_INSTALL        "ΕΓΚΑΤΑΣΤΑΣΗ"
_tr_add2 nb_tab_GeneralInfo    "Γενικές πληροφορίες"
_tr_add2 nb_tab_AfterInstall   "Μετά την εγκατάσταση"
_tr_add2 nb_tab_AddMoreApps    "Προσθήκη περισσότερων εφαρμογών"


_tr_add2 after_install_text    "Εργασίες μετά την εγκατάσταση"

_tr_add2 after_install_um      "Ενημέρωση ειδώλων διακομιστών"
_tr_add2 after_install_umtip   "Ενημέρωση της λίστας με τα είδωλα διακομιστών πριν από την ενημέρωση του συστήματος"

_tr_add2 after_install_us      "Ενημέρωση συστήματος"                 # This definition is used by Welcome 24.11-1 and older.
_tr_add2 after_install_ustip   "Ενημέρωση του λογισμικού του συστήματος"        # This definition is used by Welcome 24.11-1 and older.

_tr_add2 after_install_dsi     "Εντοπισμός ζητημάτων συστήματος"
_tr_add2 after_install_dsitip  "Εντοπισμός τυχόν προβλημάτων στα πακέτα του συστήματος ή αλλού"

_tr_add2 after_install_etl     "EndeavourOS στην πιο πρόσφατη έκδοση$_question"
_tr_add2 after_install_etltip  "Δείτε τι να κάνετε για να ενημερώσετε το σύστημά σας στην τελευταία έκδοση του EndeavourOS"

_tr_add2 after_install_cdm     "Αλλαγή διαχειριστή οθόνης"
_tr_add2 after_install_cdmtip  "Χρήση ενός διαφορετικού διαχειριστή οθόνης"

_tr_add2 after_install_ew      "Προεπιλεγμένη ταπετσαρία EndeavourOS"      # was: "EndeavourOS wallpaper"
_tr_add2 after_install_ewtip   "Επαναφορά στην προεπιλεγμένη ταπετσαρία"     # was: "Change desktop wallpaper to EOS default"


_tr_add2 after_install_pm      "Διαχείριση πακέτων"
_tr_add2 after_install_pmtip   "Πληροφορίες για τη διαχείριση πακέτων με το pacman"

_tr_add2 after_install_ay      "AUR και yay$_exclamation"
_tr_add2 after_install_aytip   "Πληροφορίες για το AUR (Arch User Repository) και το yay"

_tr_add2 after_install_hn      "Υλικό και δίκτυο"
_tr_add2 after_install_hntip   "Θέστε το υλικό σας σε λειτουργία"

_tr_add2 after_install_bt      "Bluetooth"
_tr_add2 after_install_bttip   "Συμβουλές για το Bluetooth"

_tr_add2 after_install_nv      "Χρήστες NVIDIA$_exclamation"
_tr_add2 after_install_nvtip   "Χρήση του προγράμματος εγκατάστασης για υλικό NVIDIA"

_tr_add2 after_install_ft      "Συμβουλές φόρουμ"
_tr_add2 after_install_fttip   "Βοηθήστε μας να σας βοηθήσουμε$_exclamation"


_tr_add2 general_info_text     "Βρείτε τον δρόμο προς τον ιστότοπο του EndeavourOS$_exclamation"

_tr_add2 general_info_ws       "Ιστότοπος"

_tr_add2 general_info_wi       "Wiki"
_tr_add2 general_info_witip    "Προτεινόμενα άρθρα"

_tr_add2 general_info_ne       "Ειδήσεις"
_tr_add2 general_info_netip    "Ειδήσεις και άρθρα"

_tr_add2 general_info_fo       "Φόρουμ"
_tr_add2 general_info_fotip    "Κάντε ερωτήσεις, σχόλια και συζητήσεις στο φόρουμ μας$_exclamation"

_tr_add2 general_info_do       "Δωρεά"
_tr_add2 general_info_dotip    "Βοηθήστε μας να συνεχίσουμε το έργο του EndeavourOS"

_tr_add2 general_info_ab       "Σχετικά με το $PRETTY_PROGNAME"
_tr_add2 general_info_abtip    "Περισσότερες πληροφορίες για αυτήν την εφαρμογή"


_tr_add2 add_more_apps_text    "Εγκατάσταση δημοφιλών εφαρμογών"

_tr_add2 add_more_apps_lotip   "Εργαλεία γραφείου (libreoffice-fresh)"

_tr_add2 add_more_apps_ch      "Πρόγραμμα περιήγησης ιστού Chromium"
_tr_add2 add_more_apps_chtip   "Πρόγραμμα περιήγησης ιστού"

_tr_add2 add_more_apps_fw      "Τείχος προστασίας"
_tr_add2 add_more_apps_fwtip   "Τείχος προστασίας Gufw"

_tr_add2 add_more_apps_bt      "Bluetooth (blueberry) για το Xfce"
_tr_add2 add_more_apps_bt_bm   "Bluetooth (blueman) για το Xfce"


####################### NEW STUFF AFTER THIS LINE:

_tr_add2 settings_dis_contents   "Για να εκτελέσετε ξανά το $PRETTY_PROGNAME, ανοίξτε ένα τερματικό και πληκτρολογήστε:\n<tt>   $PROGNAME --enable</tt>\nή\n<tt>   $PROGNAME --once</tt>\n"  # slightly changed 2021-Dec-21; changed again 2022-Apr-06
_tr_add2 settings_dis_text       "Επανενεργοποίηση του $PRETTY_PROGNAME:"
_tr_add2 settings_dis_title      "Μάθετε πώς να ενεργοποιήσετε ξανά το $PRETTY_PROGNAME"
_tr_add2 settings_dis_butt       "Θα το θυμάμαι"
_tr_add2 settings_dis_buttip     "Το υπόσχομαι"

_tr_add2 help_butt_title         "Βοήθεια για το $PRETTY_PROGNAME"
_tr_add2 help_butt_text          "Περισσότερες πληροφορίες για την εφαρμογή $PRETTY_PROGNAME"

_tr_add2 dm_title                "Επιλογή διαχειριστή οθόνης"
_tr_add2 dm_col_name1            "Επιλεγμένος"
_tr_add2 dm_col_name2            "Όνομα διαχειριστή οθόνης"

_tr_add2 dm_reboot_required      "Απαιτείται επανεκκίνηση για να εφαρμοστούν οι αλλαγές."
_tr_add2 dm_changed              "Ο διαχειριστής οθόνης άλλαξε σε: "
_tr_add2 dm_failed               "Η αλλαγή του διαχειριστή οθόνης απέτυχε."
_tr_add2 dm_warning_title        "Προειδοποίηση"

_tr_add2 install_installer       "Πρόγραμμα εγκατάστασης"
_tr_add2 install_already         "ήδη εγκατεστημένο"
_tr_add2 install_ing             "Εγκατάσταση"
_tr_add2 install_done            "Ολοκληρώθηκε."

_tr_add2 sysup_no                "Δεν υπάρχουν ενημερώσεις."
_tr_add2 sysup_check             "Έλεγχος για ενημερώσεις λογισμικού..."

_tr_add2 issues_title            "Εντοπισμός ζητημάτων πακέτων"
_tr_add2 issues_grub             "ΣΗΜΑΝΤΙΚΟ: θα χρειαστεί χειροκίνητη επαναδημιουργία του μενού εκκίνησης."
_tr_add2 issues_run              "Εκτέλεση εντολών:"
_tr_add2 issues_no               "Δεν εντοπίστηκαν σημαντικά ζητήματα συστήματος."

_tr_add2 cal_noavail            "Μη διαθέσιμο: "        # installer program
_tr_add2 cal_warn               "Προειδοποίηση"
_tr_add2 cal_info1              "Αυτή είναι μια έκδοση ανάπτυξης από την κοινότητα.\n\n"                                   # specials needed!
_tr_add2 cal_info2              "Η μέθοδος <b>εκτός σύνδεσης</b> παρέχει την επιφάνεια εργασίας %%s.\nΔεν απαιτείται σύνδεση στο διαδίκτυο.\n\n"
_tr_add2 cal_info3              "Η μέθοδος <b>με σύνδεση</b> παρέχει τη δυνατότητα επιλογής της επιφάνειας εργασίας.\nΑπαιτείται σύνδεση στο διαδίκτυο.\n\n"
_tr_add2 cal_info4              "Σημειώστε ότι η ανάπτυξη αυτής της έκδοσης βρίσκεται σε εξέλιξη. Βοηθήστε μας να την κάνουμε σταθερή αναφέροντας σφάλματα.\n"
_tr_add2 cal_info5              "\nΜετά την εγκατάσταση, συνιστάται η ενημέρωση του συστήματος.\n\n"
_tr_add2 cal_info6              "\nΜετά την εγκατάσταση, το σύστημα θα είναι ενημερωμένο.\n\n"
_tr_add2 cal_choose             "Επιλογή μεθόδου εγκατάστασης"
_tr_add2 cal_method             "Μέθοδος"
_tr_add2 cal_nosupport          "$PROGNAME: μη υποστηριζόμενη λειτουργία: "
_tr_add2 cal_nofile             "$PROGNAME: δεν υπάρχει απαιτούμενο αρχείο: "
_tr_add2 cal_istarted           "Η εγκατάσταση ξεκίνησε"
_tr_add2 cal_istopped           "Η εγκατάσταση ολοκληρώθηκε"

_tr_add2 tail_butt              "Κλείσιμο παραθύρου"
_tr_add2 tail_buttip            "Κλείσιμο μόνο αυτού του παραθύρου"


_tr_add2 ins_text              "Εγκατάσταση του EndeavourOS στον δίσκο"
_tr_add2 ins_start             "Εκκίνηση προγράμματος εγκατάστασης"
_tr_add2 ins_starttip          "Εκκίνηση του προγράμματος εγκατάστασης του EndeavourOS (επιλέξτε ανάμεσα στα κύρια περιβάλλοντα επιφάνειας εργασίας)"   # changed 2023-Jan-12
_tr_add2 ins_up                "Ενημέρωση εφαρμογής$_exclamation"
_tr_add2 ins_uptip             "Ενημέρωση και επανεκκίνηση αυτής της εφαρμογής"
_tr_add2 ins_keys              "Αρχικοποίηση κλειδιών pacman"
_tr_add2 ins_keystip           "Αρχικοποίηση των κλειδιών του pacman"
_tr_add2 ins_pm                "Διαχειριστής διαμερισμάτων"
_tr_add2 ins_pmtip             "Το Gparted επιτρέπει την εξέταση και τη διαχείριση των διαμερισμάτων και της δομής του δίσκου"
_tr_add2 ins_rel               "Πληροφορίες τελευταίας έκδοσης"
_tr_add2 ins_reltip            "Περισσότερες πληροφορίες για την τελευταία έκδοση"
_tr_add2 ins_tips              "Συμβουλές εγκατάστασης"
_tr_add2 ins_tipstip           "Συμβουλές εγκατάστασης"
_tr_add2 ins_trouble           "Επίλυση προβλημάτων"
_tr_add2 ins_troubletip        "Διάσωση συστήματος"

_tr_add2 after_install_us_from    "Ενημερώσεις από"                            # AUR or upstream
_tr_add2 after_install_us_el      "Απαιτούνται επαυξημένα δικαιώματα."
_tr_add2 after_install_us_done    "Η ενημέρωση ολοκληρώθηκε."
_tr_add2 after_install_us_fail    "Αποτυχία ενημέρωσης$_exclamation"

# 2020-May-14:

_tr_add2 nb_tab_UsefulTips     "Συμβουλές"
_tr_add2 useful_tips_text      "Χρήσιμες συμβουλές"

# 2020-May-16:

_tr_add2 butt_changelog        "Αρχείο αλλαγών"
_tr_add2 butt_changelogtip     "Εμφάνιση του αρχείου αλλαγών του Welcome"

_tr_add2 after_install_themevan      "Αυθεντικό θέμα του Xfce"
_tr_add2 after_install_themevantip   "Χρήση του αυθεντικού θέματος του Xfce"

_tr_add2 after_install_themedef     "Προεπιλεγμένο θέμα του EndeavourOS για το Xfce"
_tr_add2 after_install_themedeftip  "Χρήση του προεπιλεγμένου θέματος του EndeavourOS για το Xfce"

# 2020-Jun-28:
_tr_add2 after_install_pclean       "Ρύθμιση εκκαθάρισης πακέτων"
_tr_add2 after_install_pcleantip    "Ρύθμιση της υπηρεσίας εκκαθάρισης της προσωρινής μνήμης πακέτων"

# 2020-Jul-04:
_tr_add2 nb_tab_OwnCommands         "Προσωπικές εντολές"                   # modified 2020-Jul-08
_tr_add2 nb_tab_owncmds_text        "Προσωποποιημένες εντολές"               # modified 2020-Jul-08

# 2020-Jul-08:
_tr_add2 nb_tab_owncmdstip          "Βοήθεια για την προσθήκη προσωπικών εντολών"

_tr_add2 add_more_apps_akm          "Ένας διαχειριστής πυρήνα"
_tr_add2 add_more_apps_akmtip       "Ένας μικρός διαχειριστής για τον πυρήνα Linux και πηγή πληροφοριών"

# 2020-Jul-15:
_tr_add2 butt_owncmds_help        "Οδηγός: Προσωπικές εντολές"

# 2020-Aug-05:
_tr_add2 butt_owncmds_dnd         "Μεταφορά και απόθεση προσωπικών εντολών"
_tr_add2 butt_owncmds_dnd_help    "Εμφάνιση ενός παραθύρου όπου μπορείτε να σύρετε στοιχεία πεδίου για νέα κουμπιά"

# 2020-Sep-03:
_tr_add2 ins_reso                 "Αλλαγή ανάλυσης οθόνης"
_tr_add2 ins_resotip              "Αλλαγή της ανάλυσης οθόνης τώρα"

# 2020-Sep-08:
_tr_add2 add_more_apps_arch          "Περιήγηση σε όλα τα πακέτα του Arch"
_tr_add2 add_more_apps_aur           "Περιήγηση σε όλα τα πακέτα του AUR"
_tr_add2 add_more_apps_done1_text    "Οι προτεινόμενες εφαρμογές έχουν ήδη εγκατασταθεί$_exclamation"
_tr_add2 add_more_apps_done2_text    "ή περιήγηση σε όλα τα πακέτα του Arch και του AUR"
_tr_add2 add_more_apps_done2_tip1    "Για εγκατάσταση, χρησιμοποιήστε το $_lquotepacman$_rquote ή το $_lquoteyay$_rquote"
_tr_add2 add_more_apps_done2_tip2    "Για εγκατάσταση, χρησιμοποιήστε το $_lquoteyay$_rquote"

# 2020-Sep-11:
_tr_add2 after_install_ew2        "Επιλογή μίας ταπετσαρίας του EndeavourOS"   # was: "EndeavourOS wallpaper (choose)"
_tr_add2 after_install_ewtip2     "Επιλογή ταπετσαρίας"                          # was: "Choose from EndeavourOS default wallpapers"

# 2020-Sep-15:
#    IMPORTANT NOTE:
#       - line 71:  changed text of 'after_install_ew'
#       - line 72:  changed text of 'after_install_ewtip'
#       - line 249: changed text of 'after_install_ew2'
#       - line 250: changed text of 'after_install_ewtip2'

# 2020-Oct-23:
_tr_add2 updt_update_check        "Έλεγχος για ενημερώσεις"
_tr_add2 updt_searching           "Αναζήτηση"
_tr_add2 updt_for_updates         "για ενημερώσεις"
_tr_add2 updt_failure             "Αποτυχία$_exclamation"
_tr_add2 updt_nothing_todo        "Δεν υπάρχει καμία εργασία προς διεκπεραίωση"
_tr_add2 updt_press_enter         "Πατήστε ENTER για να κλείσετε αυτό το παράθυρο"

# 2020-Oct-24:
#    IMPORTANT NOTE:
#       - line 244: changed text of 'add_more_apps_done2_text'

# 2020-Dec-11:
_tr_add2 after_install_pacdiff_tip "Διαχείριση των αρχείων pacnew, pacorig και pacsave με το pacdiff και"

# 2021-Apr-07:
_tr_add2 after_install_conf           "Ρύθμιση"                             # a starting verb on a sentence "Configure eos-update-notifier"
_tr_add2 after_install_more_wall      "Λήψη περισσότερων ταπετσαριών του EndeavourOS"
_tr_add2 after_install_more_wall_tip  "Λήψη των παλαιών ταπετσαριών και των ταπετσαριών της κοινότητας του EndeavourOS"
_tr_add2 after_install_info           "πληροφορίες"                           # last word on a sentence, means just any information

_tr_add2 butt_softnews                "Ειδήσεις λογισμικού"
_tr_add2 butt_softnews_tip            "Σημαντικές ειδήσεις για το λογισμικό του EndeavourOS"

_tr_add2 install_community            "Εγκατάταση εκδόσεων κοινότητας"
_tr_add2 install_community_tip        "Συλλογή εκδόσεων κοινότητας (κυρίως διαχειριστές παραθύρων)"    # changed 2021-Oct-23, 2023-Jan-12

# 2021-May-01
_tr_add2 ins_syslog                   "Κοινοποίηση αρχείων καταγραφής συστήματος"
_tr_add2 ins_syslogtip                "Εξηγεί πώς μπορείτε να μοιραστείτε αρχεία καταγραφής συστήματος όταν χρειάζεστε βοήθεια"
_tr_add2 ins_logtool                  "Αρχεία καταγραφής για επίλυση προβλημάτων"
_tr_add2 ins_logtooltip               "Επιλέξτε, δημιουργήστε και μοιραστείτε αρχεία καταγραφής όταν ζητάτε βοήθεια"

# 2021-May-20
_tr_add2 nb_tab_DailyAssistant       "Βοηθός"
_tr_add2 daily_assistant_text        "Εργαλεία για χρήσιμες και/ή καθημερινές εργασίες"
_tr_add2 after_install_itab          "Επιλογή αρχικής καρτέλας του Welcome"
_tr_add2 after_install_itab_tip      "Ορίζει την καρτέλα που εμφανίζεται κατά την εκκίνηση του Welcome"

# 2021-Jun-08
_tr_add2 daily_assist_apps           "Κατηγορίες εφαρμογών"
_tr_add2 daily_assist_apps_tip       "Εφαρμογές ταξινομημένες κατά κατηγορία"

_tr_add2 after_install_vbox1         "Ενεργοποίηση εργαλείων VirtualBox Guest"
_tr_add2 after_install_vbox2         "Για να ενεργοποιήσετε τα εργαλεία VirtualBox Guest, επιλέξτε την καρτέλα <b>Μετά την εγκατάσταση</b> και κάντε κλικ στο κουμπί "

# 2021-Jun-17
_tr_add2 after_install_r8168         "Αντιμετωπίζετε πρόβλημα με την ενσύρματη δικτύωση$_question Κάντε εναλλαγή μετξαξύ των οδηγών r8168 και r8169$_exclamation"    # changed 2021-Dec-14 !!
_tr_add2 after_install_r8168_tip     "Κάντε εναλλαγή μεταξύ των οδηγών r8168 και r8169 (ενδέχεται να χρειαστεί επανεκκίνηση)"           # changed 2021-Dec-14 !!

# 2021-Oct-08
_tr_add2 daily_assist_DEinfo         "πληροφορίες"                                         # assume prefix "DE:", e.g.: "Xfce: information"
_tr_add2 daily_assist_DEinfo_tip     "περισσότερες πληροφορίες για αυτό το περιβάλλον επιφάνειας εργασίας/διαχειριστή παραθύρων"  # assume prefix "DE:", e.g.: "Xfce: more information ..."

# 2022-Feb-16
_tr_add2 add_more_apps_qs            "Επιλογή δημοφιλών εφαρμογών για εγκατάσταση"                      # runs eos-quickstart
_tr_add2 add_more_apps_qstip         "Επιλέξτε και εγκαταστήστε δημοφιλείς εφαρμογές"

# 2022-Mar-21
_tr_add2 ins_blue_notes              "Σημειώσεις για το Bluetooth"
_tr_add2 ins_blue_notes_tip          "Σημειώσεις για τη ρύθμιση του Bluetooth"

# 2022-Mar-27
_tr_add2 after_install_fw            "Πληροφορίες τείχους προστασίας"
_tr_add2 after_install_fwtip         "Πληροφορίες για το προεπιλεγμένο τείχος προστασίας"

# 2022-Mar-30
_tr_add2 ins_custom                  "Προσαρμογή της διαδικασίας εγκατάστασης"
_tr_add2 ins_custom_tip              "Πληροφορίες για την προσαρμογή της διαδικασίας εγκατάστασης"

# 2022-Jul-15
_tr_add2 daily_assist_anews          "Τελευταίες ειδήσεις του Arch"
_tr_add2 daily_assist_anewstip       "Εμφάνιση των τελευταίων ειδήσεων του Arch σε ένα πρόγραμμα πλοήγησης"

# 2022-Sep-25
_tr_add2 nb_notify_user1             "Υπάρχουν σημαντικές ειδήσεις στο"                        # one (or more) dates, e.g. 2023-Feb-18
_tr_add2 nb_notify_user2             "Κάντε κλικ στο κουμπί"                                  # Software News
_tr_add2 nb_notify_user3             "στην κάτω αριστερή γωνία αυτού του παραθύρου."

# 2023-Feb-20
_tr_add2 ins_customized              "Λήψη αρχείου προσαρμογής εγκατάστασης (για έμπειρους χρήστες)"
_tr_add2 ins_cust_text               "Εισαγάγετε το URL για το προσαρμοσμένο σας αρχείο $_lquoteuser_commands.bash$_rquote"
_tr_add2 ins_cust_text2              "Το ληφθέν αρχείο θα αντικαταστήσει το ~/user_commands.bash"
_tr_add2 ins_cust_text3              "Αυτό είναι πιο χρήσιμο για την εγκατάσταση <b>με σύνδεση στο διαδίκτυο</b>"

# 2023-Mar-29
_tr_add2 ins_no_connection           "Σημείωση: δεν διατίθεται σύνδεση στο διαδίκτυο. Ορισμένα κουμπιά έχουν αποκρυφτεί ή δεν λειτουργούν."

# 2023-Aug-25
_tr_add2 ins_pmtip2                  "Το Partitionmanager επιτρέπει την εξέταση και τη διαχείριση των διαμερισμάτων και της δομής του δίσκου"

# 2023-Sep-16
_tr_add2 ins_arm_start               "Πρόγραμμα εγκατάστασης του EndeavourOS για ARM"
_tr_add2 ins_arm_starttip            "Έναρξη της εγκατάστασης της έκδοσης ARM του EndeavourOS"

# 2024-Apr-18
_tr_add2 ins_conn_issue_title        "Τι ακολουθεί;"                                                                   # NOTE: '?' works in a yad title!
_tr_add2 ins_conn_issue_text         "Δεν βρέθηκε σύνδεση στο διαδίκτυο (μήπως το Wi-Fi δεν είναι έτοιμο${_question})"
_tr_add2 ins_conn_issue_nm1          "Διαχειριστής δικτύου"
_tr_add2 ins_conn_issue_nm2          "Εκκινεί τον διαχειριστή δικτύου"
_tr_add2 ins_conn_issue_oi1          "Εγκατάσταση εκτός σύνδεσης"
_tr_add2 ins_conn_issue_oi2          "Εγκαθιστά το KDE χωρίς σύνδεση στο διαδίκτυο (προτείνεται ενημέρωση του συστήματος μετά την εγκατάσταση)"
_tr_add2 ins_conn_issue_ex1          "Έξοδος"
_tr_add2 ins_conn_issue_ex2          "Έξοδος από αυτό το πρόγραμμα"

# 2024-Apr-20
_tr_add2 ins_start_calamares         "Εκκίνηση του calamares"
_tr_add2 ins_please_wait             "Παρακαλώ περιμένετε..."

# 2024-Dec-05 (see also: 'after_install_us' and 'after_install_ustip' above)
_tr_add2 after_install_usnat         "Ενημέρωση εγγενών πακέτων"
_tr_add2 after_install_usnat_tip     "Ενημέρωση των πακέτων από τα αποθετήρια στο /etc/pacman.conf"
_tr_add2 after_install_usnataur      "Ενημέρωση εγγενών πακέτων και πακέτων του AUR"
_tr_add2 after_install_usnataur_tip  "Ενημέρωση των πακέτων από τα αποθετήρια στο /etc/pacman.conf και το AUR"
_tr_add2 after_install_ushlp         "Ενημέρωση εγγενών πακέτων και πακέτων του AUR"
_tr_add2 after_install_ushlp_tip     "Ενημέρωση πακέτων από τα αποθετήρια στο /etc/pacman.conf και το AUR με έναν βοηθό AUR"

_tr_add2 after_install_umartip       "Ενημέρωση της λίστας των ειδώλων διακομιστών του Arch πριν από την ενημέρωση των πακέτων"
_tr_add2 after_install_umentip       "Ενημέρωση της λίστας των ειδώλων διακομιστών του EndeavourOS πριν από την ενημέρωση των πακέτων"

# 2024-Dec-06
_tr_add2 after_install_reisub        "Πληροφορίες για το REISUB"
_tr_add2 after_install_reisub2       "Ενεργοποίηση του REISUB"
_tr_add2 after_install_reisubtip     "Το REISUB βοηθά στην αντιμετώπιση των καταρρεύσεων του συστήματος"

# 2024-Dec-06, take 2
_tr_add2 _commonphrase_enabled       "ενεργό"
_tr_add2 _commonphrase_disabled      "ανενεργό"

# 2024-Dec-10
_tr_add2 arch_chroot                 "Πληροφορίες για το arch-chroot"
_tr_add2 arch_chroot_tip             "Το arch-chroot παρέχει πρόσβαση σε κάποιο άλλο σύστημα μέσω μιας γραμμής εντολών"
_tr_add2 _commonphrase_not_found     "Το $_lquote%%s$_rquote δεν βρέθηκε"                                                   # Example usage: "$(ltr _commonphrase_not_found "file1.txt")"

# 2025-Oct-05
_tr_add2 after_install_mani          "Χειροκίνητες παρεμβάσεις"
_tr_add2 after_install_manitip       "Εκτέλεση χειροκίνητων παρεμβάσεων (δηλαδή απαραίτητων διορθώσεων, βλ. https://archlinux.org/news)"
