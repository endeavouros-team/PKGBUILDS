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

# Polish:

### First some useful definitions:

_tr_lang=pl            # required helper variable for _tr_add2

# Help with some special characters (HTML). Yad has problems without them:
_exclamation='&#33;'   # '!'
_and='&#38;'           # '&'
_question='&#63;'      # '?'


###################### Now the actual strings to be translated: ######################
# func   <placeholder>         "string"

_tr_add2 welcome_disabled      "Aplikacja $PRETTY_PROGNAME jest dezaktywowana. Aby ją uruchomić, użyj opcji --enable (tymczasowo: --once)."  # changed 2022-Feb-21

_tr_add2 butt_later            "Do zobaczenia"
_tr_add2 butt_latertip         "Program $PRETTY_PROGNAME pozostanie aktywowany"

_tr_add2 butt_noshow           "Nie pokazuj mnie więcej"
_tr_add2 butt_noshowtip        "Dezaktywuj $PRETTY_PROGNAME"

_tr_add2 butt_help             "Pomoc"


_tr_add2 nb_tab_INSTALL        "INSTALACJA"
_tr_add2 nb_tab_GeneralInfo    "Informacje Ogólne"
_tr_add2 nb_tab_AfterInstall   "Po Instalacji"
_tr_add2 nb_tab_AddMoreApps    "Dodaj Więcej Aplikacji"


_tr_add2 after_install_text    "Rzeczy do zrobienia po instalacji"

_tr_add2 after_install_um      "Zaktualizuj Serwery Lustrzane"
_tr_add2 after_install_umtip   "Zaktualizuj listę serwerów lustrzanych przed aktualizacją systemu"

_tr_add2 after_install_us      "Zaktualizuj System"
_tr_add2 after_install_ustip   "Zaktualizuj Oprogramowanie Systemu"

_tr_add2 after_install_dsi     "Wykryj problemy z systemem"
_tr_add2 after_install_dsitip  "Wykryj potencjalne problemy z systemem pakietów lub gdzie indziej"

_tr_add2 after_install_etl     "Jeszcze świeższy EndeavourOS$_question"
_tr_add2 after_install_etltip  "Pokaż co zrobić, aby zaktualizować swój system do najnowszej wersji EndeavourOS"

_tr_add2 after_install_cdm     "Zmień Menadżer Wyświetlania"
_tr_add2 after_install_cdmtip  "Użyj innego menadżera wyświetlania"

_tr_add2 after_install_ew      "Domyślne tło pulpitu EndeavourOS"      # was: "EndeavourOS wallpaper"
_tr_add2 after_install_ewtip   "Zresetuj do domyślnego tła pulpitu"     # was: "Change desktop wallpaper to EOS default"


_tr_add2 after_install_pm      "Zarządzanie pakietami"
_tr_add2 after_install_pmtip   "Jak zarządzać pakietami z pacman"

_tr_add2 after_install_ay      "AUR $_and yay$_exclamation"
_tr_add2 after_install_aytip   "Informacje o Arch User Repository oraz yay"

_tr_add2 after_install_hn      "Sprzęt i Sieć"
_tr_add2 after_install_hntip   "Spraw, aby twój sprzęt działał"

_tr_add2 after_install_bt      "Bluetooth"
_tr_add2 after_install_bttip   "Porady do Bluetooth"

_tr_add2 after_install_nv      "Użytkownicy NVIDIA$_exclamation"
_tr_add2 after_install_nvtip   "Użyj instalatora NVIDIA"

_tr_add2 after_install_ft      "Wskazówki do Forum"
_tr_add2 after_install_fttip   "Pomóż nam pomóc tobie$_exclamation"


_tr_add2 general_info_text     "Znajdź swoją drogę do strony EndeavourOS$_exclamation"

_tr_add2 general_info_ws       "Strona internetowa"

_tr_add2 general_info_wi       "Wiki"
_tr_add2 general_info_witip    "Polecane artykuły"

_tr_add2 general_info_ne       "Nowości"
_tr_add2 general_info_netip    "Nowości i artykuły"

