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

# فارسی:

### First some useful definitions:

_tr_lang=fa            # required helper variable for _tr_add2

# Help with some special characters (HTML). Yad has problems without them:
_exclamation='&#33;'     # '!'
_and='&#x648;'           # 'و'
_question='&#x61F;'      # '؟'


###################### Now the actual strings to be translated: ######################
# func   <placeholder>         "string"

_tr_add2 welcome_disabled      ".برنامه غیر فعال است. به هر حال، برای اجرای برنامه از گزینه روبرو استفاده کنید
--enable"

_tr_add2 butt_later            "بعدا می‌بینمت"
_tr_add2 butt_latertip         "برنامه را فعال نگه دار"

_tr_add2 butt_noshow           "مخفی کردن برنامه"
_tr_add2 butt_noshowtip        "غیرفعال کردن $PRETTY_PROGNAME"

_tr_add2 butt_help             "کمک"


_tr_add2 nb_tab_INSTALL        "نصب"
_tr_add2 nb_tab_GeneralInfo    "اطلاعات عمومی"
_tr_add2 nb_tab_AfterInstall   "بعد از نصب"
_tr_add2 nb_tab_AddMoreApps    "افزودن برنامه‌های بیشتر"


_tr_add2 after_install_text    "کارهای بعد از نصب"

_tr_add2 after_install_um      "بروزرسانی میرورها"
_tr_add2 after_install_umtip   "بروزرسانی میرورها قبل از بروزرسانی سیستمی"

_tr_add2 after_install_us      "بروزرسانی سیستم"
_tr_add2 after_install_ustip   "بروزرسانی برنامه‌های سیستمی"

_tr_add2 after_install_dsi     "تشخیص اشکالات سیستم"
_tr_add2 after_install_dsitip  "تشخیص مشکلات نهانی در پکیج‌های سیستم یا جای دیگر"
_tr_add2 after_install_etl     "$_question اندیور به جدیدترین نسخه"
_tr_add2 after_install_etltip  "کارهایی که باید برای تبدیل سیستمتان به جدیدترین نسخه اندیور باید انجام بدهید"
_tr_add2 after_install_cdm     "تغییر مدیر نمایش"
_tr_add2 after_install_cdmtip  "استفاده از یک مدیر نمایش دیگر"

_tr_add2 after_install_ew      "والپیپر پیشفرض اندیور"
_tr_add2 after_install_ewtip   "بازنشانی به والپیپر پیشفرض"


_tr_add2 after_install_pm      "مدیریت پکیج‌ها"
_tr_add2 after_install_pmtip   "چگونگی مدیریت پکیج‌ها با پکمن"

_tr_add2 after_install_ay      "AUR $_and yay$_exclamation"
_tr_add2 after_install_aytip   "اطلاعاتی درباره مخزن کاربران آرچ (AUR) و yay"

_tr_add2 after_install_hn      "سخت‌افزار و شبکه"
_tr_add2 after_install_hntip   "سخت‌افزارتان را به کار بگیرید"

_tr_add2 after_install_bt      "بلوتوث"
_tr_add2 after_install_bttip   "پندهایی راجع به بلوتوث"

_tr_add2 after_install_nv      "$_exclamation NVIDIA کاربران"
_tr_add2 after_install_nvtip   "NVIDIA استفاده از نصب‌کننده"

_tr_add2 after_install_ft      "نکات فروم"
_tr_add2 after_install_fttip   "به ما کمک کنید تا به شما کمک کنیم!"


_tr_add2 general_info_text     "راهتان را در سایت اندیور بیابید$_exclamation"

_tr_add2 general_info_ws       "وب سایت"

_tr_add2 general_info_wi       "ویکی"
_tr_add2 general_info_witip    "مقالات برجسته"

_tr_add2 general_info_ne       "اخبار"
_tr_add2 general_info_netip    "اخبار و مقالات"

_tr_add2 general_info_fo       "فروم"
_tr_add2 general_info_fotip    "در فروم ما بپرسید، کامنت بگذارید و چت کنید"

_tr_add2 general_info_do       "کمک"
_tr_add2 general_info_dotip    "در سرپا نگه داشتن اندیور به ما کمک کنید"

_tr_add2 general_info_ab       "$PRETTY_PROGNAME درباره"
_tr_add2 general_info_abtip    "اطلاعات بیشتر درباره این برنامه"


