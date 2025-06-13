# Preklad aplikácie Welcome.
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

_tr_lang=sk            # required helper variable for _tr_add2

# Help with some special characters (HTML). Yad has problems without them:
_exclamation='&#33;'   # '!'
_and='&#38;'           # '&'
_question='&#63;'      # '?'


###################### Now the actual strings to be translated: ######################
# func   <placeholder>         "string"

_tr_add2 welcome_disabled      "Aplikácia $PRETTY_PROGNAME je zakázaná. Ak sa má napriek tomu spustiť, použite parameter --enable (ak sa má povoliť dočasne: --once )."

_tr_add2 butt_later            "Uvidíme sa neskôr"
_tr_add2 butt_latertip         "Ponechá aplikáciu $PRETTY_PROGNAME povolenú"

_tr_add2 butt_noshow           "Už viac nezobrazovať"
_tr_add2 butt_noshowtip        "Zakáže aplikáciu $PRETTY_PROGNAME"

_tr_add2 butt_help             "Pomocník"


_tr_add2 nb_tab_INSTALL        "INŠTALÁCIA"
_tr_add2 nb_tab_GeneralInfo    "Všeobecné informácie"
_tr_add2 nb_tab_AfterInstall   "Po inštalácii"
_tr_add2 nb_tab_AddMoreApps    "Pridanie ďalších aplikácií"


_tr_add2 after_install_text    "Úlohy po inštalácii"

_tr_add2 after_install_um      "Aktualizovať zrkadlá"
_tr_add2 after_install_umtip   "Vykoná aktualizáciu zoznamu zrkadiel pred aktualizáciou systému"

_tr_add2 after_install_us      "Aktualizovať systém"
_tr_add2 after_install_ustip   "Vykoná aktualizáciu systémového softvéru"

_tr_add2 after_install_dsi     "Zistiť problémy so systémom"
_tr_add2 after_install_dsitip  "Zistí akékoľvek možné problémy so systémovými balíkmi alebo s čímkoľvek iným"

_tr_add2 after_install_etl     "Najnovší systém EndeavourOS$_question"
_tr_add2 after_install_etltip  "Zobrazí, ako dostať váš systém EndeavourOS na najnovšiu úroveň"

_tr_add2 after_install_cdm     "Zmeniť správcu zobrazenia"
_tr_add2 after_install_cdmtip  "Použije iného správcu zobrazenia"

_tr_add2 after_install_ew      "Predvolené pozadie systému EndeavourOS"
_tr_add2 after_install_ewtip   "Obnoví pozadie na predvolené"


_tr_add2 after_install_pm      "Správa balíkov"
_tr_add2 after_install_pmtip   "Ako spravovať balíky pomocou aplikácie pacman"

_tr_add2 after_install_ay      "Repozitár AUR a nástroj yay$_exclamation"
_tr_add2 after_install_aytip   "Informácie o užívateľskom repozitári systému Arch a nástroji yay"

_tr_add2 after_install_hn      "Hardvér a sieť"
_tr_add2 after_install_hntip   "Sfunkční váš hardvér"

_tr_add2 after_install_bt      "Bluetooth"
_tr_add2 after_install_bttip   "Pokyny k rozhraniu Bluetooth"

_tr_add2 after_install_nv      "Používatelia grafických kariet NVIDIA$_exclamation"
_tr_add2 after_install_nvtip   "Použitie inštalátora grafických kariet NVIDIA"

_tr_add2 after_install_ft      "Rady z fóra"
_tr_add2 after_install_fttip   "Pomôžte nám, my pomôžeme vám$_exclamation"


_tr_add2 general_info_text     "Nájdite svoju cestu na webovej stránke systému EndeavourOS$_exclamation"

_tr_add2 general_info_ws       "Webová stránka"

_tr_add2 general_info_wi       "Wiki"
_tr_add2 general_info_witip    "Vybrané články"

_tr_add2 general_info_ne       "Novinky"
_tr_add2 general_info_netip    "Novinky a články"

