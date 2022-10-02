# Перевод приложения Welcome.
#
# Примечание: переменные (ниже, например, $PRETTY_PROGNAME) могут использоваться, если они уже определены:
# - в приложении Welcome
# - глобально
#
#
# Любая строка должна быть определена так:
#
#    _tr_add <language> <placeholder> "string"
#          или
#    _tr_add2 <placeholder> "string"
#
# где
#
#    _tr_add         A bash function that adds a "string" to the strings database.
#    _tr_add2        Same as _tr_add but knows the language from the _tr_lang variable (below).
#    <language>      An acronym for the language, e.g. "en" for English (check the LANG variable!).
#    <placeholder>   A pre-defined name that identifies the place in the Welcome app where this string is used.
#    "string"        The translated string for the Welcome app.

# Russian:

### Сначала немного полезных определений:

_tr_lang=ru            # required helper variable for _tr_add2

# Help with some special characters (HTML). Yad has problems without them:
_exclamation='&#33;'   # '!'
_and='&#38;'           # '&'
_question='&#63;'      # '?'


###################### Теперь фактические строки, которые должны быть переведены ######################
# func   <placeholder>             "string"

_tr_add2 welcome_disabled          "Приложение $PRETTY_PROGNAME отключено. Для запуска используйте команду --enable (временно: --once)."

_tr_add2 butt_later                "Закрыть это окно"
_tr_add2 butt_latertip             "Запускать $PRETTY_PROGNAME при старте системы"

_tr_add2 butt_noshow               "Больше не показывать"
_tr_add2 butt_noshowtip            "Отключает автозапуск $PRETTY_PROGNAME, ручной запуск сохраняется"

_tr_add2 butt_help                 "Помощь"


_tr_add2 nb_tab_INSTALL            "Установка"
_tr_add2 nb_tab_GeneralInfo        "Информация"
_tr_add2 nb_tab_AfterInstall       "После установки"
_tr_add2 nb_tab_AddMoreApps        "Установка программ"


_tr_add2 after_install_text        "Действия после установки"

_tr_add2 after_install_um          "Обновить зеркала"
_tr_add2 after_install_umtip       "Обновление списка зеркал перед обновлением системы"

_tr_add2 after_install_us          "Обновить систему"
_tr_add2 after_install_ustip       "Обновление системных модулей и программ"

_tr_add2 after_install_dsi         "Поиск ошибок"
_tr_add2 after_install_dsitip      "Обнаружение любых потенциальных проблем в системе и программах"

_tr_add2 after_install_etl         "Обновить EndeavourOS$_question"
_tr_add2 after_install_etltip      "Показ действий для перехода на новейший уровень EndeavourOS"

_tr_add2 after_install_cdm         "Изменить Display Manager"
_tr_add2 after_install_cdmtip      "Установка другого Display Manager"

_tr_add2 after_install_ew          "Обои EndeavourOS"
_tr_add2 after_install_ewtip       "Установка обой EndeavourOS по умолчанию"


_tr_add2 after_install_pm          "Управление пакетами"
_tr_add2 after_install_pmtip       "Как управлять пакетами с помощью pacman"

_tr_add2 after_install_ay          "AUR и yay"
_tr_add2 after_install_aytip       "Информация об Arch User Repository (AUR) и yay"

_tr_add2 after_install_hn          "Оборудование и сеть"
_tr_add2 after_install_hntip       "Заставьте работать ваше оборудование"

_tr_add2 after_install_bt          "Bluetooth"
_tr_add2 after_install_bttip       "Советы по использованию Bluetooth"

_tr_add2 after_install_nv          "Пользователям NVIDIA$_exclamation"
_tr_add2 after_install_nvtip       "Работа с NVIDIA installer"

_tr_add2 after_install_ft          "Форум с советами"
_tr_add2 after_install_fttip       "Обратитесь к нам за помощью$_exclamation"


_tr_add2 general_info_text         "Найдите свой путь на сайте EndeavourOS$_exclamation"

_tr_add2 general_info_ws           "Сайт"

_tr_add2 general_info_wi           "Вики"
_tr_add2 general_info_witip        "Избранные статьи"

_tr_add2 general_info_ne           "Новости"
_tr_add2 general_info_netip        "Новости и статьи"

_tr_add2 general_info_fo           "Форум"
_tr_add2 general_info_fotip        "Спрашивайте, комментируйте и общайтесь на нашем дружелюбном форуме$_exclamation"