_tr_add2 general_info_fo       "Forum"
_tr_add2 general_info_fotip    "Pytaj, komentuj i rozmawiaj w naszym przyjaznym forum$_exclamation"

_tr_add2 general_info_do       "Wpłać darowiznę"
_tr_add2 general_info_dotip    "Pomóż nam utrzymywać EndeavourOS"

_tr_add2 general_info_ab       "O $PRETTY_PROGNAME"
_tr_add2 general_info_abtip    "Więcej informacji o tej aplikacji"


_tr_add2 add_more_apps_text    "Zainstaluj popularne aplikacje"

_tr_add2 add_more_apps_lotip   "Narzędzia biurowe (libreoffice-fresh)"

_tr_add2 add_more_apps_ch      "Przeglądarka Internetowa Chromium"
_tr_add2 add_more_apps_chtip   "Przeglądarka Internetowa"

_tr_add2 add_more_apps_fw      "Zapora Sieciowa"
_tr_add2 add_more_apps_fwtip   "Zapora sieciowa Gufw"

_tr_add2 add_more_apps_bt      "Bluetooth (blueberry) dla Xfce"
_tr_add2 add_more_apps_bt_bm   "Bluetooth (blueman) dla Xfce"


####################### NEW STUFF AFTER THIS LINE:

_tr_add2 settings_dis_contents   "Aby uruchomić $PRETTY_PROGNAME ponownie, uruchom terminal i wykonaj polecenie:\n<tt>   $PROGNAME --enable</tt>\nlub\n<tt>   $PROGNAME --once</tt>\n"  # slightly changed 2021-Dec-21; changed again 2022-Apr-06
_tr_add2 settings_dis_text       "Reaktywowanie $PRETTY_PROGNAME:"
_tr_add2 settings_dis_title      "Jak ponownie aktywować $PRETTY_PROGNAME"
_tr_add2 settings_dis_butt       "Zapamiętam"
_tr_add2 settings_dis_buttip     "Obiecuję"

_tr_add2 help_butt_title         "$PRETTY_PROGNAME Pomoc"
_tr_add2 help_butt_text          "Więcej informacji o aplikacji $PRETTY_PROGNAME"

_tr_add2 dm_title                "Wybierz Menadżer Wyświetlania"
_tr_add2 dm_col_name1            "Wybrano"
_tr_add2 dm_col_name2            "Nazwa MW"

_tr_add2 dm_reboot_required      "Restart jest wymagany, aby zmiany zostały wprowadzone."
_tr_add2 dm_changed              "MW zmieniony na: "
_tr_add2 dm_failed               "Zmiana MW nie powiodła się."
_tr_add2 dm_warning_title        "Uwaga"

_tr_add2 install_installer       "Instalator"
_tr_add2 install_already         "już zainstalowane"
_tr_add2 install_ing             "Instaluję"
_tr_add2 install_done            "Zakończono."

_tr_add2 sysup_no                "Brak aktualizacji."
_tr_add2 sysup_check             "Sprawdzam aktualizacje oprogramowania..."

_tr_add2 issues_title            "Wykrywanie problemów z pakietami"
_tr_add2 issues_grub             "WAŻNE: będzie wymagane ręczne odtworzenie menu bootowania."
_tr_add2 issues_run              "Wykonywanie poleceń:"
_tr_add2 issues_no               "Nie wykryto poważnych problemów z systemem."

_tr_add2 cal_noavail            "Niedostępne: "        # installer program
_tr_add2 cal_warn               "Uwaga"
_tr_add2 cal_info1              "To jest wydanie deweloperskie społeczności.\n\n"                                   # specials needed!
_tr_add2 cal_info2              "Metoda <b>Offline</b> oferuje ci pulpit %%s.\nPołączenie z Internetem nie jest wymagane.\n\n"
_tr_add2 cal_info3              "Metoda <b>Online</b> pozwala Ci na wybranie własnego pulpitu.\nPołączenie z Internetem jest wymagane.\n\n"
_tr_add2 cal_info4              "Uwaga: prace nad tym wydaniem nadal trwają, możesz pomóc nam je poprawiać poprzez zgłaszanie błędów.\n"
_tr_add2 cal_info5              "\nPo instalacji zalecana jest aktualizacja systemu.\n\n"
_tr_add2 cal_info6              "\nPo instalacji system jest aktualny.\n\n"
_tr_add2 cal_choose             "Wybierz metodę instalacji"
_tr_add2 cal_method             "Metoda"
_tr_add2 cal_nosupport          "$PROGNAME: tryb nie jest wspierany: "
_tr_add2 cal_nofile             "$PROGNAME: wymagany plik nie istnieje: "
_tr_add2 cal_istarted           "Instalacja rozpoczęta"
_tr_add2 cal_istopped           "Instalacja zakończona"