_tr_add2 general_info_fo       "Fórum"
_tr_add2 general_info_fotip    "Pýtajte sa, komentujte a rozprávajte sa v našom priateľskom fóre$_exclamation"

_tr_add2 general_info_do       "Prispieť"
_tr_add2 general_info_dotip    "Pomôžte nám v zachovaní chodu systému EndeavourOS"

_tr_add2 general_info_ab       "O aplikácii $PRETTY_PROGNAME"
_tr_add2 general_info_abtip    "Viac informácií o tejto aplikácii"


_tr_add2 add_more_apps_text    "Nainštalujte obľúbené aplikácie"

_tr_add2 add_more_apps_lotip   "Kancelárske nástroje (libreoffice-fresh)"

_tr_add2 add_more_apps_ch      "Webový prehliadač Chromium"
_tr_add2 add_more_apps_chtip   "Webový prehliadač"

_tr_add2 add_more_apps_fw      "Brána Firewall"
_tr_add2 add_more_apps_fwtip   "Nástroj brány firewall Gufw"

_tr_add2 add_more_apps_bt      "Bluetooth (blueberry) pre prostredie Xfce"
_tr_add2 add_more_apps_bt_bm   "Bluetooth (blueman) pre prostredie Xfce"


####################### NEW STUFF AFTER THIS LINE:

_tr_add2 settings_dis_contents   "Na opätovné spustenie aplikácie $PRETTY_PROGNAME, otvorte terminál a spustite:\n<tt>   $PROGNAME --enable</tt>\nalebo\n<tt>   $PROGNAME --once</tt>\n"  # slightly changed 2021-Dec-21; changed again 2022-Apr-06
_tr_add2 settings_dis_text       "Opätovné povolenie aplikácie $PRETTY_PROGNAME:"
_tr_add2 settings_dis_title      "Ako znovu povoliť aplikáciu $PRETTY_PROGNAME"
_tr_add2 settings_dis_butt       "Zapamätám si"
_tr_add2 settings_dis_buttip     "Sľubujem"

_tr_add2 help_butt_title         "Pomocník aplikácie $PRETTY_PROGNAME"
_tr_add2 help_butt_text          "Viac informácií o aplikácii $PRETTY_PROGNAME"

_tr_add2 dm_title                "Výber správcu zobrazenia"
_tr_add2 dm_col_name1            "Vybraný"
_tr_add2 dm_col_name2            "Názov správcu zobrazenia"

_tr_add2 dm_reboot_required      "Na uplatnenie zmien je potrebný reštart."
_tr_add2 dm_changed              "Správca zobrazenia bol zmenený na: "
_tr_add2 dm_failed               "Zmena správcu zobrazenia zlyhala."
_tr_add2 dm_warning_title        "Upozornenie"

_tr_add2 install_installer       "Inštalátor"
_tr_add2 install_already         "už je nainštalovaný"
_tr_add2 install_ing             "Inštaluje sa"
_tr_add2 install_done            "Dokončené."

_tr_add2 sysup_no                "Žiadne aktualizácie."
_tr_add2 sysup_check             "Kontrolujú sa aktualizácie softvéru..."

_tr_add2 issues_title            "Zisťovanie problémov s balíkmi"
_tr_add2 issues_grub             "DÔLEŽITÉ: bude potrebné opätovné ručné vytvorenie ponuky zavádzača."
_tr_add2 issues_run              "Spúšťajú sa príkazy:"
_tr_add2 issues_no               "Neboli zistené žiadne závažné problémy so systémom."

