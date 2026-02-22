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

# Czech:

### First some useful definitions:

_tr_lang=cs            # required helper variable for _tr_add2

# Help with some special characters (HTML). Yad has problems without them:
_exclamation='&#33;'   # '!'
_and='&#38;'           # '&'
_question='&#63;'      # '?'


###################### Now the actual strings to be translated: ######################
# func   <placeholder>         "string"

_tr_add2 welcome_disabled      "Aplikace $PRETTY_PROGNAME je zakázaná. Pokud ji chcete přesto spustit, použijte parametr --enable (jednorázově: --once)."    # changed 2022-Feb-21

_tr_add2 butt_later            "Nashle příště"
_tr_add2 butt_latertip         "Ponechat aplikaci $PRETTY_PROGNAME povolenou"

_tr_add2 butt_noshow           "Příště nezobrazovat"
_tr_add2 butt_noshowtip        "Zakázat $PRETTY_PROGNAME"

_tr_add2 butt_help             "Nápověda"


_tr_add2 nb_tab_INSTALL        "NAINSTALOVAT"
_tr_add2 nb_tab_GeneralInfo    "Obecné informace"
_tr_add2 nb_tab_AfterInstall   "Po instalaci"
_tr_add2 nb_tab_AddMoreApps    "Přidat další aplikace"


_tr_add2 after_install_text    "Úlohy po instalaci"

_tr_add2 after_install_um      "Aktualizovat zrcadla"
_tr_add2 after_install_umtip   "Aktualizovat seznam zrcadel před aktualizací systému"

_tr_add2 after_install_us      "Aktualizovat systém"    # This definition is used by Welcome 24.11-1 and older.
_tr_add2 after_install_ustip   "Aktualizovat systémové aplikace"    # This definition is used by Welcome 24.11-1 and older.

_tr_add2 after_install_dsi     "Detekovat systémové problémy"
_tr_add2 after_install_dsitip  "Detekovat potenciální problémy se systémovými balíčky a ostatní podobné problémy"

_tr_add2 after_install_etl     "Aktualizace EndeavourOS$_question"
_tr_add2 after_install_etltip  "Zobrazit informace o tom, jak získat nejnovější aktualizace EndeavourOS"

_tr_add2 after_install_cdm     "Změnit správce zobrazení"
_tr_add2 after_install_cdmtip  "Použít jiného správce zobrazení"

_tr_add2 after_install_ew      "Výchozí tapeta plochy EndeavourOS"    # was: "EndeavourOS wallpaper"
_tr_add2 after_install_ewtip   "Obnovit výchozí tapetu plochy"    # was: "Change desktop wallpaper to EOS default"


_tr_add2 after_install_pm      "Správa balíčků"
_tr_add2 after_install_pmtip   "Jak spravovat balíčky pomocí správce balíčků pacman"

_tr_add2 after_install_ay      "AUR a yay$_exclamation"
_tr_add2 after_install_aytip   "Informace o 'Arch User Repository' a správci balíčků yay"

_tr_add2 after_install_hn      "Hardware a síť"
_tr_add2 after_install_hntip   "Tipy pro zprovoznění hardwaru"

_tr_add2 after_install_bt      "Bluetooth"
_tr_add2 after_install_bttip   "Tipy pro zprovoznění a používání Bluetooth"

_tr_add2 after_install_nv      "Uživatelé NVIDIA$_exclamation"
_tr_add2 after_install_nvtip   "Tipy pro instalaci a nastavení karet NVIDIA"

_tr_add2 after_install_ft      "Tipy pro fórum"
_tr_add2 after_install_fttip   "Pomozte nám pomoci Vám$_exclamation"


_tr_add2 general_info_text     "Zorientujte se na stránkách EndeavourOS$_exclamation"

_tr_add2 general_info_ws       "Domovská stránka"

_tr_add2 general_info_wi       "Wiki"
_tr_add2 general_info_witip    "Doporučené články"

_tr_add2 general_info_ne       "Novinky"
_tr_add2 general_info_netip    "Novinky a články"

_tr_add2 general_info_fo       "Fórum"
_tr_add2 general_info_fotip    "Ptejte se, komentujte a diskutujte na našem přátelském fóru$_exclamation"

_tr_add2 general_info_do       "Zaslat dar"
_tr_add2 general_info_dotip    "Pomozte nám udržet EndeavourOS v chodu"

_tr_add2 general_info_ab       "O aplikaci $PRETTY_PROGNAME"
_tr_add2 general_info_abtip    "Další informace o této aplikaci"


