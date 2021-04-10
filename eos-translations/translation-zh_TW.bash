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

_tr_lang=zh_TW            # required helper variable for _tr_add2

# Help with some special characters (HTML). Yad has problems without them:
_exclamation='！'   # '!'
_and='&#38;'           # '&'
_question='？'      # '?'


###################### Now the actual strings to be translated: ######################
# func   <placeholder>         "string"

_tr_add2 welcome_disabled      "$PRETTY_PROGNAME應用是停用狀態。如果你想啓用它，請添加 --enable 參數。"

_tr_add2 butt_later            "下次見"
_tr_add2 butt_latertip         "保留$PRETTY_PROGNAME的啓用狀態"

_tr_add2 butt_noshow           "不再顯示此程式"
_tr_add2 butt_noshowtip        "停用$PRETTY_PROGNAME"

_tr_add2 butt_help             "尋求幫助"


_tr_add2 nb_tab_INSTALL        "安裝系統"
_tr_add2 nb_tab_GeneralInfo    "一般資訊"
_tr_add2 nb_tab_AfterInstall   "安裝後指南"
_tr_add2 nb_tab_AddMoreApps    "安裝更多應用程式"


_tr_add2 after_install_text    "安裝後指南"

_tr_add2 after_install_um      "修改鏡像列表"
_tr_add2 after_install_umtip   "在更新系統之前修改鏡像列表"

_tr_add2 after_install_us      "更新系統"
_tr_add2 after_install_ustip   "更新系統軟體"

_tr_add2 after_install_dsi     "偵測系統問題"
_tr_add2 after_install_dsitip  "偵測常見的系統問題"

_tr_add2 after_install_etl     "想更新EndeavourOS嗎$_question"
_tr_add2 after_install_etltip  "更新EndeavourOS的教學"

_tr_add2 after_install_cdm     "更換顯示管理器"
_tr_add2 after_install_cdmtip  "換一個顯示管理器"

_tr_add2 after_install_ew      "EndeavourOS 預設桌面背景"      # was: "EndeavourOS wallpaper"
_tr_add2 after_install_ewtip   "還原成預設桌面背景"     # was: "Change desktop wallpaper to EOS default"


_tr_add2 after_install_pm      "管理軟體包"
_tr_add2 after_install_pmtip   "學習如何用pacman管理軟體包"

_tr_add2 after_install_ay      "Arch使用者軟體倉庫(AUR)和yay小幫手$_exclamation"
_tr_add2 after_install_aytip   "關於AUR和yay的資訊"

_tr_add2 after_install_hn      "硬體與網路支援"
_tr_add2 after_install_hntip   "確保你的硬體正常運作"

_tr_add2 after_install_bt      "藍牙"
_tr_add2 after_install_bttip   "藍牙的建議使用方法"

_tr_add2 after_install_nv      "NVIDIA顯示卡使用者們看這邊$_exclamation"
_tr_add2 after_install_nvtip   "請使用NVIDIA專用安裝程式"

_tr_add2 after_install_ft      "論壇的建議使用方法"
_tr_add2 after_install_fttip   "尋求幫助的正確方法"


_tr_add2 general_info_text     "來EndeavourOS官方網站尋求協助$_exclamation"

_tr_add2 general_info_ws       "官方網站"

_tr_add2 general_info_wi       "百科"
_tr_add2 general_info_witip    "精選文章"

_tr_add2 general_info_ne       "新消息"
_tr_add2 general_info_netip    "新消息與文章"

_tr_add2 general_info_fo       "論壇"
_tr_add2 general_info_fotip    "歡迎來我們的論壇發問，留言，聊天$_exclamation"

_tr_add2 general_info_do       "捐款"
_tr_add2 general_info_dotip    "您的捐款能幫助我們繼續開發EndeavourOS"

_tr_add2 general_info_ab       "關於$PRETTY_PROGNAME"
_tr_add2 general_info_abtip    "更多關於本應用的資訊"


_tr_add2 add_more_apps_text    "安裝熱門程式"

_tr_add2 add_more_apps_lotip   "辦公軟體(libreoffice-fresh)"

_tr_add2 add_more_apps_ch      "Chromium瀏覽器"
_tr_add2 add_more_apps_chtip   "網頁瀏覽器"

