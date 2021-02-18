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

_tr_lang=hi            # required helper variable for _tr_add2

# Help with some special characters (HTML). Yad has problems without them:
_exclamation='&#33;'   # '!'
_and='&#38;'           # '&'
_question='&#63;'      # '?'


###################### Now the actual strings to be translated: ######################
# func   <placeholder>         "string"

_tr_add2 welcome_disabled      "$PRETTY_PROGNAME एप्लिकेशन डिसएबल है| इसे चलाने के लिए --enable ऑप्शन का प्रयोग करें|"

_tr_add2 butt_later            "फिर मिलेंगे"
_tr_add2 butt_latertip         "$PRETTY_PROGNAME को चलते रहने दें|"

_tr_add2 butt_noshow           "दोबारा न दिखाएँ"
_tr_add2 butt_noshowtip        "$PRETTY_PROGNAME को डिसएबल करें|"

_tr_add2 butt_help             "मदद"


_tr_add2 nb_tab_INSTALL        "इंस्टॉल"
_tr_add2 nb_tab_GeneralInfo    "सामान्य जानकारी"
_tr_add2 nb_tab_AfterInstall   "इंस्टॉल के बाद"
_tr_add2 nb_tab_AddMoreApps    "और एप्लिकेशन इंस्टॉल करें"


_tr_add2 after_install_text    "इंस्टॉल के बाद के कार्य"

_tr_add2 after_install_um      "मिरर अपडेट करें"
_tr_add2 after_install_umtip   "सिस्टम अपडेट करने के पहले मिरर अपडेट करें|"

_tr_add2 after_install_us      "सिस्टम अपडेट करें"
_tr_add2 after_install_ustip   "सिस्टम सॉफ्टवेयर नवीनतम संस्करण पर अपडेट करें|"

_tr_add2 after_install_dsi     "सिस्टम में समस्याओं का पता लगाएं"
_tr_add2 after_install_dsitip  "सिस्टम सॉफ्टवेयर में समस्याओं का पता लगाएं|"

_tr_add2 after_install_etl     "एंडेवर ओएस को अपडेट करें$_question"
_tr_add2 after_install_etltip  "एंडेवर ओएस को नवीनतम संस्करण पर अपडेट करने के लिए जानकारी|"

_tr_add2 after_install_cdm     "डिस्प्ले मैनेजर बदलें"
_tr_add2 after_install_cdmtip  "कोई और डिस्प्ले मैनेजर इस्तेमाल करें"

_tr_add2 after_install_ew      "एंडेवर ओएस डिफ़ॉल्ट वॉलपेपर"      # was: "EndeavourOS wallpaper"
_tr_add2 after_install_ewtip   "डिफ़ॉल्ट वॉलपेपर पर रीसेट करें"     # was: "Change desktop wallpaper to EOS default"


_tr_add2 after_install_pm      "सॉफ्टवेयर मैनेजमेंट के बारे में जानें"
_tr_add2 after_install_pmtip   "पैकमैन इस्तेमाल कर के सॉफ्टवेयर मैनेज करना सीखें"

_tr_add2 after_install_ay      "AUR $_and yay$_exclamation के बारे में जानें"
_tr_add2 after_install_aytip   "Arch User Repository और yay के बारे में जानकारी"

_tr_add2 after_install_hn      "हार्डवेयर और नेटवर्क"
_tr_add2 after_install_hntip   "हार्डवेयर और नेटवर्क चलाने के बारे में जानकारी"

_tr_add2 after_install_bt      "ब्लूटूथ"
_tr_add2 after_install_bttip   "ब्लूटूथ के बारे में जानें"

_tr_add2 after_install_nv      "NVIDIA ग्राफ़िक्स कार्ड"
_tr_add2 after_install_nvtip   "NVIDIA ग्राफ़िक्स कार्ड के सॉफ्टवेयर करना सीखें"

_tr_add2 after_install_ft      "चर्चा मंच के लिए टिप्स"
_tr_add2 after_install_fttip   "चर्चा मंच इस्तेमाल करना सीखें|"


_tr_add2 general_info_text     "एंडेवर ओएस की वेबसाइट खोलें$_exclamation"