_tr_add2 cal_noavail            "Nedostupné: "        # installer program
_tr_add2 cal_warn               "Upozornenie"
_tr_add2 cal_info1              "Toto je komunitné vývojové vydanie.\n\n"                                   # specials needed!
_tr_add2 cal_info2              "Spôsob <b>Bez pripojenia</b> vám poskytne pracovné prostredie %%s.\nPripojenie k internetu nie je potrebné.\n\n"
_tr_add2 cal_info3              "Spôsob <b>Online</b> vám umožní zvoliť si vaše pracovné prostredie.\nPripojenie k internetu je potrebné.\n\n"
_tr_add2 cal_info4              "Prosím, berte na vedomie: Na tomto vydaní sa pracuje, prosím, pomôžte nám zvýšiť stabilitu nahlásením chýb.\n"
_tr_add2 cal_info5              "\nPo inštalácii sa odporúča vykonať aktualizáciu systému.\n\n"
_tr_add2 cal_info6              "\nPo inštalácii bude systém aktuálny.\n\n"
_tr_add2 cal_choose             "Zvoľte spôsob inštalácie"
_tr_add2 cal_method             "Spôsob"
_tr_add2 cal_nosupport          "$PROGNAME: nepodporovaný režim: "
_tr_add2 cal_nofile             "$PROGNAME: požadovaný súbor neexistuje: "
_tr_add2 cal_istarted           "Inštalácia spustená"
_tr_add2 cal_istopped           "Inštalácia dokončená"
_tr_add2 tail_butt              "Zavrieť toto okno"
_tr_add2 tail_buttip            "Zavrie iba toto okno"


_tr_add2 ins_text              "Inštaluje sa systém EndeavourOS na disk"
_tr_add2 ins_start             "Spustiť inštalátor"
_tr_add2 ins_starttip          "Spustí inštalátor systémuEndeavourOS (umožní výber spomedzi hlavných pracovných prostredí)"   # changed 2023-Jan-12_tr_add2 ins_up                "Aktualizovať túto aplikáciu$_exclamation"
_tr_add2 ins_uptip             "Vykoná aktualizáciu tejto aplikácie a znovu ju spustí"
_tr_add2 ins_keys              "Inicializovať kľúče aplikácie pacman"
_tr_add2 ins_keystip           "Vykoná inicializáciu kľúčov aplikácie pacman"
_tr_add2 ins_pm                "Správca oddielov"
_tr_add2 ins_pmtip             "Aplikácia Gparted vám umožní preskúmať a spravovať oddiely na diskoch a ich štruktúru"
_tr_add2 ins_rel               "Informácie o najnovšom vydaní"
_tr_add2 ins_reltip            "Viac informácií o najnovšom vydaní"
_tr_add2 ins_tips              "Rady k inštalácii"
_tr_add2 ins_tipstip           "Zobrazí rady k inštalácii"
_tr_add2 ins_trouble           "Riešiť problémy"
_tr_add2 ins_troubletip        "Záchrana systému"

_tr_add2 after_install_us_from    "Aktualizácie z repozitára"                            # AUR or upstream
_tr_add2 after_install_us_el      "Vyžadujú sa vyvýšené práva."
_tr_add2 after_install_us_done    "aktualizácia dokončená."
_tr_add2 after_install_us_fail    "aktualizácia zlyhala!"

# 2020-May-14:

_tr_add2 nb_tab_UsefulTips     "Rady"
_tr_add2 useful_tips_text      "Užitočné rady"

# 2020-May-16:

_tr_add2 butt_changelog        "Zoznam zmien"
_tr_add2 butt_changelogtip     "Ukázať zoznam zmien v uvítacej aplikácii"

_tr_add2 after_install_themevan      "Čistý Xfce vzhľad"
_tr_add2 after_install_themevantip   "Použiť čistý vzhľad Xfce"

_tr_add2 after_install_themedef     "Endeavour OS vzhľad pre Xfce"
_tr_add2 after_install_themedeftip  "Použiť EndeavourOS vzhľad pre Xfce"

# 2020-Jun-28:
_tr_add2 after_install_pclean       "Nastavenie prečisťovania balíčkov"
_tr_add2 after_install_pcleantip    "Nastavte službu prečisťovania vyrovnávacej pamäte balíčkov"

