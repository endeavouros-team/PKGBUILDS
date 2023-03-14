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

# English:

### First some useful definitions:

_tr_lang=uk_UA            # required helper variable for _tr_add2

# Help with some special characters (HTML). Yad has problems without them:
_exclamation='&#33;'   # '!'
_and='&#38;'           # '&'
_question='&#63;'      # '?'


###################### Now the actual strings to be translated: ######################
# func   <placeholder>         "string"

_tr_add2 welcome_disabled      "$PRETTY_PROGNAME вимкнена. Щоб запускати її при старті, використайте опцію --enable (раніше: --once)."  # changed 2022-Feb-21

_tr_add2 butt_later            "Побачимося!"
_tr_add2 butt_latertip         "Лишіть $PRETTY_PROGNAME ввімкненою"

_tr_add2 butt_noshow           "Не показувати більше"
_tr_add2 butt_noshowtip        "Вимкнути $PRETTY_PROGNAME"

_tr_add2 butt_help             "Допомога"


_tr_add2 nb_tab_INSTALL        "ВСТАНОВИТИ"
_tr_add2 nb_tab_GeneralInfo    "Загальна інформація"
_tr_add2 nb_tab_AfterInstall   "Після встановлення"
_tr_add2 nb_tab_AddMoreApps    "Більше програм"


_tr_add2 after_install_text    "Після встановлення"

_tr_add2 after_install_um      "Оновити дзеркала"
_tr_add2 after_install_umtip   "Оновіть список дзеркал перед оновленням системи"

_tr_add2 after_install_us      "Оновити систему"
_tr_add2 after_install_ustip   "Оновити системні програми"

_tr_add2 after_install_dsi     "Виявили помилки у системі"
_tr_add2 after_install_dsitip  "Виявили потенційні помилки у системних пакунках або будь-де"

_tr_add2 after_install_etl     "EndeavourOS свіжі питання$_question"
_tr_add2 after_install_etltip  "Як отримати останні оновлення EndeavourOS"

_tr_add2 after_install_cdm     "Змінити менеджер екрану"
_tr_add2 after_install_cdmtip  "Використати інший менеджер екрану"

_tr_add2 after_install_ew      "Типові шпалери EndeavourOS"      # was: "EndeavourOS wallpaper"
_tr_add2 after_install_ewtip   "Змінити на типові шпалери"     # was: "Change desktop wallpaper to EOS default"


_tr_add2 after_install_pm      "Керування пакунками"
_tr_add2 after_install_pmtip   "Як керувати пакунками за допомогою pacman"

_tr_add2 after_install_ay      "AUR і yay$_exclamation"
_tr_add2 after_install_aytip   "Інформація про Arch User Repository та yay"

_tr_add2 after_install_hn      "Обладнання та мережа"
_tr_add2 after_install_hntip   "Як змусити ваше обладнання працювати"

_tr_add2 after_install_bt      "Bluetooth"
_tr_add2 after_install_bttip   "Поради щодо Bluetooth"

_tr_add2 after_install_nv      "NVIDIA користувачі$_exclamation"
_tr_add2 after_install_nvtip   "Використати NVIDIA встановник"

_tr_add2 after_install_ft      "Поради форуму"
_tr_add2 after_install_fttip   "Допоможіть нам допомогти Вам$_exclamation"


_tr_add2 general_info_text     "Знайди свій шлях на сайті EndeavourOS$_exclamation"

_tr_add2 general_info_ws       "Веб сайт"

_tr_add2 general_info_wi       "Вікі"
_tr_add2 general_info_witip    "Корисні статті"

_tr_add2 general_info_ne       "Новини"
_tr_add2 general_info_netip    "Новини та статті"

_tr_add2 general_info_fo       "Форум"
_tr_add2 general_info_fotip    "Питай, коментуй, спілкуйся на нашому дружньому форумі$_exclamation"

_tr_add2 general_info_do       "Донатити"
_tr_add2 general_info_dotip    "Допоможіть нам зберегти EndeavourOS"

_tr_add2 general_info_ab       "Про $PRETTY_PROGNAME"
_tr_add2 general_info_abtip    "Більше інформації про цей додаток"


_tr_add2 add_more_apps_text    "Встановити популярні програми"

_tr_add2 add_more_apps_lotip   "Офісні інструменти (libreoffice-fresh)"

_tr_add2 add_more_apps_ch      "Chromium"
_tr_add2 add_more_apps_chtip   "Веб браузер"