_tr_add2 general_info_ws       "वेबसाइट"

_tr_add2 general_info_wi       "जानकारी कोष"
_tr_add2 general_info_witip    "प्रदर्शित लेख पढ़े"

_tr_add2 general_info_ne       "समाचार"
_tr_add2 general_info_netip    "समाचार व लेख पढ़े"

_tr_add2 general_info_fo       "चर्चा मंच"
_tr_add2 general_info_fotip    "चर्चा मंच पर सवाल पूछें और अनुकूल लोगों से बातचीत करें!"

_tr_add2 general_info_do       "दान करें"
_tr_add2 general_info_dotip    "एंडेवर ओएस को चलते रहने में मदद करें"

_tr_add2 general_info_ab       "$PRETTY_PROGNAME ऐप के बारे में जानकारी"
_tr_add2 general_info_abtip    "इस एप्लिकेशन के बारे में और जानकारी"


_tr_add2 add_more_apps_text    "लोकप्रिय ऐप्स इंस्टॉल करें"

_tr_add2 add_more_apps_lotip   "ऑफिस सम्बन्धी सॉफ्टवेयर (libreoffice-fresh)"

_tr_add2 add_more_apps_ch      "क्रोमियम वेब ब्राउज़र"
_tr_add2 add_more_apps_chtip   "वेब ब्राउज़र"

_tr_add2 add_more_apps_fw      "फ़ायरवॉल"
_tr_add2 add_more_apps_fwtip   "Gufw फ़ायरवॉल"

_tr_add2 add_more_apps_bt      "Xfce के लिए ब्लूटूथ (blueberry)"
_tr_add2 add_more_apps_bt_bm   "Xfce के लिए ब्लूटूथ (blueman)"


####################### NEW STUFF AFTER THIS LINE:

_tr_add2 settings_dis_contents   "$PRETTY_PROGNAME को दोबारा इनेबल के लिए Terminal खोलें और चलाएं: $PROGNAME --enable"
_tr_add2 settings_dis_text       "$PRETTY_PROGNAME को दोबारा इनेबल करा जा रहा है:"
_tr_add2 settings_dis_title      "$PRETTY_PROGNAME को दोबारा इनेबल कैसे करें"
_tr_add2 settings_dis_butt       "मुझे याद रहेगा"
_tr_add2 settings_dis_buttip     "मैं वादा करता हूं"

_tr_add2 help_butt_title         "$PRETTY_PROGNAME के लिए मदद"
_tr_add2 help_butt_text          "$PRETTY_PROGNAME के बारे में ज़्यादा जानकारी"

_tr_add2 dm_title                "डिस्प्ले मैनेजर चुनें"
_tr_add2 dm_col_name1            "चुन लिया"
_tr_add2 dm_col_name2            "डिस्प्ले मैनेजर का नाम"

_tr_add2 dm_reboot_required      "बदलाव स्थापित करने के लिए सिस्टम रीस्टार्ट ज़रूरी है।"
_tr_add2 dm_changed              "डिस्प्ले मैनेजर बदल दी गयी है: "
_tr_add2 dm_failed               "डिस्प्ले मैनेजर बदलना असफल रहा"
_tr_add2 dm_warning_title        "चेतावनी"

_tr_add2 install_installer       "इंस्टालर"
_tr_add2 install_already         "पहले से इंस्टॉल है"
_tr_add2 install_ing             "इंस्टॉल हो रहा है"
_tr_add2 install_done            "कार्य पूरा हो गया"

_tr_add2 sysup_no                "कोई अपडेट नहीं है"
_tr_add2 sysup_check             "अपडेट ढूंढा जा रहा है..."

_tr_add2 issues_title            "सॉफ्टवेयर में समस्या का पता लगाएं"
_tr_add2 issues_grub             "जरूरी जानकारी: आपको बूट मेन्यू दोबोरा खुद बनानी होगी"
_tr_add2 issues_run              "कमांड चल रहे हैं:"
_tr_add2 issues_no               "कोई गंभीर समस्या नहीं मिली"