# 2020-Jul-04:
_tr_add2 nb_tab_OwnCommands         "Vlastné príkazy"                       # modified 2020-Jul-08
_tr_add2 nb_tab_owncmds_text        "Sebe uspôsobené príkazy"               # modified 2020-Jul-08

# 2020-Jul-08:
_tr_add2 nb_tab_owncmdstip          "Pomoc s pridávaním vlastných príkazov"

_tr_add2 add_more_apps_akm          "Správca jadra"
_tr_add2 add_more_apps_akmtip       "Malý zdroj informácií o, a správca linuxového jadra"

# 2020-Jul-15:
_tr_add2 butt_owncmds_help          "Návod: Vlastné príkazy"

# 2020-Aug-05:
_tr_add2 butt_owncmds_dnd         "Chyťte ${_and} pretiahnite vlastné príkazy"
_tr_add2 butt_owncmds_dnd_help    "Zobraziť okno, do ktorého sa dajú pretiahnúť položky na nové tlačítka"

# 2020-Sep-03:
_tr_add2 ins_reso                 "Zmeniť rozlíšenie displeja"
_tr_add2 ins_resotip              "Teraz zmeniť rozlíšenie displeja"

# 2020-Sep-08:
_tr_add2 add_more_apps_arch       "Prehľadávať medzi všetkými Arch balíkmi"
_tr_add2 add_more_apps_aur        "Prehľadávať medzi všetkými AUR balíkmi"
_tr_add2 add_more_apps_done1_text "Navrhované balíky sú už nainštalované$_exclamation"
_tr_add2 add_more_apps_done2_text "\n\nAlebo prehľadávať všetky Arch a AUR balíčky\n"      
_tr_add2 add_more_apps_done2_tip1    "Pre inštaláciu použite 'pacman', alebo 'yay'"     
_tr_add2 add_more_apps_done2_tip2    "Pre inštaláciu použite 'yay'"

# 2020-Sep-11:      
_tr_add2 after_install_ew2        "Výber jedného z pozadí EndeavourOS"   # was: "EndeavourOS wallpaper (choose)"   
_tr_add2 after_install_ewtip2     "Výber pozadí"                         # was: "Choose from EndeavourOS default wallpapers"

# 2020-Sep-15:
#    IMPORTANT NOTE:
#       - line 71:  changed text of 'after_install_ew'
#       - line 72:  changed text of 'after_install_ewtip'
#       - line 249: changed text of 'after_install_ew2'
#       - line 250: changed text of 'after_install_ewtip2'

# 2020-Oct-23:
_tr_add2 updt_update_check        "skontrolovať aktualizácie"
_tr_add2 updt_searching           "Vyhľadávanie"
_tr_add2 updt_for_updates         "za aktualizáciámi"
_tr_add2 updt_failure             "zlyhanie$_exclamation"
_tr_add2 updt_nothing_todo        "nieje potrebné vykonať nič"
_tr_add2 updt_press_enter         "Toto okno zavriete klávesou ENTER"

# 2020-Oct-24:
#    IMPORTANT NOTE:
#       - line 244: changed text of 'add_more_apps_done2_text'

# 2020-Dec-11:
_tr_add2 after_install_pacdiff_tip "Spravovať pacnew, pacorig $_and pacsave súbory s pacdiff $_and"

# 2021-Apr-07:
_tr_add2 after_install_conf           "Štelovať"                             # a starting verb on a sentence "Configure eos-update-notifier"
_tr_add2 after_install_more_wall      "Stiahnúť viac pozadí EndeavourOS"
_tr_add2 after_install_more_wall_tip  "Stiahnúť tradičné, a komunitné pozadia EndeavourOS"
_tr_add2 after_install_info           "informácie"                           # last word on a sentence, means just any information

_tr_add2 butt_softnews                "Softvérové novinky"
_tr_add2 butt_softnews_tip            "Dôležité správy o softvéri EndeavourOS"

_tr_add2 install_community            "Inštalovať komunitné edície"
_tr_add2 install_community_tip        "Komunitné edície: Sway, Bspwm (poznámka: potreba byť online)"