_tr_add2 add_more_apps_text    "Nainstalovat populární aplikace"

_tr_add2 add_more_apps_lotip   "Kancelářské nástroje (libreoffice-fresh)"

_tr_add2 add_more_apps_ch      "Prohlížeč Chromium"
_tr_add2 add_more_apps_chtip   "Webový prohlížeč"

_tr_add2 add_more_apps_fw      "Firewall"
_tr_add2 add_more_apps_fwtip   "Gufw firewall"

_tr_add2 add_more_apps_bt      "Bluetooth (blueberry) pro Xfce"
_tr_add2 add_more_apps_bt_bm   "Bluetooth (blueman) pro Xfce"


####################### NEW STUFF AFTER THIS LINE:

_tr_add2 settings_dis_contents   "Pokud budete chtít později aplikaci $PRETTY_PROGNAME znovu spustit, spusťte terminál a spusťte:\n<tt>   $PROGNAME --enable</tt>\nnebo\n<tt>   $PROGNAME --once</tt>\n"    # slightly changed 2021-Dec-21; changed again 2022-Apr-06
_tr_add2 settings_dis_text       "Znovu povolení aplikace $PRETTY_PROGNAME:"
_tr_add2 settings_dis_title      "Jak znovu povolit aplikaci $PRETTY_PROGNAME"
_tr_add2 settings_dis_butt       "Rozumím"
_tr_add2 settings_dis_buttip     "Slibuji"

_tr_add2 help_butt_title         "Nápověda aplikace $PRETTY_PROGNAME"
_tr_add2 help_butt_text          "Další informace o aplikaci $PRETTY_PROGNAME"

_tr_add2 dm_title                "Vybrat správce zobrazení"
_tr_add2 dm_col_name1            "Vybráno"
_tr_add2 dm_col_name2            "Název správce zobrazení"

_tr_add2 dm_reboot_required      "Aby se změny projevili, je vyžadován restart systému."
_tr_add2 dm_changed              "Správce zobrazení změněn na: "
_tr_add2 dm_failed               "Změna správce zobrazení se nezdařila."
_tr_add2 dm_warning_title        "Varování"

_tr_add2 install_installer       "Instalátor"
_tr_add2 install_already         "nainstalováno"
_tr_add2 install_ing             "Instalace..."
_tr_add2 install_done            "Dokončeno."

_tr_add2 sysup_no                "Žádné aktualizace."
_tr_add2 sysup_check             "Vyhledávání aktualizací..."

_tr_add2 issues_title            "Detekce problémů s balíčky"
_tr_add2 issues_grub             "DŮLEŽITÉ: bude nutné ručně obnovit nabídku zavaděče systému."
_tr_add2 issues_run              "Spouštěné příkazy:"
_tr_add2 issues_no               "Nebyly zjištěny žádné důležité problémy."

_tr_add2 cal_noavail            "Není k dispozici: "    # installer program
_tr_add2 cal_warn               "Varování"
_tr_add2 cal_info1              "Toto je komunitou vyvinuté vydání.\n\n"    # specials needed!
_tr_add2 cal_info2              "<b>Offline</b> nabídne desktopové prostředí %%s.\nNení vyžadováno připojení k internetu.\n\n"
_tr_add2 cal_info3              "<b>Online</b> umožňuje výběr desktopového prostředí.\nVyžaduje připojení k internetu.\n\n"
_tr_add2 cal_info4              "Poznámka: Toto vydání je ve fázi vývoje, pomozte nám ho stabilizovat hlášením chyb.\n"
_tr_add2 cal_info5              "\nPo dokončení instalace doporučujeme spustit aktualizaci systému.\n\n"
_tr_add2 cal_info6              "\nPo dokončení instalace je systém aktuální.\n\n"
_tr_add2 cal_choose             "Vyberte metodu instalace"
_tr_add2 cal_method             "Metoda"
_tr_add2 cal_nosupport          "$PROGNAME: nepodporovaný režim: "
_tr_add2 cal_nofile             "$PROGNAME: vyžadovaný soubor neexistuje: "
_tr_add2 cal_istarted           "Instalace spuštěna"
_tr_add2 cal_istopped           "Instalace dokončena"

_tr_add2 tail_butt              "Zavřít toto okno"
_tr_add2 tail_buttip            "Zavřít jen toto okno"