_tr_add2 add_more_apps_fw      "防火牆"
_tr_add2 add_more_apps_fwtip   "Gufw防火牆"

_tr_add2 add_more_apps_bt      "Xfce藍牙設定工具(blueberry)"
_tr_add2 add_more_apps_bt_bm   "Xfce藍牙管理器(blueman)"


####################### NEW STUFF AFTER THIS LINE:

_tr_add2 settings_dis_contents   "如果你想重新啓用$PRETTY_PROGNAME，請在終端中運行： $PROGNAME --enable"
_tr_add2 settings_dis_text       "重新啓用$PRETTY_PROGNAME："
_tr_add2 settings_dis_title      "如何重新啓用$PRETTY_PROGNAME"
_tr_add2 settings_dis_butt       "我記住了"
_tr_add2 settings_dis_buttip     "我保證"

_tr_add2 help_butt_title         "$PRETTY_PROGNAME幫助"
_tr_add2 help_butt_text          "更多關於本應用的資訊"

_tr_add2 dm_title                "選擇顯示管理器"
_tr_add2 dm_col_name1            "已選擇"
_tr_add2 dm_col_name2            "顯示管理器名稱"

_tr_add2 dm_reboot_required      "設定變更會在下次重開系統時生效"
_tr_add2 dm_changed              "現在啓用的顯示管理器："
_tr_add2 dm_failed               "更換顯示管理器失敗"
_tr_add2 dm_warning_title        "警告"

_tr_add2 install_installer       "安裝程式"
_tr_add2 install_already         "已安裝"
_tr_add2 install_ing             "正在安裝"
_tr_add2 install_done            "安裝完成"

_tr_add2 sysup_no                "這已是最新版本"
_tr_add2 sysup_check             "正在尋找軟體更新..."

_tr_add2 issues_title            "偵測軟體包問題"
_tr_add2 issues_grub             "注意：請務必手動更新開機選單"
_tr_add2 issues_run              "正在執行以下指令："
_tr_add2 issues_no               "偵測不到任何系統問題"

_tr_add2 cal_noavail            "無法存取："        # installer program
_tr_add2 cal_warn               "警告"
_tr_add2 cal_info1              "這是社群開發版本。\n\n"                                   # specials needed!
_tr_add2 cal_info2              "<b>離線</b>安裝只支援Xfce桌面環境，並配以EndeavourOS主題。\n此安裝方法不需要網路連接。\n\n"
_tr_add2 cal_info3              "<b>在線</b>安裝可讓您自行選擇桌面環境，並配以原版主題。\n此安裝方法需要網路連接。\n\n"
_tr_add2 cal_info4              "請注意：此版本是測試版本。請回報你遇到的程式錯誤，幫助我們向穩定版邁進。\n"
_tr_add2 cal_choose             "選擇安裝方法"
_tr_add2 cal_method             "方法"
_tr_add2 cal_nosupport          "$PROGNAME：不支援此模式："
_tr_add2 cal_nofile             "$PROGNAME：找不到必要檔案："
_tr_add2 cal_istarted           "已開始安裝"
_tr_add2 cal_istopped           "安裝完成"

_tr_add2 tail_butt              "關閉本視窗"
_tr_add2 tail_buttip            "只關閉本視窗"


_tr_add2 ins_text              "在硬碟上安裝EndeavourOS"
_tr_add2 ins_start             "打開安裝程式"
_tr_add2 ins_starttip          "打開安裝程式以及除錯終端"
_tr_add2 ins_up                "更新本應用$_exclamation"
_tr_add2 ins_uptip             "更新並重啓本應用"
_tr_add2 ins_keys              "初始化pacman密鑰"
_tr_add2 ins_keystip           "初始化pacman密鑰"
_tr_add2 ins_pm                "硬碟分區管理器"
_tr_add2 ins_pmtip             "使用Gparted檢查並管理硬碟分區和結構"
_tr_add2 ins_rel               "關於最新版本的資訊"
_tr_add2 ins_reltip            "更多關於最新版本的資訊"
_tr_add2 ins_tips              "安裝教學"
_tr_add2 ins_tipstip           "安裝教學"
_tr_add2 ins_trouble           "故障排除"
_tr_add2 ins_troubletip        "系統救援"