_tr_add2 general_info_do           "Пожертвования"
_tr_add2 general_info_dotip        "Окажите помощь в развитии и поддержке EndeavourOS"

_tr_add2 general_info_ab           "О Welcome"
_tr_add2 general_info_abtip        "Информация об этом приложении"


_tr_add2 add_more_apps_text        "Установка популярных программ"

_tr_add2 add_more_apps_lotip       "Офисный пакет"

_tr_add2 add_more_apps_ch          "Chromium"
_tr_add2 add_more_apps_chtip       "Веб-браузер с открытым исходным кодом"

_tr_add2 add_more_apps_fw          "Брандмауэр"
_tr_add2 add_more_apps_fwtip       "Брандмауэр Gufw"

_tr_add2 add_more_apps_bt          "Bluetooth (blueberry) для Xfce"
_tr_add2 add_more_apps_bt_bm       "Bluetooth (blueman) для Xfce"


###################### ПРОЧЕЕ НОВОЕ ПОСЛЕ ЭТОЙ ЛИНИИ ######################

_tr_add2 settings_dis_contents     "Для запуска $PRETTY_PROGNAME повторно, откройте терминал и выполните:\n<tt>$PROGNAME --enable</tt>\nили\n<tt>$PROGNAME --once</tt>\n"
_tr_add2 settings_dis_text         "Перезапуск $PRETTY_PROGNAME:"
_tr_add2 settings_dis_title        "Как возобновить $PRETTY_PROGNAME"
_tr_add2 settings_dis_butt         "Я помню"
_tr_add2 settings_dis_buttip       "Я обещаю"

_tr_add2 help_butt_title           "Помощь $PRETTY_PROGNAME"
_tr_add2 help_butt_text            "Информация о приложении $PRETTY_PROGNAME"

_tr_add2 dm_title                  "Выбор Display Manager"
_tr_add2 dm_col_name1              "Выбранный"
_tr_add2 dm_col_name2              "Название DM"

_tr_add2 dm_reboot_required        "Для применения изменений необходима перезагрузка"
_tr_add2 dm_changed                "Display Manager изменен на: "
_tr_add2 dm_failed                 "Ошибка при смене DM"
_tr_add2 dm_warning_title          "Внимание"

_tr_add2 install_installer         "Установщик"
_tr_add2 install_already           "Уже установлено"
_tr_add2 install_ing               "Установка"
_tr_add2 install_done              "Завершено"

_tr_add2 sysup_no                  "Обновлений нет"
_tr_add2 sysup_check               "Проверка обновлений программ..."

_tr_add2 issues_title              "Обнаружена проблема пакета"
_tr_add2 issues_grub               "ВАЖНО: необходимо вручную воссоздать загрузочное меню"
_tr_add2 issues_run                "Запуск команд:"
_tr_add2 issues_no                 "Важных системных проблем не обнаружено"

_tr_add2 cal_noavail               "Недоступно: "			# программа установки
_tr_add2 cal_warn                  "Внимание"
_tr_add2 cal_info1                 "Это выпуск разработки сообщества.\n\n"                                   				# для специалистов!
_tr_add2 cal_info2                 "<b>Офлайн</b> вариант предоставляет рабочий стол Xfce с темой EndeavourOS.\nИнтернет-подключение не требуется.\n\n"
_tr_add2 cal_info3                 "<b>Онлайн</b> вариант позволяет выбрать DE с оформлением по умолчанию.\nТребуется интернет-подключение.\n\n"
_tr_add2 cal_info4                 "Внимание: Этот релиз находится в процессе разработки. Пожалуйста, сообщите нам в случае ошибки.\n"
_tr_add2 cal_choose                "Выбор способа установки"
_tr_add2 cal_method                "Способ"
_tr_add2 cal_nosupport             "$PROGNAME: не поддерживаемый режим: "
_tr_add2 cal_nofile                "$PROGNAME: требуемый файл отсутствует: "
_tr_add2 cal_istarted              "Начало установки"
_tr_add2 cal_istopped              "Завершение установки"

_tr_add2 tail_butt                 "Закрыть это окно"
_tr_add2 tail_buttip               "Закрыть только это окно"