_tr_add2 ins_text              "Instalace EndeavourOS na disk"
_tr_add2 ins_start             "Spustit instalátor"
_tr_add2 ins_starttip          "Spustí instalátor EndeavourOS (možnost výběru z hlavních desktopových prostředí)"    # changed 2023-Jan-12
_tr_add2 ins_up                "Aktualizovat tuto aplikaci$_exclamation"
_tr_add2 ins_uptip             "Aktualizuje tuto aplikaci a restartuje ji"
_tr_add2 ins_keys              "Inicializovat klíče pro pacman"
_tr_add2 ins_keystip           "Inicializace klíčů pro pacman"
_tr_add2 ins_pm                "Správce diskových oddílů"
_tr_add2 ins_pmtip             "Gparted umožňuje prohlížet a spravovat disky a diskové oddíly"
_tr_add2 ins_rel               "Informace o nejnovějším vydání"
_tr_add2 ins_reltip            "Další informace o nejnovějším vydání"
_tr_add2 ins_tips              "Tipy pro instalaci"
_tr_add2 ins_tipstip           "Tipy pro instalaci"
_tr_add2 ins_trouble           "Řešení problémů"
_tr_add2 ins_troubletip        "Záchrana systému"

_tr_add2 after_install_us_from    "Aktualizace z"    # AUR or upstream
_tr_add2 after_install_us_el      "Vyžadována zvýšená oprávnění."
_tr_add2 after_install_us_done    "aktualizace dokončena."
_tr_add2 after_install_us_fail    "aktualizace se nezdařila$_exclamation"

# 2020-May-14:

_tr_add2 nb_tab_UsefulTips     "Tipy"
_tr_add2 useful_tips_text      "Užitečné tipy"

# 2020-May-16:

_tr_add2 butt_changelog        "Seznam změn"
_tr_add2 butt_changelogtip     "Seznam změn aplikace Welcome"

_tr_add2 after_install_themevan      "Xfce motiv"
_tr_add2 after_install_themevantip   "Použít výchozí Xfce motiv"

_tr_add2 after_install_themedef     "Xfce motiv EndeavourOS"
_tr_add2 after_install_themedeftip  "Použít Xfce motiv EndeavourOS"

# 2020-Jun-28:
_tr_add2 after_install_pclean       "Nastavit čištění balíčků"
_tr_add2 after_install_pcleantip    "Nastavení služby čištění mezipaměti balíčků"

# 2020-Jul-04:
_tr_add2 nb_tab_OwnCommands         "Uživatelské příkazy"    # modified 2020-Jul-08
_tr_add2 nb_tab_owncmds_text        "Personalizované příkazy"    # modified 2020-Jul-08

# 2020-Jul-08:
_tr_add2 nb_tab_owncmdstip          "Nápověda pro přidání uživatelských příkazů"

_tr_add2 add_more_apps_akm          "Správce jader"
_tr_add2 add_more_apps_akmtip       "Jednoduchý správce linuxových jader"

# 2020-Jul-15:
_tr_add2 butt_owncmds_help        "Průvodce: Uživatelské příkazy"

# 2020-Aug-05:
_tr_add2 butt_owncmds_dnd         "Přidat uživatelské příkazy"
_tr_add2 butt_owncmds_dnd_help    "Zobrazí okno do kterého je možné přetáhnout položky ze kterých budou vytvořena nová tlačítka"

# 2020-Sep-03:
_tr_add2 ins_reso                 "Změnit rozlišení displeje"
_tr_add2 ins_resotip              "Změna rozlišení displeje"

# 2020-Sep-08:
_tr_add2 add_more_apps_arch          "Procházet seznam Arch balíčků"
_tr_add2 add_more_apps_aur           "Procházet seznam AUR balíčků"
_tr_add2 add_more_apps_done1_text    "Navrhované aplikace jsou již nainstalovány$_exclamation"
_tr_add2 add_more_apps_done2_text    "nebo procházet všechny Arch a AUR balíčky"
_tr_add2 add_more_apps_done2_tip1    "Pro nainstalování použijte 'pacman' nebo 'yay'"
_tr_add2 add_more_apps_done2_tip2    "Pro nainstalování použijte 'yay'"

# 2020-Sep-11:
_tr_add2 after_install_ew2        "Vyberte jednu z tapet plochy EndeavourOS"    # was: "EndeavourOS wallpaper (choose)"
_tr_add2 after_install_ewtip2     "Výběr tapet plochy"    # was: "Choose from EndeavourOS default wallpapers"

# 2020-Sep-15:
#    IMPORTANT NOTE:
#       - line 71:  changed text of 'after_install_ew'
#       - line 72:  changed text of 'after_install_ewtip'
#       - line 249: changed text of 'after_install_ew2'
#       - line 250: changed text of 'after_install_ewtip2'

