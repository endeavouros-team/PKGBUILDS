# Preklad uvítacej aplikácie.
#
# Poznámka: premenné (ako $PRETTY_PROGNAME nižšie), môžu byť použité ak už boli definované buď
# - v uvítacej aplikácii
# - globálne
#
#
# Akýkoľvek reťazec má byť definovaný ako:
#
#    _tr_add <language> <placeholder> "string"
#          or
#    _tr_add2 <placeholder> "string"
#
# kde
#
#    _tr_add         A bash function that adds a "string" to the strings database.
#    _tr_add2        Same as _tr_add but knows the language from the _tr_lang variable (below).
#    <language>      An acronym for the language, e.g. "en" for English (check the LANG variable!).
#    <placeholder>   A pre-defined name that identifies the place in the Welcome app where this string is used.
#    "string"        The translated string for the Welcome app.

# Slovak:

### Najskôr nejaké užitočné definície:

_tr_lang=sk            # required helper variable for _tr_add2

# Help with some special characters (HTML). Yad has problems without them:
_exclamation='&#33;'   # '!'
_and='&#38;'           # '&'
_question='&#63;'      # '?'


###################### Now the actual strings to be translated: ######################
# func   <placeholder>         "string"

_tr_add2 welcome_disabled      "Aplikácia $PRETTY_PROGNAME je vypnutá. Ak ju ale aj tak chcete spustiť, použite príkaz --enable."

_tr_add2 butt_later            "Vidíme sa neskôr"
_tr_add2 butt_latertip         "Ponechať $PRETTY_PROGNAME zapnutý"

_tr_add2 butt_noshow           "Už viac neukazovať"
_tr_add2 butt_noshowtip        "Vypnúť $PRETTY_PROGNAME"

_tr_add2 butt_help             "Pomoc"


_tr_add2 nb_tab_INSTALL        "INŠTALOVAŤ"
_tr_add2 nb_tab_GeneralInfo    "Všeobecné informácie"
_tr_add2 nb_tab_AfterInstall   "Po inštalácii"
_tr_add2 nb_tab_AddMoreApps    "Pridať dalšie aplikácie"


_tr_add2 after_install_text    "Úlohy po doinštalovaní"

_tr_add2 after_install_um      "Upraviť mirory"
_tr_add2 after_install_umtip   "Aktualizovať zoznam mirorov pred aktualizovaním systému"

_tr_add2 after_install_us      "Aktualizovať systém"
_tr_add2 after_install_ustip   "Aktualizovať systémové aplikácie"

_tr_add2 after_install_dsi     "Zistiť problémy systému"
_tr_add2 after_install_dsitip  "Skontrolovať akékoľvek možné problémy so systémovými balíčkami, alebo inde"

_tr_add2 after_install_etl     "Je EndeavourOS najnovší$_question"
_tr_add2 after_install_etltip  "Ukázať, čo treba robiť, aby sa systém dostal na najnovšiu verziu EndeavourOS"

_tr_add2 after_install_cdm     "Zmeniť správcu zobrazenia"
_tr_add2 after_install_cdmtip  "Použiť iného zobrazovacieho správcu"

_tr_add2 after_install_ew      "EndeavourOS pozadie"
_tr_add2 after_install_ewtip   "Zmeniť pozadie na východiskové pre EOS"


_tr_add2 after_install_pm      "Spravovanie balíčkov"
_tr_add2 after_install_pmtip   "Ako spravovať balíčky s pacmanom"

_tr_add2 after_install_ay      "AUR $_and yay$_exclamation"
_tr_add2 after_install_aytip   "Informácie o Arch User Repository a yay"

_tr_add2 after_install_hn      "Hardvér a sieť"
_tr_add2 after_install_hntip   "Sprevoznite si svoj hardvér"

_tr_add2 after_install_bt      "Bluetooth"
_tr_add2 after_install_bttip   "Rady ohľadom Bluetooth"

_tr_add2 after_install_nv      "Užívatelia NVIDIA kariet$_exclamation"
_tr_add2 after_install_nvtip   "Použiť NVIDIA inštalátor"

_tr_add2 after_install_ft      "Rady ohľadom fóra"
_tr_add2 after_install_fttip   "Pomôžte nám pomôcť vám!"


_tr_add2 general_info_text     "Nájdite svoju cestu na stránke EndeavourOS$_exclamation"

_tr_add2 general_info_ws       "Webová stránka"

_tr_add2 general_info_wi       "Wiki"
_tr_add2 general_info_witip    "Zvýraznené články"

_tr_add2 general_info_ne       "Novinky"
_tr_add2 general_info_netip    "Novinky a články"

_tr_add2 general_info_fo       "Fórum"
_tr_add2 general_info_fotip    "Pýtajte sa, komentujte a diskutujte na našom priateľskom fóre!"

_tr_add2 general_info_do       "Prispieť"
_tr_add2 general_info_dotip    "Pomôžte nám udržať EndeavourOS v prevoze"

_tr_add2 general_info_ab       "O $PRETTY_PROGNAME"
_tr_add2 general_info_abtip    "Viac informácií o tejto aplikácii"


_tr_add2 add_more_apps_text    "Inštalovať populárne aplikácie"

_tr_add2 add_more_apps_lotip   "Kancelársky balík (libreoffice-fresh)"