_tr_add2 ins_text                  "Установка EndeavourOS на компьютер"
_tr_add2 ins_start                 "Запуск установки"
_tr_add2 ins_starttip              "Запуcк установки EndeavourOS вместе с отладочным терминалом"
_tr_add2 ins_up                    "Обновить эту программу$_exclamation"
_tr_add2 ins_uptip                 "Обновить эту программу и перезапустить ее"
_tr_add2 ins_keys                  "Инициализировать ключи pacman"
_tr_add2 ins_keystip               "Обновить список ключей шифрования репозиториев"
_tr_add2 ins_pm                    "Управление разделами"
_tr_add2 ins_pmtip                 "Создание и управление разделами на вашем диске с помощью Gparted"
_tr_add2 ins_rel                   "Информация о выпуске"
_tr_add2 ins_reltip                "Расширенная информация о последнем выпуске"
_tr_add2 ins_tips                  "Советы по установке"
_tr_add2 ins_tipstip               "Советы для помощи при установке"
_tr_add2 ins_trouble               "Устранение неполадок"
_tr_add2 ins_troubletip            "Восстановление системы"

_tr_add2 after_install_us_from     "Обновление из"			        # AUR или вышерасположенный
_tr_add2 after_install_us_el       "Требуется повышение привилегий."
_tr_add2 after_install_us_done     "обновление выполнено."
_tr_add2 after_install_us_fail     "ошибка обновления$_exclamation"
 
# 2020-May-14:

_tr_add2 nb_tab_UsefulTips     "Советы"
_tr_add2 useful_tips_text      "Полезные советы"

# 2020-May-16:

_tr_add2 butt_changelog        "Список изменений"
_tr_add2 butt_changelogtip     "Показать список изменений в Welcome"

_tr_add2 after_install_themevan      "Ванильная тема Xfce"
_tr_add2 after_install_themevantip   "Использовать ванильную тему Xfce"

_tr_add2 after_install_themedef     "Тема Xfce в стиле EndeavourOS"
_tr_add2 after_install_themedeftip  "Использовать стиль EndeavourOS в теме Xfce по умолчанию"

# 2020-Jun-28:
_tr_add2 after_install_pclean       "Настройка очистки пакетов"
_tr_add2 after_install_pcleantip    "Настройка очистки кэша пакетов Pacman"

# 2020-Jul-04:
_tr_add2 nb_tab_OwnCommands         "Пользовательские команды"
_tr_add2 nb_tab_owncmds_text        "Добавление пользовательских команд"

# 2020-Jul-08:
_tr_add2 nb_tab_owncmdstip          "Справка по добавлению пользовательских команд"

_tr_add2 add_more_apps_akm          "Менеджер ядра Linux"
_tr_add2 add_more_apps_akmtip       "Установка простого менеджера ядра Linux"

# 2020-Jul-15:
_tr_add2 butt_owncmds_help        "Руководство: пользовательские команды"

# 2020-Aug-05:
_tr_add2 butt_owncmds_dnd         "Создание пользовательских кнопок"
_tr_add2 butt_owncmds_dnd_help    "Отображение окна для создания новых кнопок"

# 2020-Sep-03:
_tr_add2 ins_reso                 "Разрешение дисплея"
_tr_add2 ins_resotip              "Изменение разрешение дисплея"

# 2020-Sep-08:
_tr_add2 add_more_apps_arch          "Просмотр всех пакетов Arch"
_tr_add2 add_more_apps_aur           "Просмотр всех пакетов AUR"
_tr_add2 add_more_apps_done1_text    "Рекомендуемые приложения уже установлены$_exclamation"
_tr_add2 add_more_apps_done2_text    "Также можно просмотреть все пакеты Arch и AUR"
_tr_add2 add_more_apps_done2_tip1    "Для установки используйте 'pacman' или 'yay'"
_tr_add2 add_more_apps_done2_tip2    "Для установки используйте 'yay'"

# 2020-Sep-11:
_tr_add2 after_install_ew2        "Выбор обоев EndeavourOS"      # was: "EndeavourOS wallpaper (choose)"
_tr_add2 after_install_ewtip2     "Средство выбора обоев"        # was: "Choose from EndeavourOS default wallpapers"

# 2020-Sep-15:
#    IMPORTANT NOTE:
#       - line 71:  changed text of 'after_install_ew'
#       - line 72:  changed text of 'after_install_ewtip'
#       - line 249: changed text of 'after_install_ew2'
#       - line 250: changed text of 'after_install_ewtip2'

# 2020-Oct-23:
_tr_add2 updt_update_check        "проверить обновление"
_tr_add2 updt_searching           "Поиск"
_tr_add2 updt_for_updates         "для обновления"
_tr_add2 updt_failure             "сбой$_exclamation"
_tr_add2 updt_nothing_todo        "нечего обновлять"
_tr_add2 updt_press_enter         "Нажмите ENTER, чтобы закрыть это окно"