_tr_add2 tail_butt              "Zamknij to okno"
_tr_add2 tail_buttip            "Zamknij tylko to okno"


_tr_add2 ins_text              "Instalacja EndeavourOS na dysk"
_tr_add2 ins_start             "Uruchom Instalator"
_tr_add2 ins_starttip          "Uruchom instalator EndeavourOS (wybierz spośród popularnych pulpitów)"   # changed 2023-Jan-12
_tr_add2 ins_up                "Zaktualizuj tę aplikację$_exclamation"
_tr_add2 ins_uptip             "Aktualizuje tę aplikację i uruchamia ją ponownie"
_tr_add2 ins_keys              "Inicjalizuj klucze pacman"
_tr_add2 ins_keystip           "Inicjalizuj klucze pacman"
_tr_add2 ins_pm                "Menadżer partycji"
_tr_add2 ins_pmtip             "Gparted pozwala na badanie oraz zarządzanie partycjami dysków i ich strukturą"
_tr_add2 ins_rel               "Informacje o ostatnim wydaniu"
_tr_add2 ins_reltip            "Więcej informacji o ostatnim wydaniu"
_tr_add2 ins_tips              "Wskazówki do instalacji"
_tr_add2 ins_tipstip           "Wskazówki do instalacji"
_tr_add2 ins_trouble           "Rozwiązywanie problemów"
_tr_add2 ins_troubletip        "Ratowanie systemu"

_tr_add2 after_install_us_from    "Aktualizacje od"                            # AUR or upstream
_tr_add2 after_install_us_el      "Wymagane zwiększone uprawnienia."
_tr_add2 after_install_us_done    "aktualizacja zakończona."
_tr_add2 after_install_us_fail    "aktualizacja nie powiodła się$_exclamation"

# 2020-May-14:

_tr_add2 nb_tab_UsefulTips     "Wskazówki"
_tr_add2 useful_tips_text      "Przydatne wskazówki"

# 2020-May-16:

_tr_add2 butt_changelog        "Dziennik zmian"
_tr_add2 butt_changelogtip     "Pokaż dziennik zmian w Welcome"

_tr_add2 after_install_themevan      "Podstawowy motyw Xfce"
_tr_add2 after_install_themevantip   "Użyj podstawowego motywu Xfce"

_tr_add2 after_install_themedef     "Domyślny motyw Xfce EndeavourOS"
_tr_add2 after_install_themedeftip  "Użyj domyślnego motywu Xfce EndeavourOS"

# 2020-Jun-28:
_tr_add2 after_install_pclean       "Konfiguracja czyszczenia pakietów"
_tr_add2 after_install_pcleantip    "Konfiguruj usługę czyszczenia pamięci podręcznej pakietów"

# 2020-Jul-04:
_tr_add2 nb_tab_OwnCommands         "Własne polecenia"                   # modified 2020-Jul-08
_tr_add2 nb_tab_owncmds_text        "Własne polecenia"               # modified 2020-Jul-08

# 2020-Jul-08:
_tr_add2 nb_tab_owncmdstip          "Pomoc w dodawaniu własnych poleceń"

_tr_add2 add_more_apps_akm          "Menadżer Jądra"
_tr_add2 add_more_apps_akmtip       "Mały menadżer jądra linux i źródło informacji"

# 2020-Jul-15:
_tr_add2 butt_owncmds_help        "Samouczek: Własne Polecenia"