_tr_add2 add_more_apps_text    "نصب برنامه‌های محبوب"

_tr_add2 add_more_apps_lotip   "(libreoffice-fresh) ابزارهای رسمی"

_tr_add2 add_more_apps_ch      "مرورگر وب کرومیوم"
_tr_add2 add_more_apps_chtip   "مرورگر وب"

_tr_add2 add_more_apps_fw      "فایروال"
_tr_add2 add_more_apps_fwtip   "فایروال Gufw"

_tr_add2 add_more_apps_bt      "بلوتوث (blueberry) برای Xfce"
_tr_add2 add_more_apps_bt_bm   "بلوتوث (blueman) برای Xfce"


####################### NEW STUFF AFTER THIS LINE:

_tr_add2 settings_dis_contents   "برای اجرای دوباره $PRETTY_PROGNAME، یک ترمینال باز کنید و این را اجرا کنید:\n<tt>   $PROGNAME --enable</tt>\n"  # slightly changed 2021-Dec-21
_tr_add2 settings_dis_text       ":$PRETTY_PROGNAME فعالسازی دوباره"
_tr_add2 settings_dis_title      "$PRETTY_PROGNAME چگونگی فعالسازی دوباره"
_tr_add2 settings_dis_butt       "یادم می‌ماند."
_tr_add2 settings_dis_buttip     "قول می‌دهم"

_tr_add2 help_butt_title         "$PRETTY_PROGNAME کمک"
_tr_add2 help_butt_text          "$PRETTY_PROGNAME اطلاعات بیشتر درباره برنامه"

_tr_add2 dm_title                "انتخاب مدیر نمایش"
_tr_add2 dm_col_name1            "انتخاب شده"
_tr_add2 dm_col_name2            "نام مدیر نمایش"

_tr_add2 dm_reboot_required      "برای تاثیر گذاشتن این تغییر، شروع مجدد مورد نیاز است."
_tr_add2 dm_changed              "مدیر نمایش تغییر یافت به:"
_tr_add2 dm_failed               "تغییر مدیر نمایش ناموفق بود."
_tr_add2 dm_warning_title        "اخطار"

_tr_add2 install_installer       "نصب‌کننده"
_tr_add2 install_already         "در حال حاضر نصب شده‌است"
_tr_add2 install_ing             "درحال نصب"
_tr_add2 install_done            "پایان یافت."

_tr_add2 sysup_no                "بدون بروزرسانی."
_tr_add2 sysup_check             "چک کردن برای آپدیت‌های نرم‌افزاری..."

_tr_add2 issues_title            "تشخیص اشکالات پکیج"
_tr_add2 issues_grub             "مهم: بازسازی منوی دستی منوی بوت نیاز خواهد بود."
_tr_add2 issues_run              ":اجرای دستورات"
_tr_add2 issues_no               "مشکل سیستمی خاصی یافت نشد."

_tr_add2 cal_noavail            " :غیرقابل دسترسی"        # installer program
_tr_add2 cal_warn               "اخطار"
_tr_add2 cal_info1              "\n\nاین یک نسخه انجمن است"                                   # specials needed!
_tr_add2 cal_info2              "<b>آفلاین</b>: روشی که یک دسکتاپ Xfce بهمراه تم اندیور خواهد داد. اتصال اینترنتی نیاز نخواهد بود."
_tr_add2 cal_info3              "<b>آنلاین</b>: شیوه‌ای که امکان انتخاب دسکتاپ را بهمراه یک تم ساده می‌دهد. اتصال اینترنت مورد نیاز خواهد بود.\n\n"
_tr_add2 cal_info4              "نکته: این انتشار در حال توسعه است پس لطفا با گزارش باگ‌ها مارا در پایدار کردن آن همراهی کنید\n"
_tr_add2 cal_choose             "روش نصب را انتخاب کنید"
_tr_add2 cal_method             "شیوه"
_tr_add2 cal_nosupport          "$PROGNAME: شیوه پشتیبانی نشده: "
_tr_add2 cal_nofile             "$PROGNAME: فایل مورد نظر وجود ندارد: "
_tr_add2 cal_istarted           "نصب شروع شد"
_tr_add2 cal_istopped           "نصب پایان یافت"

_tr_add2 tail_butt              "این پنجره را ببند"
_tr_add2 tail_buttip            "فقط این پنجره را ببند"