_tr_add2 cal_noavail            "उपलब्ध नहीं है: "        # installer program
_tr_add2 cal_warn               "चेतावनी"
_tr_add2 cal_info1              "यह एक सामुदायिक विकास रिलीज़ है।\n\n"                                   # specials needed!
_tr_add2 cal_info2              "<b>ऑफलाइन</b> आपको Xfce डेस्कटॉप मिलेगा एंडेवर ओएस थीम के साथ।\nइंटरनेट की ज़रूत नहीं है।n\n"
_tr_add2 cal_info3              "<b>ऑनलाइन</b> आप अपना पसंदीदा डेस्कटॉप इंस्टॉल कर सकते हैं डिफ़ॉल्ट थीम के साथ।\nइंटरनेट की ज़रूत है।\n\n"
_tr_add2 cal_info4              "ड़याँ दें: ईद रिलीज़ पर कार्य प्रगति में है, कृपया इसे बेहतर बनाने के लिए समस्याएं हमें बताएं।\n"
_tr_add2 cal_choose             "इंस्टॉल विधि चुनें"
_tr_add2 cal_method             "विधि"
_tr_add2 cal_nosupport          "$PROGNAME: असमर्थित विधि: "
_tr_add2 cal_nofile             "$PROGNAME: आवश्यक फ़ाइल मौजूद नहीं है: "
_tr_add2 cal_istarted           "इंस्टॉल शुरू हो गया|"
_tr_add2 cal_istopped           "इंस्टॉल पूरा हो गया|"

_tr_add2 tail_butt              "इस विंडो को बंद करें|"
_tr_add2 tail_buttip            "इस विंडो को बंद करें|"


_tr_add2 ins_text              "एंडेवर ओएस इंस्टॉल हो रहा है|"
_tr_add2 ins_start             "इंस्टालर शुरू करें"
_tr_add2 ins_starttip          "इंस्टालर डीबग टर्मिनल के साथ शुरू करें|"
_tr_add2 ins_up                "इस ऐप को अपडेट करें$_exclamation"
_tr_add2 ins_uptip             "इस ऐप को अपडेट करके रीस्टार्ट करें|"
_tr_add2 ins_keys              "पैकमैन की का प्रारंभिक स्थापना करें|"
_tr_add2 ins_keystip           "पैकमैन की का प्रारंभिक स्थापना करें|"
_tr_add2 ins_pm                "हार्ड डिस्क पार्टीशन मैनेजर"
_tr_add2 ins_pmtip             "Gparted की मदद से आप डिस्क पर पार्टीशन बदल सकते हैं।"
_tr_add2 ins_rel               "सबसे नए रिलीज़ की जानकारी"
_tr_add2 ins_reltip            "सबसे नए रिलीज़ की के बारे में ज़्यादा जानकारी"
_tr_add2 ins_tips              "इंस्टाल के बारे में टिप्स"
_tr_add2 ins_tipstip           "इंस्टाल के बारे में टिप्स"
_tr_add2 ins_trouble           "समस्या का समाधान करें"
_tr_add2 ins_troubletip        "सिस्टम बचाव"

_tr_add2 after_install_us_from    "अपडेट स्रोत"                            # AUR or upstream
_tr_add2 after_install_us_el      "आवश्यक विशेषाधिकार"
_tr_add2 after_install_us_done    "अपडेट पूरा हुआ"
_tr_add2 after_install_us_fail    "अपडेट असफल रहा"

# 2020-May-14:

_tr_add2 nb_tab_UsefulTips     "टिप्स"
_tr_add2 useful_tips_text      "अहम टिप्स"

# 2020-May-16:

_tr_add2 butt_changelog        "बदलाव की जानकारी"
_tr_add2 butt_changelogtip     "Welcome ऐप्प में बदलावों की जानकारी"

_tr_add2 after_install_themevan      "Xfce डिफ़ॉल्ट थीम"
_tr_add2 after_install_themevantip   "Xfce का डिफ़ॉल्ट थीम इस्तेमाल करें"

_tr_add2 after_install_themedef     "एंडेवर ओएस का डिफ़ॉल्ट Xfce थीम"
_tr_add2 after_install_themedeftip  "एंडेवर ओएस का डिफ़ॉल्ट Xfce थीम इस्तेमाल करें "