# 2020-Aug-05:
_tr_add2 butt_owncmds_dnd         "Własne polecenia drag${_and}drop"
_tr_add2 butt_owncmds_dnd_help    "Pokaż okno, do którego należy przeciągnąć elementy dla nowych przycisków"

# 2020-Sep-03:
_tr_add2 ins_reso                 "Zmień rozdzielczość ekranu"
_tr_add2 ins_resotip              "Zmień teraz rozdzielczość ekranu"

# 2020-Sep-08:
_tr_add2 add_more_apps_arch          "Przejrzyj wszystkie pakiety Arch"
_tr_add2 add_more_apps_aur           "Przejrzyj wszystkie pakiety AUR"
_tr_add2 add_more_apps_done1_text    "Sugerowane aplikacje już są zainstalowane$_exclamation"
_tr_add2 add_more_apps_done2_text    "lub przejrzyj wszystkie pakiety Arch i AUR"
_tr_add2 add_more_apps_done2_tip1    "By zainstalować, użyj 'pacman' albo 'yay'"
_tr_add2 add_more_apps_done2_tip2    "By zainstalować, użyj 'yay'"

# 2020-Sep-11:
_tr_add2 after_install_ew2        "Wybierz jedno z teł pulpitu EndeavourOS"   # was: "EndeavourOS wallpaper (choose)"
_tr_add2 after_install_ewtip2     "Wybór tła pulpitu"                          # was: "Choose from EndeavourOS default wallpapers"

# 2020-Sep-15:
#    IMPORTANT NOTE:
#       - line 71:  changed text of 'after_install_ew'
#       - line 72:  changed text of 'after_install_ewtip'
#       - line 249: changed text of 'after_install_ew2'
#       - line 250: changed text of 'after_install_ewtip2'

# 2020-Oct-23:
_tr_add2 updt_update_check        "sprawdzanie aktualizacji"
_tr_add2 updt_searching           "Wyszukiwanie"
_tr_add2 updt_for_updates         "aktualizacji"
_tr_add2 updt_failure             "zakończono niepowodzeniem$_exclamation"
_tr_add2 updt_nothing_todo        "nie ma nic do zrobienia"
_tr_add2 updt_press_enter         "Naciśnij ENTER by zamknąć to okno"

# 2020-Oct-24:
#    IMPORTANT NOTE:
#       - line 244: changed text of 'add_more_apps_done2_text'

# 2020-Dec-11:
_tr_add2 after_install_pacdiff_tip "Zarządzaj plikami pacnew, pacorig $_and pacsave z pacdiff $_and"

# 2021-Apr-07:
_tr_add2 after_install_conf           "Konfiguruj"                             # a starting verb on a sentence "Configure eos-update-notifier"
_tr_add2 after_install_more_wall      "Pobierz więcej teł pulpitu EndeavourOS"
_tr_add2 after_install_more_wall_tip  "Pobierz starsze tła pulpitu od EndeavourOS i tła od społeczności"
_tr_add2 after_install_info           "informacja"                           # last word on a sentence, means just any information

_tr_add2 butt_softnews                "Nowości o Oprogramowaniu"
_tr_add2 butt_softnews_tip            "Ważne aktualności o oprogramowaniu EndeavourOS"

_tr_add2 install_community            "Instaluj wersje społeczności"
_tr_add2 install_community_tip        "Zbiór wersji społeczności (w większości Menadżery Okien)"    # changed 2021-Oct-23, 2023-Jan-12

# 2021-May-01
_tr_add2 ins_syslog                   "Jak udostępnić dzienniki systemowe"
_tr_add2 ins_syslogtip                "Wyjaśnia, w jaki sposób możesz udostępnić dzienniki (logi) systemowe gdy potrzebujesz pomocy"
_tr_add2 ins_logtool                  "Użycie dzienników zmiań w rozwiązywaniu problemów"
_tr_add2 ins_logtooltip               "Wybierz, twórz i udostępniaj dzienniki rozwiązywania problemów gdy prosisz o pomoc"