# 2020-Oct-23:
_tr_add2 updt_update_check        "kontrola aktualizací"
_tr_add2 updt_searching           "Vyhledávání"
_tr_add2 updt_for_updates         "aktualizací"
_tr_add2 updt_failure             "selhalo$_exclamation"
_tr_add2 updt_nothing_todo        "není co dělat"
_tr_add2 updt_press_enter         "Pro zavření okna stiskněte ENTER"

# 2020-Oct-24:
#    IMPORTANT NOTE:
#       - line 244: changed text of 'add_more_apps_done2_text'

# 2020-Dec-11:
_tr_add2 after_install_pacdiff_tip "Spravujte soubory pacnew, pacorig a pacsave pomocí pacdiff a"

# 2021-Apr-07:
_tr_add2 after_install_conf           "Nastavit"    # a starting verb on a sentence "Configure eos-update-notifier"
_tr_add2 after_install_more_wall      "Stáhnout další tapety plochy pro EndeavourOS"
_tr_add2 after_install_more_wall_tip  "Stáhne starší a komunitní tapety plochy pro EndeavourOS"
_tr_add2 after_install_info           "informace"    # last word on a sentence, means just any information

_tr_add2 butt_softnews                "Novinky"
_tr_add2 butt_softnews_tip            "Důležité novinky o EndeavourOS a aplikacích"

_tr_add2 install_community            "Nainstalovat komunitní edice"
_tr_add2 install_community_tip        "Výběr ze sbírky komunitních edicí (převážně správci oken)"    # changed 2021-Oct-23, 2023-Jan-12

# 2021-May-01failure
_tr_add2 ins_syslog                   "Jak sdílet systémové protokoly"
_tr_add2 ins_syslogtip                "Vysvětlení jak můžete sdílet systémové protokoly pokud potřebujete pomoc"
_tr_add2 ins_logtool                  "Protokoly pro řešení problémů"
_tr_add2 ins_logtooltip               "Vyberte, vytvořte a sdílejte protokoly pro řešení problémů pro vaši žádost o pomoc"

# 2021-May-20
_tr_add2 nb_tab_DailyAssistant       "Asistent"
_tr_add2 daily_assistant_text        "Nástroje pro užitečné nebo každodenní úlohy"
_tr_add2 after_install_itab          "Vybrat výchozí záložku"
_tr_add2 after_install_itab_tip      "Výběr záložky, která bude vybrána po spuštění aplikace Welcome"

# 2021-Jun-08
_tr_add2 daily_assist_apps           "Kategorie aplikací"
_tr_add2 daily_assist_apps_tip       "Aplikace seřazené podle kategorií"

_tr_add2 after_install_vbox1         "Povolit nástroje hosta pro VirtualBox"
_tr_add2 after_install_vbox2         "Pro povolení nástrojů hosta pro VirtualBox vyberte záložku <b>Po instalaci</b> a klikněte na tlačítko "

# 2021-Jun-17
_tr_add2 after_install_r8168         "Problémy s pevným síťovým připojením$_question Zkuste přepnout mezi ovladači r8168 a r8169$_exclamation"    # changed 2021-Dec-14 !!
_tr_add2 after_install_r8168_tip     "Přepne mezi ovladači r8168 a r8169 (může vyžadovat restart)"    # changed 2021-Dec-14 !!

# 2021-Oct-08
_tr_add2 daily_assist_DEinfo         "informace"    # assume prefix "DE:", e.g.: "Xfce: information"
_tr_add2 daily_assist_DEinfo_tip     "další informace o tomto desktopovém prostředí / správci oken"    # assume prefix "DE:", e.g.: "Xfce: more information ..."

# 2022-Feb-16
_tr_add2 add_more_apps_qs            "Vyberte a doinstalujte další aplikace"    # runs eos-quickstart
_tr_add2 add_more_apps_qstip         "Vyberte si a doinstalujte další aplikace ze seznamu populárních aplikací"

# 2022-Mar-21
_tr_add2 ins_blue_notes              "Poznámky k Bluetooth"
_tr_add2 ins_blue_notes_tip          "Poznámky o nastavení Bluetooth"

# 2022-Mar-27
_tr_add2 after_install_fw            "Informace o firewallu"
_tr_add2 after_install_fwtip         "Informace o výchozím firewallu"

# 2022-Mar-30
_tr_add2 ins_custom                  "Přizpůsobení instalace"
_tr_add2 ins_custom_tip              "Tipy pro přizpůsobení procesu instalace"

# 2022-Jul-15
_tr_add2 daily_assist_anews          "Aktuální novinky o Archu"
_tr_add2 daily_assist_anewstip       "Otevře prohlížeč s aktuálními novinkami o Archu"