_tr_add2 ins_text              "درحال نصب اندیور بر روی دیسک"
_tr_add2 ins_start             "نصب را شروع کن"
_tr_add2 ins_starttip          "شروع نصب اندیور بهمراه یک ترمینال برای دیباگ"
_tr_add2 ins_up                "$_exclamation این برنامه را بروزرسانی کنید"
_tr_add2 ins_uptip             "این برنامه را بروزرسانی و ری‌استارت می‌کند."
_tr_add2 ins_keys              "راه‌اندازی کلید‌های پکمن"
_tr_add2 ins_keystip           "راه‌اندازی کلید‌های پکمن"
_tr_add2 ins_pm                "مدیر پارتیشن"
_tr_add2 ins_pmtip             "جی‌پارتد تست و مدیریت ارتیشن‌ها و ساختار را امکان‌پذیر می‌سازد."
_tr_add2 ins_rel               "اطلاعات جدیدترین انتشار"
_tr_add2 ins_reltip            "اطلاعات بیشتر درباره جدیدترین انتشار"
_tr_add2 ins_tips              "نکات نصب"
_tr_add2 ins_tipstip           "نکات نصب"
_tr_add2 ins_trouble           "عیب‌یاب"
_tr_add2 ins_troubletip        "دکتر سیستم"

_tr_add2 after_install_us_from    "بروزرسانی شده از"
_tr_add2 after_install_us_el      "دسترسی بالاتر مورد نیاز است."
_tr_add2 after_install_us_done    "بروزرسانی با موفقیت انجام شد."
_tr_add2 after_install_us_fail    "بروزرسانی ناموفق بود!"


_tr_add2 nb_tab_UsefulTips     "نکات"
_tr_add2 useful_tips_text      "نکات کارآمد"


_tr_add2 butt_changelog        "گزارش تغییرات"
_tr_add2 butt_changelogtip     "نمایش گزارش تغییرات Welcome"

_tr_add2 after_install_themevan      "Xfce تم ساده"
_tr_add2 after_install_themevantip   "استفاده کن Xfce از تم ساده"

_tr_add2 after_install_themedef     "Xfce تم پیشفرض اندیور برای"
_tr_add2 after_install_themedeftip  "از تم پیشفرض اندیور برای Xfce استفاده کن"

_tr_add2 after_install_pclean       "تنظیمات پاکسازی پکیج‌ها"
_tr_add2 after_install_pcleantip    "تنظیمات سرویس پاکسازی کش پکیج‌ها"

_tr_add2 nb_tab_OwnCommands         "دستورهای شخصی"
_tr_add2 nb_tab_owncmds_text        "دستورهای شخصی‌سازی شده"

_tr_add2 nb_tab_owncmdstip          "کمک درباره افزودن دستورات شخصی"

_tr_add2 add_more_apps_akm          "یک مدیر کرنل"
_tr_add2 add_more_apps_akmtip       "یک مدیر کرنل کوچک و منبع اطلاعات"

_tr_add2 butt_owncmds_help        "آموزش: دستورات شخصی"

_tr_add2 butt_owncmds_dnd         "دراگ و دراپ دستورات شخصی"
_tr_add2 butt_owncmds_dnd_help    "نمایش یک پنجره برای کشیدن ایتم‌ها برای دکمه‌های جدید"
_tr_add2 ins_reso                 "تغییر رزولوشن نمایش"
_tr_add2 ins_resotip              "رزولوشن نمایش را تغییر بده"

_tr_add2 add_more_apps_arch          "مرور تمام پکیج‌های آرچ"
_tr_add2 add_more_apps_aur           "مرور تمام پکیج‌های AUR"
_tr_add2 add_more_apps_done1_text    "$_exclamationبرنامه‌های پیشنهادی در حال حاضر نصب هستند"
_tr_add2 add_more_apps_done2_text    "یا مرور تمام پکیج‌های آرچ و AUR"
_tr_add2 add_more_apps_done2_tip1    "برای نصب، از 'yay'یا 'pacman' استفاده کنید"
_tr_add2 add_more_apps_done2_tip2    "برای نصب، از 'yay' استفاده کنید"


_tr_add2 after_install_ew2        "انتخاب یکی از والپیپرهای اندیور"
_tr_add2 after_install_ewtip2     "انتخابگر والپیپر"