# 2020-Oct-24:
#    IMPORTANT NOTE:
#       - line 244: changed text of 'add_more_apps_done2_text'

# 2020-Dec-11:
_tr_add2 after_install_pacdiff_tip "Управление файлами pacnew, pacorig $_and pacsave (необходимы pacdiff или meld) с помощью pacdiff $_and"

# 2021-Apr-07:
_tr_add2 after_install_conf           "Настроить"                            # a starting verb on a sentence "Настройка eos-update-notifier"
_tr_add2 after_install_more_wall      "Скачать больше обоев EndeavourOS"
_tr_add2 after_install_more_wall_tip  "Скачать предыдущие обои EndeavourOS и обои от сообщества"
_tr_add2 after_install_info           "информация"                           # last word on a sentence, means just any information

_tr_add2 butt_softnews                "Новости о программном обеспечении"
_tr_add2 butt_softnews_tip            "Важные новости о программном обеспечении EndeavourOS"

_tr_add2 install_community            "Установить версии ОС от сообщества"
_tr_add2 install_community_tip        "Коллекция версий ОС от сообщества (только онлайн установка)"    # changed

# 2021-May-01
_tr_add2 ins_syslog                   "Как поделиться системными журналами?"
_tr_add2 ins_syslogtip                "Объясняет, как вы можете поделиться системными журналами для получения помощи (англ.)"
_tr_add2 ins_logtool                  "Журналы для устранения неполадок"
_tr_add2 ins_logtooltip               "Выбор, создание и публикация журналов для устранения неполадок при обращении за помощью (англ.)"

# 2021-May-20
_tr_add2 nb_tab_DailyAssistant       "Ассистент"
_tr_add2 daily_assistant_text        "Инструменты выполнения полезных и/или повседневных задач"
_tr_add2 after_install_itab          "Начальная вкладка Welcome"
_tr_add2 after_install_itab_tip      "Выбор вкладки Welcome, отображаемой при запуске"

# 2021-Jun-08
_tr_add2 daily_assist_apps           "Приложения по категориям"
_tr_add2 daily_assist_apps_tip       "Приложения, отсортированные по категориям"

_tr_add2 after_install_vbox1         "Включить утилиты VirtualBox Guest"
_tr_add2 after_install_vbox2         "Для включения утилит VirtualBox Guest, выберите вкладку <b>После установки</b> и нажмите кнопку "

# 2021-Jun-17
_tr_add2 after_install_r8168         "Проблема с проводным подключением$_question Переключите драйвера r8168 и r8169$_exclamation"    # changed 2021-Dec-14 !!
_tr_add2 after_install_r8168_tip     "Переключение между драйверами r8168 и r8169 (может потребоваться перезагрузка)"                 # changed 2021-Dec-14 !!

# 2021-Oct-08
_tr_add2 daily_assist_DEinfo         "информация"                                                               # assume prefix "DE:", e.g.: "Xfce: information"
_tr_add2 daily_assist_DEinfo_tip     "дополнительная информация об этом менеджере рабочего стола/окон"          # assume prefix "DE:", e.g.: "Xfce: more information ..."

# 2022-Feb-16
_tr_add2 add_more_apps_qs            "Выбор популярных приложений для установки"                      # runs eos-quickstart
_tr_add2 add_more_apps_qstip         "Выберите популярные приложения и установите их"

# 2022-Mar-21
_tr_add2 ins_blue_notes              "Примечания по Bluetooth"
_tr_add2 ins_blue_notes_tip          "Примечания по настройке Bluetooth"

# 2022-Mar-27
_tr_add2 after_install_fw            "Информация о брандмауэре"
_tr_add2 after_install_fwtip         "Информация о брандмауэре, установленном по умолчанию"

# 2022-Mar-30
_tr_add2 ins_custom                  "Настройка установки"
_tr_add2 ins_custom_tip              "Как настроить процесс установки"

# 2022-Jul-15
_tr_add2 daily_assist_anews          "Новости Arch"
_tr_add2 daily_assist_anewstip       "Покажет последние новости Arch в браузере"

# 2022-Sep-25
_tr_add2 nb_nofify_user1             "Имеются важные новости"
_tr_add2 nb_nofify_user2             "Нажмите кнопку"                                  # Новости о программном обеспечении
_tr_add2 nb_nofify_user3             "в левом нижнем углу этого окна."