_tr_add2 add_more_apps_fw      "Фаєрвол"
_tr_add2 add_more_apps_fwtip   "Gufw фаєрвол"

_tr_add2 add_more_apps_bt      "Bluetooth (blueberry) для Xfce"
_tr_add2 add_more_apps_bt_bm   "Bluetooth (blueman) для Xfce"


####################### NEW STUFF AFTER THIS LINE:

_tr_add2 settings_dis_contents   "Щоб запустити $PRETTY_PROGNAME знову, запустіть консоль і введіть:\n<tt>   $PROGNAME --enable</tt>\nor\n<tt>   $PROGNAME --once</tt>\n"  # slightly changed 2021-Dec-21; changed again 2022-Apr-06
_tr_add2 settings_dis_text       "Перезапуск $PRETTY_PROGNAME:"
_tr_add2 settings_dis_title      "Як знову запустити $PRETTY_PROGNAME"
_tr_add2 settings_dis_butt       "Я знаю"
_tr_add2 settings_dis_buttip     "Обіцяю"

_tr_add2 help_butt_title         "$PRETTY_PROGNAME Допомога"
_tr_add2 help_butt_text          "Більше інформації про $PRETTY_PROGNAME додаток"

_tr_add2 dm_title                "Обрати менеджер екрану"
_tr_add2 dm_col_name1            "Обрано"
_tr_add2 dm_col_name2            "Назва ЕМ"

_tr_add2 dm_reboot_required      "Щоб застосувати зміни, потрібно перезапустити."
_tr_add2 dm_changed              "ЕМ змінено на: "
_tr_add2 dm_failed               "Зміна ЕМ відбулася з помилкою."
_tr_add2 dm_warning_title        "Увага"

_tr_add2 install_installer       "Встановник"
_tr_add2 install_already         "вже встановлено"
_tr_add2 install_ing             "Встановлюється"
_tr_add2 install_done            "Закінчено."

_tr_add2 sysup_no                "Немає оновлень."
_tr_add2 sysup_check             "Перевіряємо оновлення програм..."

_tr_add2 issues_title            "Перевірка помилок програми"
_tr_add2 issues_grub             "ВАЖЛИВО: меню завантаження необхідно перестворити вручну."
_tr_add2 issues_run              "Запуск команд:"
_tr_add2 issues_no               "Жодних суттєвих помилок системи не виявлено."

_tr_add2 cal_noavail            "Не досяжно: "        # installer program
_tr_add2 cal_warn               "Увага"
_tr_add2 cal_info1              "Цей реліз розроблено спільнотою.\n\n"                                   # specials needed!
_tr_add2 cal_info2              "<b>Oфлайн</b> метод дозволяє вствновити робочий стіл Xfce з типовим EndeavourOS дизайном.\nІнтернет-з'єднання непотрібне.\n\n"
_tr_add2 cal_info3              "<b>Онлайн</b> метод дозволяє обрати робочий стіл із класичним оформленням екранного менеджера.\nНеобхідний інтернет.\n\n"
_tr_add2 cal_info4              "Зауважте: Робота над релізом у процесі, будь ласка допоможіть нам зробити його стабільним, повідомляючи про помилки.\n"
_tr_add2 cal_choose             "Оберіть метод встановлення"
_tr_add2 cal_method             "Метод"
_tr_add2 cal_nosupport          "$PROGNAME: не підтримується: "
_tr_add2 cal_nofile             "$PROGNAME: немає необхідного файлу: "
_tr_add2 cal_istarted           "Встановлення почалося"
_tr_add2 cal_istopped           "Встановлення закінчилося"

_tr_add2 tail_butt              "Закрийте це вікно"
_tr_add2 tail_buttip            "Закрийте тільки це вікно"


_tr_add2 ins_text              "Встановлення EndeavourOS на диск"
_tr_add2 ins_start             "Запустити встановлювач"
_tr_add2 ins_starttip          "Запустити встановлювач EndeavourOS (оберіть серед головних робочих столів)"   # changed 2023-Jan-12
_tr_add2 ins_up                "Оновіть цей додаток$_exclamation"
_tr_add2 ins_uptip             "Оновить цей додаток та перезапустить його"
_tr_add2 ins_keys              "Ініціювати ключі pacman"
_tr_add2 ins_keystip           "Ініціювати ключі pacman"
_tr_add2 ins_pm                "Менеджер дисків"
_tr_add2 ins_pmtip             "Gparted дозволяє перевірку та керування структурою дисків"
_tr_add2 ins_rel               "Інформація про останній реліз"
_tr_add2 ins_reltip            "Більше інформації про останній реліз"
_tr_add2 ins_tips              "Поради до встановлення"
_tr_add2 ins_tipstip           "Поради до встановлення"
_tr_add2 ins_trouble           "Усунення несправностей"
_tr_add2 ins_troubletip        "Порятунок системи"