# 2020-Jun-28:
_tr_add2 after_install_pclean       "सॉफ्टवेयर क्लीनअप के सेटिंग"
_tr_add2 after_install_pcleantip    "सॉफ्टवेयर क्लीनअप के सेटिंग बदलें"

# 2020-Jul-04:
_tr_add2 nb_tab_OwnCommands         "आपके कमांड्स"                   # modified 2020-Jul-08
_tr_add2 nb_tab_owncmds_text        "आपके दिए गए कमांड्स"               # modified 2020-Jul-08

# 2020-Jul-08:
_tr_add2 nb_tab_owncmdstip          "अपने कमांड्स डालने के बारे में मदद"

_tr_add2 add_more_apps_akm          "कर्नल मैनेजर"
_tr_add2 add_more_apps_akmtip       "कर्नल इंस्टॉल या हटाने के लिए सॉफ्टवेयर"

# 2020-Jul-15:
_tr_add2 butt_owncmds_help        "अपने कमांड्स डालने के बारे में मदद"

# 2020-Aug-05:
_tr_add2 butt_owncmds_dnd         "अपने कमांड्स खींचें और यहाँ गिराएं"
_tr_add2 butt_owncmds_dnd_help    "विंडो दिखाएं जहाँ नए बटन को खींचना है"

# 2020-Sep-03:
_tr_add2 ins_reso                 "स्क्रीन रेसोलुशन बदलें"
_tr_add2 ins_resotip              "अब स्क्रीन रेसोलुशन बदलें"

# 2020-Sep-08:
_tr_add2 add_more_apps_arch          "आर्च लिनक्स के सॉफ्टवेयर देखें"
_tr_add2 add_more_apps_aur           "AUR के सॉफ्टवेयर देखें"
_tr_add2 add_more_apps_done1_text    "सुझाए गए ऐप्प्स पहले ही इंस्टॉल हो चुके हैं$_exclamation"
_tr_add2 add_more_apps_done2_text    "या आर्च लिनक्स और AUR के सारे सॉफ्टवेयर देखें"
_tr_add2 add_more_apps_done2_tip1    "इंस्टॉल करने के लिए 'pacman' या 'yay' का प्रयोग करें"
_tr_add2 add_more_apps_done2_tip2    "इंस्टॉल करने के लिए 'yay' का प्रयोग करें "

# 2020-Sep-11:
_tr_add2 after_install_ew2        "एंडेवर ओएस के वॉलपेपर्स में से चुनें"   # was: "EndeavourOS wallpaper (choose)"
_tr_add2 after_install_ewtip2     "वॉलपेपर चुनें"                          # was: "Choose from EndeavourOS default wallpapers"

# 2020-Sep-15:
#    IMPORTANT NOTE:
#       - line 71:  changed text of 'after_install_ew'
#       - line 72:  changed text of 'after_install_ewtip'
#       - line 249: changed text of 'after_install_ew2'
#       - line 250: changed text of 'after_install_ewtip2'

# 2020-Oct-23:
_tr_add2 updt_update_check        "नए अपडेट ढूंढें"
_tr_add2 updt_searching           "ढूंढा जा रहा है"
_tr_add2 updt_for_updates         "अपडेट के लिए"
_tr_add2 updt_failure             "अपडेट असफल$_exclamation"
_tr_add2 updt_nothing_todo        "कोई नया अपडेट नहीं है"
_tr_add2 updt_press_enter         "इस विंडो को बंद करने के लिए 'ENTER' दबाएं"
# Translators's note
# "there is nothing to do" (_tr_add2 updt_nothing_todo) has been
# translated to "कोई नया अपडेट नहीं है", which means
# "there is no new update". The change was done to ensure clarity.

# 2020-Oct-24:
#    IMPORTANT NOTE:
#       - line 244: changed text of 'add_more_apps_done2_text'

# 2020-Dec-11:
_tr_add2 after_install_pacdiff_tip "Manage pacnew, pacorig $_and pacsave files with pacdiff $_and"