_tr_add2 after_install_us_from    "更新來自"                            # AUR or upstream
_tr_add2 after_install_us_el      "需要管理員權限"
_tr_add2 after_install_us_done    "更新完成"
_tr_add2 after_install_us_fail    "更新失敗"

# 2020-May-14:

_tr_add2 nb_tab_UsefulTips     "小建議"
_tr_add2 useful_tips_text      "有用的小建議"

# 2020-May-16:

_tr_add2 butt_changelog        "更新日誌"
_tr_add2 butt_changelogtip     "查看歡迎程式的更新日誌"

_tr_add2 after_install_themevan      "Xfce的原版主題"
_tr_add2 after_install_themevantip   "使用Xfce的原版主題"

_tr_add2 after_install_themedef     "EndeavourOS的預設Xfce主題"
_tr_add2 after_install_themedeftip  "使用EndeavourOS的預設Xfce主題"

# 2020-Jun-28:
_tr_add2 after_install_pclean       "啓用自動清理軟件包快取"
_tr_add2 after_install_pcleantip    "配置自訂清理軟件包快取的服務"

# 2020-Jul-04:
_tr_add2 nb_tab_OwnCommands         "自訂指令"                   # modified 2020-Jul-08
_tr_add2 nb_tab_owncmds_text        "個性化指令"               # modified 2020-Jul-08

# 2020-Jul-08:
_tr_add2 nb_tab_owncmdstip          "自訂指令幫助"

_tr_add2 add_more_apps_akm          "核心管理器"
_tr_add2 add_more_apps_akmtip       "一個小巧的Linux核心管理器和系統資訊工具"

# 2020-Jul-15:
_tr_add2 butt_owncmds_help        "自訂指令教學"

# 2020-Aug-05:
_tr_add2 butt_owncmds_dnd         "滑鼠拖放自訂指令"
_tr_add2 butt_owncmds_dnd_help    "展示目標視窗，將項目拖放成新按鈕"

# 2020-Sep-03:
_tr_add2 ins_reso                 "變更解析度"
_tr_add2 ins_resotip              "改變螢幕解析度"

# 2020-Sep-08:
_tr_add2 add_more_apps_arch          "瀏覽所有Arch官方倉庫裏的軟體包"
_tr_add2 add_more_apps_aur           "瀏覽所有Arch使用者倉庫(AUR)裏的軟體包"
_tr_add2 add_more_apps_done1_text    "已安裝建議應用$_exclamation"
_tr_add2 add_more_apps_done2_text    "或瀏覽所有Arch官方倉庫和AUR裏的軟體包"
_tr_add2 add_more_apps_done2_tip1    "請使用pacman或yay安裝此應用"
_tr_add2 add_more_apps_done2_tip2    "請使用yay安裝此應用"

# 2020-Sep-11:
_tr_add2 after_install_ew2        "選擇EndeavourOS桌面背景"   # was: "EndeavourOS wallpaper (choose)"
_tr_add2 after_install_ewtip2     "選擇桌面背景"                          # was: "Choose from EndeavourOS default wallpapers"

# 2020-Sep-15:
#    IMPORTANT NOTE:
#       - line 71:  changed text of 'after_install_ew'
#       - line 72:  changed text of 'after_install_ewtip'
#       - line 249: changed text of 'after_install_ew2'
#       - line 250: changed text of 'after_install_ewtip2'

# 2020-Oct-23:
_tr_add2 updt_update_check        "檢查更新"
_tr_add2 updt_searching           "正在搜尋"
_tr_add2 updt_for_updates         "更新"
_tr_add2 updt_failure             "更新失敗$_exclamation"
_tr_add2 updt_nothing_todo        "已是最新版本"
_tr_add2 updt_press_enter         "按Enter鍵關閉本視窗"

# 2020-Oct-24:
#    IMPORTANT NOTE:
#       - line 244: changed text of 'add_more_apps_done2_text'

# 2020-Dec-11:
_tr_add2 after_install_pacdiff_tip "使用pacdiff管理pacnew，pacorig和pacsave檔案"