_tr_add2 after_install_us_from    "Оновлено з"                            # AUR or upstream
_tr_add2 after_install_us_el      "Необхідні вибіркові привілеї."
_tr_add2 after_install_us_done    "оновлено."
_tr_add2 after_install_us_fail    "оновлення не вдалося$_exclamation"

# 2020-May-14:

_tr_add2 nb_tab_UsefulTips     "Поради"
_tr_add2 useful_tips_text      "Корисні поради"

# 2020-May-16:

_tr_add2 butt_changelog        "Список змін"
_tr_add2 butt_changelogtip     "Показати список змін додатку Welcome"

_tr_add2 after_install_themevan      "Класична тема Xfce"
_tr_add2 after_install_themevantip   "Використати типову тему Xfce"

_tr_add2 after_install_themedef     "Класична тема Xfce для EndeavourOS"
_tr_add2 after_install_themedeftip  "Використати типову тему EndeavourOS для Xfce"

# 2020-Jun-28:
_tr_add2 after_install_pclean       "Очищення конфігурації пакунків"
_tr_add2 after_install_pcleantip    "Очищення кешу встановлених пакунків"

# 2020-Jul-04:
_tr_add2 nb_tab_OwnCommands         "Особисті команди"                   # modified 2020-Jul-08
_tr_add2 nb_tab_owncmds_text        "Персоналізовані команди"               # modified 2020-Jul-08

# 2020-Jul-08:
_tr_add2 nb_tab_owncmdstip          "Допомога у додаванні особистих команд"

_tr_add2 add_more_apps_akm          "Менеджер ядер"
_tr_add2 add_more_apps_akmtip       "Маленький менеджер linux ядер та"

# 2020-Jul-15:
_tr_add2 butt_owncmds_help        "Поради: особисті команди"

# 2020-Aug-05:
_tr_add2 butt_owncmds_dnd         "Особисті команди drag${_and}drop"
_tr_add2 butt_owncmds_dnd_help    "Показати вікно, щоб потягнути поля для нових кнопок"

# 2020-Sep-03:
_tr_add2 ins_reso                 "Змінити розширення екрану"
_tr_add2 ins_resotip              "Змінити розширення екрану зараз"

# 2020-Sep-08:
_tr_add2 add_more_apps_arch          "Переглянути всі пакунки Arch"
_tr_add2 add_more_apps_aur           "Переглянути всі пакунки AUR"
_tr_add2 add_more_apps_done1_text    "Обрані додатки вже встановлено$_exclamation"
_tr_add2 add_more_apps_done2_text    "або переглянути всі пакунки Arch та AUR"
_tr_add2 add_more_apps_done2_tip1    "Щоб встановити, використовуйте 'pacman' або 'yay'"
_tr_add2 add_more_apps_done2_tip2    "Щоб встановити, використовуйте 'yay'"

# 2020-Sep-11:
_tr_add2 after_install_ew2        "Оберіть одну із шпалер EndeavourOS"   # was: "EndeavourOS wallpaper (choose)"
_tr_add2 after_install_ewtip2     "Обрати шпалеру"                          # was: "Choose from EndeavourOS default wallpapers"

# 2020-Sep-15:
#    IMPORTANT NOTE:
#       - line 71:  changed text of 'after_install_ew'
#       - line 72:  changed text of 'after_install_ewtip'
#       - line 249: changed text of 'after_install_ew2'
#       - line 250: changed text of 'after_install_ewtip2'

# 2020-Oct-23:
_tr_add2 updt_update_check        "перевіряємо оновлення"
_tr_add2 updt_searching           "Пошук"
_tr_add2 updt_for_updates         "для оновлень"
_tr_add2 updt_failure             "помилка$_exclamation"
_tr_add2 updt_nothing_todo        "нічого робити"
_tr_add2 updt_press_enter         "Натисніть ENTER, щоб закрити це вікно"

# 2020-Oct-24:
#    IMPORTANT NOTE:
#       - line 244: changed text of 'add_more_apps_done2_text'

# 2020-Dec-11:
_tr_add2 after_install_pacdiff_tip "Керувати файлами pacnew, pacorig $_and pacsave за допомогою pacdiff $_and"