_tr_add2 add_more_apps_ch      "Prehliadač Chromium"
_tr_add2 add_more_apps_chtip   "Webový prehliadač"

_tr_add2 add_more_apps_fw      "Firewall"
_tr_add2 add_more_apps_fwtip   "Gufw firewall"

_tr_add2 add_more_apps_bt      "Bluetooth (blueberry) pre Xfce"
_tr_add2 add_more_apps_bt_bm   "Bluetooth (blueman) pre Xfce"


####################### NEW STUFF AFTER THIS LINE:

_tr_add2 settings_dis_contents   "Ak chcete znova spustiť $PRETTY_PROGNAME, zapnite terminál a zadajte: $PROGNAME --enable"
_tr_add2 settings_dis_text       "Znova spustiť $PRETTY_PROGNAME:"
_tr_add2 settings_dis_title      "Ako znova spustiť $PRETTY_PROGNAME"
_tr_add2 settings_dis_butt       "Pamätám si"
_tr_add2 settings_dis_buttip     "Sľubujem"

_tr_add2 help_butt_title         "$PRETTY_PROGNAME pomoc"
_tr_add2 help_butt_text          "Viac informácií o aplikácii $PRETTY_PROGNAME"

_tr_add2 dm_title                "Vybrať Display Manager"
_tr_add2 dm_col_name1            "Vybraný"
_tr_add2 dm_col_name2            "názov DM"

_tr_add2 dm_reboot_required      "Aby sa zmeny prejavili, je potrebný reštart."
_tr_add2 dm_changed              "DM zmenený na: "
_tr_add2 dm_failed               "Menenie DM zlyhalo."
_tr_add2 dm_warning_title        "Varovanie"

_tr_add2 install_installer       "Inštalátor"
_tr_add2 install_already         "už nainštalovaný"
_tr_add2 install_ing             "Inštalovanie"
_tr_add2 install_done            "Dokončené."

_tr_add2 sysup_no                "Žiadné aktualizácie."
_tr_add2 sysup_check             "Hľadajú sa aktualizácie softvéru..."

_tr_add2 issues_title            "Zistenie problémov s balíčkami"
_tr_add2 issues_grub             "DÔLEŽITÉ: bude potrebné ručne prerobiť bootovaciu ponuku."
_tr_add2 issues_run              "Spúštanie príkazov:"
_tr_add2 issues_no               "Neboli zistené žiadné dôležité problémy so systémom."

_tr_add2 cal_noavail            "Nedostupný: "        # installer program
_tr_add2 cal_warn               "Varovanie"
_tr_add2 cal_info1              "Toto je komunitné, vývojové vydanie.\n\n"                                   # specials needed!
_tr_add2 cal_info2              "<b>Offline</b> spôsob vám dá Xfce prostredie otémované pre EndeavourOS.\nNieje potrebné internetové pripojenie.\n\n"
_tr_add2 cal_info3              "<b>Online</b> spôsob vám umožňuje vybrať si uživateľské prostredie, so základnou témou.\nJe potrebné internetové pripojenie.\n\n"
_tr_add2 cal_info4              "Dbajte: Toto vydanie je v rozpracovanom štádiu, prosíme vás, pomôžte nám ho zostabilizovať nahlasovaním chýb.\n"
_tr_add2 cal_choose             "Vyberte spôsob inštalácie"
_tr_add2 cal_method             "Spôsob"
_tr_add2 cal_nosupport          "$PROGNAME: nepodporovaný režim: "
_tr_add2 cal_nofile             "$PROGNAME: požadovaný súbor neexistuje: "
_tr_add2 cal_istarted           "Inštalácia začatá"
_tr_add2 cal_istopped           "Inštalácia dokončená"

_tr_add2 tail_butt              "Zavrieť toto okno"
_tr_add2 tail_buttip            "Zavrieť iba toto okno"


_tr_add2 ins_text              "Inštalovanie EndeavourOS na disk"
_tr_add2 ins_start             "Spustiť inštaláciu"
_tr_add2 ins_starttip          "Spustiť EndeavourOS inštalátor, spolu s debugovou konzolou"
_tr_add2 ins_up                "Aktualizujte túto aplikáciu$_exclamation"
_tr_add2 ins_uptip             "Aktualizuje túto aplikáciu, a spustí ju znova"
_tr_add2 ins_keys              "Inicializovať pacman kľúče"
_tr_add2 ins_keystip           "Inicializovať pacman kľúče"
_tr_add2 ins_pm                "Správca diskových oddielov"
_tr_add2 ins_pmtip             "Gparted umožňuje prezerať a spravovať diskové oddiely a štruktúru"
_tr_add2 ins_rel               "Informácie o najnovšom vydaní"
_tr_add2 ins_reltip            "Viac informácií o najnovšom vydaní"
_tr_add2 ins_tips              "Tipy pre inštaláciu"
_tr_add2 ins_tipstip           "Tipy k inštalácii"
_tr_add2 ins_trouble           "Riešenie problémov"
_tr_add2 ins_troubletip        "Záchrana systému"

_tr_add2 after_install_us_from    "Aktualizácie od"                            # AUR or upstream
_tr_add2 after_install_us_el      "Sú potrebné vyššie privilégiá"
_tr_add2 after_install_us_done    "aktualizácia dokončená."
_tr_add2 after_install_us_fail    "aktualizácia zlyhala!"