# 2022-Sep-25
_tr_add2 nb_notify_user1             "K dispozici jsou důležité novinky vydané"    # one (or more) dates, e.g. 2023-Feb-18
_tr_add2 nb_notify_user2             "Klikněte na tlačítko"    # Software News
_tr_add2 nb_notify_user3             "v levém spodním rohu tohoto okna."

# 2023-Feb-20
_tr_add2 ins_customized              "Načíst soubor přizpůsobení instalace (pokročilé)"
_tr_add2 ins_cust_text               "Zadejte adresu vašeho přizpůsobeného user_commands.bash"
_tr_add2 ins_cust_text2              "Stažený soubor nahradí ~/user_commands.bash"
_tr_add2 ins_cust_text3              "Užitečné hlavně pro <b>online</b> instalaci"

# 2023-Mar-29
_tr_add2 ins_no_connection           "Poznámka: není k dispozici připojení k internetu, některá tlačítka budou skryta nebo nebudou fungovat."

# 2023-Aug-25
_tr_add2 ins_pmtip2                  "Správce diskových oddílů umožňuje prohlížet a spravovat disky, oddíly a souborové systémy"

# 2023-Sep-16
_tr_add2 ins_arm_start               "Instalátor EndeavourOS ARM"
_tr_add2 ins_arm_starttip            "Spustí instalaci EndeavourOS pro ARM"

# 2024-Apr-18
_tr_add2 ins_conn_issue_title        "Co dále?"                                                                   # NOTE: '?' works in a yad title!
_tr_add2 ins_conn_issue_text         "Není k dispozici připojení k internetu (wifi možná ještě není připravena${_question})"
_tr_add2 ins_conn_issue_nm1          "Nastavení sítě"
_tr_add2 ins_conn_issue_nm2          "Spustí nastavení sítě"
_tr_add2 ins_conn_issue_oi1          "Offline instalace"
_tr_add2 ins_conn_issue_oi2          "Nainstaluje KDE, není vyžadováno připojení k internetu (po dokončení instalace doporučujeme provést aktualizaci systému)"
_tr_add2 ins_conn_issue_ex1          "Ukončit"
_tr_add2 ins_conn_issue_ex2          "Ukončí tento program"

# 2024-Apr-20
_tr_add2 ins_start_calamares         "Spouští se calamares"
_tr_add2 ins_please_wait             "Prosím čekejte..."

# 2024-Dec-05 (see also: 'after_install_us' and 'after_install_ustip' above)
_tr_add2 after_install_usnat         "Aktualizovat nativní balíčky"
_tr_add2 after_install_usnat_tip     "Aktualizuje balíčky z repozitářů v /etc/pacman.conf"
_tr_add2 after_install_usnataur      "Aktualizovat nativní a AUR balíčky"
_tr_add2 after_install_usnataur_tip  "Aktualizuje balíčky z repozitářů v /etc/pacman.conf a AUR"
_tr_add2 after_install_ushlp         "Aktualizovat nativní a AUR balíčky"
_tr_add2 after_install_ushlp_tip     "Aktualizuje balíčky z repozitářů v /etc/pacman.conf a AUR prostřednictvím yay"

_tr_add2 after_install_umartip       "Než budete aktualizovat balíčky, aktualizujte seznam zrcadel Archu"
_tr_add2 after_install_umentip       "Než budete aktualizovat balíčky, aktualizujte seznam zrcadel EndeavourOS"

# 2024-Dec-06
_tr_add2 after_install_reisub        "Informace o REISUB"
_tr_add2 after_install_reisub2       "Povolit REISUB"
_tr_add2 after_install_reisubtip     "REISUB pomáhá s řešením pádů systému"

# 2024-Dec-06, take 2
_tr_add2 _commonphrase_enabled       "povoleno"
_tr_add2 _commonphrase_disabled      "zakázáno"

# 2024-Dec-10
_tr_add2 arch_chroot                 "Informace o arch-chroot"
_tr_add2 arch_chroot_tip             "arch-chroot poskytuje přístup k jinému systému z příkazové řádky"
_tr_add2 _commonphrase_not_found     "%%s nebyl nalezen"    # Example usage: "$(ltr _commonphrase_not_found "file1.txt")"

# 2025-Oct-05
_tr_add2 after_install_mani          "Manuální intervence"
_tr_add2 after_install_manitip       "Proveďte nezbytné manuální zásahy (např. nezbytné opravy, viz https://archlinux.org/news)"