# 2021-May-01
_tr_add2 ins_syslog                   "Ako zdieľať systémové záznamy"
_tr_add2 ins_syslogtip                "Vysvetľuje, ako môžete zdieľať záznamy o systéme v prípade, že potrebujete pomoc"
_tr_add2 ins_logtool                  "Záznamy k riešeniu problémov"
_tr_add2 ins_logtooltip               "Vyberte, či vytvorte a zdieľajte záznamy k riešenu problémov, keď žiadáte o pomoc"

# 2021-May-20
_tr_add2 nb_tab_DailyAssistant       "Asistencia"
_tr_add2 daily_assistant_text        "Nástroje užitočné pre každodenné úlohy"
_tr_add2 after_install_itab          "Vybrať počiatočnú uvítaciu položku"
_tr_add2 after_install_itab_tip      "Nastaví, ktorá položka sa zobrazí ako uvítacia pri štarte"

# 2021-Jun-08
_tr_add2 daily_assist_apps           "Kategórie programov"
_tr_add2 daily_assist_apps_tip       "Aplikácie zoradené podľa kategórií"

_tr_add2 after_install_vbox1         "Povoliť nástroje pre návštevu cez VirtualBox"
_tr_add2 after_install_vbox2         "Pre povolenie nástrojov návštevy cez VirtualBox, VirtualBox Guest, vyberte prosím záložku <b>Po inštalácii</b> a kliknite na tlačítko "

# 2021-Jun-17
_tr_add2 after_install_r8168         "Poblém s káblovým pripojením$_question Prepnúť ovládače r8168 a r8169$_exclamation"    # changed 2021-Dec-14 !!
_tr_add2 after_install_r8168_tip     "Vybrať medzi ovládačmi r8168 a r8169 drivers (môže byť potrebný reštart)"           # changed 2021-Dec-14 !!

# 2021-Oct-08
_tr_add2 daily_assist_DEinfo         "informácie"                                         # assume prefix "DE:", e.g.: "Xfce: information"
_tr_add2 daily_assist_DEinfo_tip     "viac informácii o tomto desktopovom prostredí/správcovi okien"  # assume prefix "DE:", e.g.: "Xfce: more information ..."

# 2022-Feb-16
_tr_add2 add_more_apps_qs            "Vyberte si populárne aplikácie na inštaláciu"                      # runs eos-quickstart
_tr_add2 add_more_apps_qstip         "Vyberte si populárne aplikácie a nainštalujte ich"

# 2022-Mar-21
_tr_add2 ins_blue_notes              "Poznámky k Bluetooth"
_tr_add2 ins_blue_notes_tip          "Poznámky ohľadom nastavenia bluetooth"

# 2022-Mar-27
_tr_add2 after_install_fw            "Informácie o bráne firewall"
_tr_add2 after_install_fwtip         "Informácie o predvolenej bráne firewall"

# 2022-Mar-30
_tr_add2 ins_custom                  "Prispôsobovanie priebehu inštalácie"
_tr_add2 ins_custom_tip              "Ako si prispôsobiť priebeh inštalácie"

# 2022-Jul-15
_tr_add2 daily_assist_anews          "Najnovšie novinky o systéme Arch"
_tr_add2 daily_assist_anewstip       "Zobrazí najnovšie novinky o systéme Arch v prehliadači"

# 2022-Sep-25
_tr_add2 nb_notify_user1             "Sú dostupné dôležité novinky zo dňa"                        # one (or more) dates, e.g. 2023-Feb-18
_tr_add2 nb_notify_user2             "Prosím, kliknite na"                                  # Software News
_tr_add2 nb_notify_user3             "tlačidlo v ľavom dolnom rohu tohto okna."