_tr_add2 updt_update_check        "بررسی برای بروزرسانی"
_tr_add2 updt_searching           "درحال جستجو"
_tr_add2 updt_for_updates         "برای بروزرسانی"
_tr_add2 updt_failure             "$_exclamationخطا"
_tr_add2 updt_nothing_todo        "چیزی برای انجام نیست"
_tr_add2 updt_press_enter         "برای بستن این پنجره، دکمه ENTER را بفشارید."


_tr_add2 after_install_pacdiff_tip "مدیریت فایلهای pacnew ،pacoring و pacsave با pacdiff و"

_tr_add2 after_install_conf           "کانفیگ کردن"
_tr_add2 after_install_more_wall      "والپیپرهای اندیور بیشتری دانلود کنید"
_tr_add2 after_install_more_wall_tip  "دانلود والپیپرهای قدیمی و انجمنی اندیور"
_tr_add2 after_install_info           "اطلاعات"

_tr_add2 butt_softnews                "اطلاعات نرم‌افزاری"
_tr_add2 butt_softnews_tip            "اخبار مهم درباره نرم‌افزارهای اندیور"

_tr_add2 install_community            "نصب نسخه های انجمن"
_tr_add2 install_community_tip        "مجموعه نسخه‌های انجمن (نیازمند اینترنت)"


_tr_add2 ins_syslog                   "چگونگی اشتراک گذاری گزارش‌های سیستمی"
_tr_add2 ins_syslogtip                "توضیح می‌دهد چگونه می‌توانید گزارش‌های سیستم را وقتی به کمک نیازمندید به اشتراک بگذارید"

_tr_add2 ins_logtool                  "گزارش‌ها برای عیب‌یابی"
_tr_add2 ins_logtooltip               "هنگام نیاز به کمک، گزارش‌های عیب‌یابی را ایجاد، انتخاب و به اشتراک بگذارید"


_tr_add2 nb_tab_DailyAssistant       "دستیار"
_tr_add2 daily_assistant_text        "ابزارهای مفید و برای استفاده روزانه"
_tr_add2 after_install_itab          "انتخاب تب اولیه Welcome"
_tr_add2 after_install_itab_tip      "تب پیشفرضی که Welcome هنگام باز شدن نشان می‌دهد را تنظیم می‌کند"


_tr_add2 daily_assist_apps           "دسته‌بندی‌های نرم‌افزار"
_tr_add2 daily_assist_apps_tip       "برنامه‌ها مرتب شده با دسته‌بندی"

_tr_add2 after_install_vbox1         "فعالسازی ابزارهای VirtualBox"
_tr_add2 after_install_vbox2         "برای فعالسازی ابزارهای VirtualBox، تب <b>بعد از نصب</b> را انتخاب کرده و روی دکمه کلیک کنید"
_tr_add2 after_install_r8168         "مشکل عجیب و غریب در اینترنت دارید؟ بین r8169 و r8168 جابجا بشوید!"
_tr_add2 after_install_r8168_tip     ‌‌‌‌‌‌‌"جابجایی بین درایورهای r8169 و r8168 (ممکن است به شروع مجدد نیاز باشد)"

_tr_add2 daily_assist_DEinfo         "اخبار و اطلاعات"
_tr_add2 daily_assist_DEinfo_tip     "اطلاعات بیشتر درباره این دسکتاپ/مدیر پنجره"

# 2022 Update
_tr_add2 add_more_apps_qs            "انتخاب برنامه‌های متداول برای نصب"                      # runs eos-quickstart
_tr_add2 add_more_apps_qstip         "نصب و انتخاب برنامه‌های متداول"

_tr_add2 ins_blue_notes              "نکاتی درباره بلوتوث"
_tr_add2 ins_blue_notes_tip          "نکاتی درباره راه‌اندازی بلوتوث"

_tr_add2 after_install_fw            "اطلاعات فایروال"
_tr_add2 after_install_fwtip         "اطلاعات درباره فایروال پیشفرض"

_tr_add2 ins_custom                  "سفارشی ساختن پروسه نصب"
_tr_add2 ins_custom_tip              "طریقه سفارشی سازی فرایند نصب"

_tr_add2 daily_assist_anews          "جدیدترین اخبار آرچ"
_tr_add2 daily_assist_anewstip       "جدیدترین اخبار آرچ را در یک مرورگر نمایش می‌دهد"