# 2021-Apr-07:
_tr_add2 after_install_conf           "Налаштувати"                             # a starting verb on a sentence "Configure eos-update-notifier"
_tr_add2 after_install_more_wall      "Завантажити більше шпалер EndeavourOS"
_tr_add2 after_install_more_wall_tip  "Завантажити інші шпалери EndeavourOS та шпалери спільноти"
_tr_add2 after_install_info           "інформація"                           # last word on a sentence, means just any information

_tr_add2 butt_softnews                "Новини програм"
_tr_add2 butt_softnews_tip            "Важливі новини про програми EndeavourOS"

_tr_add2 install_community            "Встановити версію спільноти"
_tr_add2 install_community_tip        "Колекція версій спільноти (переважно віконні менеджери)"    # changed 2021-Oct-23, 2023-Jan-12

# 2021-May-01
_tr_add2 ins_syslog                   "Як поділитися логами системи"
_tr_add2 ins_syslogtip                "Пояснює, як поширити логи системи, коли вам потрібна допомога"
_tr_add2 ins_logtool                  "Логи для усунення несправностей"
_tr_add2 ins_logtooltip               "Оберіть, створіть і поділіться логами несправностей, коли питаєте про допомогу"

# 2021-May-20
_tr_add2 nb_tab_DailyAssistant       "Помічник"
_tr_add2 daily_assistant_text        "Інструменти для корисних та/або щоденних завдань"
_tr_add2 after_install_itab          "Оберіть початкову вкладку Welcome"
_tr_add2 after_install_itab_tip      "Встановлює вкладку Welcome, яку буде показано при старті"

# 2021-Jun-08
_tr_add2 daily_assist_apps           "Категорії програм"
_tr_add2 daily_assist_apps_tip       "Програми відсортовано за категоріями"

_tr_add2 after_install_vbox1         "Увімкнути гостьові утиліти VirtualBox"
_tr_add2 after_install_vbox2         "Щоб увімкнути гостьові утиліти VirtualBox, оберіть вкладку <b>Після Встановлення</b> та натисніть кнопку"

# 2021-Jun-17
_tr_add2 after_install_r8168         "Проблема дротового підключення$_question перемкнутися з дрейвера r8168 на r8169$_exclamation"    # changed 2021-Dec-14 !!
_tr_add2 after_install_r8168_tip     "Перемкнутися між r8168 і r8169 (може знадобитися перезавантаження)"           # changed 2021-Dec-14 !!

# 2021-Oct-08
_tr_add2 daily_assist_DEinfo         "інформація"                                         # assume prefix "DE:", e.g.: "Xfce: information"
_tr_add2 daily_assist_DEinfo_tip     "більше інформації про цей Робочий стіл/віконний менеджер"  # assume prefix "DE:", e.g.: "Xfce: more information ..."

# 2022-Feb-16
_tr_add2 add_more_apps_qs            "Оберіть популярні програми для встановлення"                      # runs eos-quickstart
_tr_add2 add_more_apps_qstip         "Оберіть популярні програми та встановіть їх"

# 2022-Mar-21
_tr_add2 ins_blue_notes              "Bluetooth нотатки"
_tr_add2 ins_blue_notes_tip          "Нотатки про налаштування Bluetooth"

# 2022-Mar-27
_tr_add2 after_install_fw            "Інформація про файрвол"
_tr_add2 after_install_fwtip         "Інформація про типовий файрвол"

# 2022-Mar-30
_tr_add2 ins_custom                  "Налаштування процесу встановлення"
_tr_add2 ins_custom_tip              "Як налаштувати процес встановлення"

# 2022-Jul-15
_tr_add2 daily_assist_anews          "Останні новини Arch"
_tr_add2 daily_assist_anewstip       "Показує останні новини Arch у браузері"

# 2022-Sep-25
_tr_add2 nb_nofify_user1             "Тут важливі новини"                        # one (or more) dates, e.g. 2023-Feb-18
_tr_add2 nb_nofify_user2             "Будь ласка натисніть"                                  # Software News
_tr_add2 nb_nofify_user3             "кнопку у нижньому лівому кутку вікна."

# 2023-Feb-20
_tr_add2 ins_customized              "Викласти свій виправлений файл встановлення (розширений)"
_tr_add2 ins_cust_text               "Надайте посилання на ваш модифікований user_commands.bash"
_tr_add2 ins_cust_text2              "Новий файл замінить ~/user_commands.bash"
_tr_add2 ins_cust_text3              "Це більше стосується <b>онлайн</b> встановлення"