# 2023-Feb-20
_tr_add2 ins_customized              "Získať váš súbor s prispôsobeniami inštalácie (pokročilé)"
_tr_add2 ins_cust_text               "Zadajte URL k vášmu prispôsobenému súboru user_commands.bash"
_tr_add2 ins_cust_text2              "Získaný súbor nahradí súbor v umiestnení ~/user_commands.bash"
_tr_add2 ins_cust_text3              "Toto je najužitočnejšie pri <b>online</b> inštalácii"

# 2023-Mar-29
_tr_add2 ins_no_connection           "Poznámka: Nie je dostupné pripojenie k internetu, niektoré tlačidlá sú skryté alebo nie sú funkčné."

# 2023-Aug-25
_tr_add2 ins_pmtip2                  "Správca oddielov umožní preskúmanie a správu oddielov a štruktúry disku"

# 2023-Sep-16
_tr_add2 ins_arm_start               "Inštalátor obrazu so systémom EndeavourOS ARM"
_tr_add2 ins_arm_starttip            "Spustí inštaláciu systému EndeavourOS vo vydaní ARM"

# 2024-Apr-18
_tr_add2 ins_conn_issue_title        "Čo bude ďalej?"                                                                   # NOTE: '?' works in a yad title!
_tr_add2 ins_conn_issue_text         "Nenašlo sa priojenie k internetu (možno sieť wifi nie je pripravená${_question})"
_tr_add2 ins_conn_issue_nm1          "Správca siete"
_tr_add2 ins_conn_issue_nm2          "Spustí správcu siete"
_tr_add2 ins_conn_issue_oi1          "Inštalácia bez pripojenia"
_tr_add2 ins_conn_issue_oi2          "Nainštaluje prostredie KDE bez pripojenia k internetu (po inštalácii sa odporúča vykonať aktualizáciu)"
_tr_add2 ins_conn_issue_ex1          "Skončiť"
_tr_add2 ins_conn_issue_ex2          "Ukončí tento program"

# 2024-Apr-20
_tr_add2 ins_start_calamares         "Spúšťa sa inštalátor calamares"
_tr_add2 ins_please_wait             "Prosím, čakajte..."

# 2024-Dec-05 (see also: 'after_install_us' and 'after_install_ustip' above)
_tr_add2 after_install_usnat         "Aktualizovať natívne balíky"
_tr_add2 after_install_usnat_tip     "Aktualizuje balíky z repozitárov v súbore /etc/pacman.conf"
_tr_add2 after_install_usnataur      "Aktualizovať natívne a AUR balíky"
_tr_add2 after_install_usnataur_tip  "Aktualizuje balíky  repozitárov v súbore /etc/pacman.conf a AUR"
_tr_add2 after_install_ushlp         "Aktualizovať natívne a AUR balíky"
_tr_add2 after_install_ushlp_tip     "Aktualizuje balíky z repozitárov v súbore /etc/pacman.conf a AUR s pomocníkom AUR"

_tr_add2 after_install_umartip       "Aktualizovať zoznam zrkadiel systému Arch pred aktualizáciou balíkov"
_tr_add2 after_install_umentip       "Aktualizovať zoznam zrkadiel systému EndeavourOS pred aktualizáciou balíkov"

# 2024-Dec-06
_tr_add2 after_install_reisub        "Informácie o funkcii REISUB"
_tr_add2 after_install_reisub2       "Povoliť funkciu REISUB"
_tr_add2 after_install_reisubtip     "Funkcia REISUB pomáha riešiť zlyhanie systému"

# 2024-Dec-06, take 2
_tr_add2 _commonphrase_enabled       "povolené"
_tr_add2 _commonphrase_disabled      "zakázané"

# 2024-Dec-10
_tr_add2 arch_chroot                 "Informácie o funkcii arch-chroot"
_tr_add2 arch_chroot_tip             "Funkcia arch-chroot poskytuje prístup k inému systému prostredníctvom príkazového riadka"
_tr_add2 _commonphrase_not_found     "Fráza %%s sa nenašla"                                                   # Example usage: "$(ltr _commonphrase_not_found "file1.txt")"