# 2021-May-20
_tr_add2 nb_tab_DailyAssistant       "Asystent"
_tr_add2 daily_assistant_text        "Narzędzia dla użytecznych i/lub codziennych zadań"
_tr_add2 after_install_itab          "Wybierz początkową zakładkę Welcome"
_tr_add2 after_install_itab_tip      "Ustawia zakładkę, którą Welcome pokazuje pierwszą po uruchomieniu"

# 2021-Jun-08
_tr_add2 daily_assist_apps           "Kategorie aplikacji"
_tr_add2 daily_assist_apps_tip       "Aplikacje posortowane w kategoriach"

_tr_add2 after_install_vbox1         "Aktywuj narzędzia VirtualBox Guest"
_tr_add2 after_install_vbox2         "By aktywować narzędzia VirtualBox Guest, zaznacz zakładkę <b>Po Instalacji</b> i kliknij przycisk "

# 2021-Jun-17
_tr_add2 after_install_r8168         "Problemy z siecią przewodową$_question Przełącz sterowniki r8168 i r8169$_exclamation"    # changed 2021-Dec-14 !!
_tr_add2 after_install_r8168_tip     "Przełącz się między sterownikami r8168 a r8169 (może być potrzebny restart systemu)"           # changed 2021-Dec-14 !!

# 2021-Oct-08
_tr_add2 daily_assist_DEinfo         "informacje"                                         # assume prefix "DE:", e.g.: "Xfce: information"
_tr_add2 daily_assist_DEinfo_tip     "więcej informacji o tym Menadżerze Okien/Pulpitu"  # assume prefix "DE:", e.g.: "Xfce: more information ..."

# 2022-Feb-16
_tr_add2 add_more_apps_qs            "Wybierz popularne aplikacje do zainstalowania"                      # runs eos-quickstart
_tr_add2 add_more_apps_qstip         "Wybierz popularne aplikacje i zainstaluj je"

# 2022-Mar-21
_tr_add2 ins_blue_notes              "Notatki o Bluetooth"
_tr_add2 ins_blue_notes_tip          "Notatki o konfiguracji bluetooth"

# 2022-Mar-27
_tr_add2 after_install_fw            "Informacje o Zaporze Sieciowej"
_tr_add2 after_install_fwtip         "Informacje o zainstalowanej zaporze sieciowej"

# 2022-Mar-30
_tr_add2 ins_custom                  "Dostosowywanie procesu instalacji"
_tr_add2 ins_custom_tip              "Jak dostosować proces instalacji"

# 2022-Jul-15
_tr_add2 daily_assist_anews          "Najnowsze Wieści o Arch"
_tr_add2 daily_assist_anewstip       "Pokazuje najnowsze wieści o Arch w przeglądarce"

# 2022-Sep-25
_tr_add2 nb_nofify_user1             "Są ważne aktualności"                        # one (or more) dates, e.g. 2023-Feb-18
_tr_add2 nb_nofify_user2             "Proszę naciśnij w"                                  # Software News
_tr_add2 nb_nofify_user3             "przycisk w lewym dolnym rogu tego okna."

# 2023-Feb-20
_tr_add2 ins_customized              "Załaduj swój plik dostosowywania instalacji (zaawansowane)"
_tr_add2 ins_cust_text               "Podaj URL do swojego dostosowanego user_commands.bash"
_tr_add2 ins_cust_text2              "Załadowany plik zastąpi ~/user_commands.bash"
_tr_add2 ins_cust_text3              "Jest to najbardziej przydatne przy instalacji <b>online</b>"

# 2023-Mar-29
_tr_add2 ins_no_connection           "Uwaga: brak połączenia z Internetem, niektóre przyciski są ukryte lub nie zadziałają."

# 2023-Aug-25
_tr_add2 ins_pmtip2                  "Menadżer partycji pozwala na badanie oraz zarządzanie partycjami dysków i ich strukturą"

# 2023-Sep-16
_tr_add2 ins_arm_start             "Instalator Obrazu ARM EndeavourOS"
_tr_add2 ins_arm_starttip          "Rozpocznij instalację wersji ARM EndeavourOS"

