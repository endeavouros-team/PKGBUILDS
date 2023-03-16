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
_exclamation='&#33;'   # '!'
_and='&#38;'           # '&'
_question='&#63;'      # '?'


###################### Now the actual strings to be translated: ######################
# func   <placeholder>         "string"

_tr_add2 welcome_disabled      "$PRETTY_PROGNAME 程式已停用。如果要啟用，請使用 --enable 選項（暫時啟用：--once）。"

_tr_add2 butt_later            "下次見"
_tr_add2 butt_latertip         "保持 $PRETTY_PROGNAME 啟用"

_tr_add2 butt_noshow           "不再顯示本程式"
_tr_add2 butt_noshowtip        "停用 $PRETTY_PROGNAME"

_tr_add2 butt_help             "幫助"


_tr_add2 nb_tab_INSTALL        "安裝"
_tr_add2 nb_tab_GeneralInfo    "一般資訊"
_tr_add2 nb_tab_AfterInstall   "安裝完之後"
_tr_add2 nb_tab_AddMoreApps    "安裝更多應用程式"


_tr_add2 after_install_text    "安裝完之後的事項"

_tr_add2 after_install_um      "更新鏡像站"
_tr_add2 after_install_umtip   "更新系統前，先更新鏡像站清單"

_tr_add2 after_install_us      "更新系統"
_tr_add2 after_install_ustip   "更新系統軟體"

_tr_add2 after_install_dsi     "偵測系統問題"
_tr_add2 after_install_dsitip  "偵測潛藏在系統軟體、或是其他地方裡的問題"

_tr_add2 after_install_etl     "更新 EndeavourOS？"
_tr_add2 after_install_etltip  "顯示要怎麼將您的系統更新到最新等級的 EndeavourOS"

_tr_add2 after_install_cdm     "更換顯示管理器"
_tr_add2 after_install_cdmtip  "換一個顯示管理器"

_tr_add2 after_install_ew      "EndeavourOS 預設桌布"      # was: "EndeavourOS wallpaper"
_tr_add2 after_install_ewtip   "還原成預設桌布"     # was: "Change desktop wallpaper to EOS default"


_tr_add2 after_install_pm      "管理軟體包"
_tr_add2 after_install_pmtip   "如何使用 pacman 管理軟體包"

_tr_add2 after_install_ay      "AUR $_and yay！"
_tr_add2 after_install_aytip   "Arch 使用者倉庫與 yay 的資訊"

_tr_add2 after_install_hn      "硬體與網路"
_tr_add2 after_install_hntip   "讓硬體正常運作"

_tr_add2 after_install_bt      "藍牙"
_tr_add2 after_install_bttip   "藍牙的使用建議"

_tr_add2 after_install_nv      "NVIDIA 使用者看這邊！"
_tr_add2 after_install_nvtip   "使用 NVIDIA 專用安裝程式"

_tr_add2 after_install_ft      "論壇小提示"
_tr_add2 after_install_fttip   "自助而後人助"


_tr_add2 general_info_text     "在 EndeavourOS 網站不迷路！"

_tr_add2 general_info_ws       "網站"

_tr_add2 general_info_wi       "Wiki"
_tr_add2 general_info_witip    "精選文章"

_tr_add2 general_info_ne       "新消息"
_tr_add2 general_info_netip    "新消息、文章"

_tr_add2 general_info_fo       "論壇"
_tr_add2 general_info_fotip    "歡迎來我們的論壇發問、留言、聊天！"

_tr_add2 general_info_do       "捐款"
_tr_add2 general_info_dotip    "您的捐款能幫助我們持續開發 EndeavourOS"

_tr_add2 general_info_ab       "關於 $PRETTY_PROGNAME"
_tr_add2 general_info_abtip    "更多關於本程式的資訊"


_tr_add2 add_more_apps_text    "安裝熱門程式"

_tr_add2 add_more_apps_lotip   "辦公軟體 (libreoffice-fresh)"

_tr_add2 add_more_apps_ch      "Chromium 網路瀏覽器"
_tr_add2 add_more_apps_chtip   "網路瀏覽器"

_tr_add2 add_more_apps_fw      "防火牆"
_tr_add2 add_more_apps_fwtip   "Gufw 防火牆"

_tr_add2 add_more_apps_bt      "Xfce 用藍牙設定工具 (blueberry)"
_tr_add2 add_more_apps_bt_bm   "Xfce 用藍牙管理器 (blueman)"


####################### NEW STUFF AFTER THIS LINE:

_tr_add2 settings_dis_contents   "如果要再次啟用 $PRETTY_PROGNAME，請開啟終端機，執行：\n<tt>   $PROGNAME --enable</tt>\n或是\n<tt>   $PROGNAME --once</tt>\n"
_tr_add2 settings_dis_text       "重新啟用 $PRETTY_PROGNAME："
_tr_add2 settings_dis_title      "如何重新啟用 $PRETTY_PROGNAME"
_tr_add2 settings_dis_butt       "我記住了"
_tr_add2 settings_dis_buttip     "我保證"

_tr_add2 help_butt_title         "$PRETTY_PROGNAME 幫助"
_tr_add2 help_butt_text          "更多關於 $PRETTY_PROGNAME 程式的資訊"

_tr_add2 dm_title                "選擇顯示管理器"
_tr_add2 dm_col_name1            "已選擇"
_tr_add2 dm_col_name2            "管理器名稱"

_tr_add2 dm_reboot_required      "需要重新開機，設定才會生效。"
_tr_add2 dm_changed              "管理器已經換成："
_tr_add2 dm_failed               "更換顯示管理器失敗。"
_tr_add2 dm_warning_title        "警告"

_tr_add2 install_installer       "安裝程式"
_tr_add2 install_already         "已安裝"
_tr_add2 install_ing             "正在安裝"
_tr_add2 install_done            "安裝完成。"

_tr_add2 sysup_no                "無更新。"
_tr_add2 sysup_check             "正在檢查軟體更新……"

_tr_add2 issues_title            "偵測軟體包問題"
_tr_add2 issues_grub             "重要：需要您手動重新建立開機選單。"
_tr_add2 issues_run              "正在執行指令："
_tr_add2 issues_no               "未偵測到重大系統問題。"

_tr_add2 cal_noavail            "無法使用："        # installer program
_tr_add2 cal_warn               "警告"
_tr_add2 cal_info1              "這是社群開發版本。\n\n"                                   # specials needed!
_tr_add2 cal_info2              "<b>離線</b>安裝完會有 Xfce 桌面環境，並配以 EndeavourOS 主題。\n不需要網路連線。\n\n"
_tr_add2 cal_info3              "<b>線上</b>安裝讓您自行選擇桌面環境，並配以原版主題。\n需要網路連線。\n\n"
_tr_add2 cal_info4              "請注意：此版本為開發中版本，請回報您遇到的 bug，以協助我們向穩定版邁進。\n"
_tr_add2 cal_choose             "選擇安裝方法"
_tr_add2 cal_method             "方法"
_tr_add2 cal_nosupport          "$PROGNAME：不支援此模式："
_tr_add2 cal_nofile             "$PROGNAME：找不到需要的檔案："
_tr_add2 cal_istarted           "開始安裝"
_tr_add2 cal_istopped           "安裝完成"

_tr_add2 tail_butt              "關閉本視窗"
_tr_add2 tail_buttip            "只關閉本視窗"


_tr_add2 ins_text              "在硬碟上安裝 EndeavourOS"
_tr_add2 ins_start             "啟動安裝程式"
_tr_add2 ins_starttip          "啟動 EndeavourOS 安裝程式（在主流桌面中擇一）"
_tr_add2 ins_up                "更新本程式！"
_tr_add2 ins_uptip             "更新並重啟本程式"
_tr_add2 ins_keys              "初始化 pacman 密鑰"
_tr_add2 ins_keystip           "初始化 pacman 密鑰"
_tr_add2 ins_pm                "硬碟分區管理器"
_tr_add2 ins_pmtip             "使用 Gparted 檢查、管理硬碟分區和結構"
_tr_add2 ins_rel               "關於最新版本的資訊"
_tr_add2 ins_reltip            "更多關於最新版本的資訊"
_tr_add2 ins_tips              "安裝提示"
_tr_add2 ins_tipstip           "安裝提示"
_tr_add2 ins_trouble           "故障排除"
_tr_add2 ins_troubletip        "系統救援"

_tr_add2 after_install_us_from    "更新來源"                            # AUR or upstream
_tr_add2 after_install_us_el      "需要管理員權限。"
_tr_add2 after_install_us_done    "更新完成。"
_tr_add2 after_install_us_fail    "更新失敗！"

# 2020-May-14:

_tr_add2 nb_tab_UsefulTips     "小提示"
_tr_add2 useful_tips_text      "實用小提示"

# 2020-May-16:

_tr_add2 butt_changelog        "更新日誌"
_tr_add2 butt_changelogtip     "檢視 Welcome 的更新日誌"

_tr_add2 after_install_themevan      "Xfce 原版主題"
_tr_add2 after_install_themevantip   "使用 Xfce 原版主題"

_tr_add2 after_install_themedef     "EndeavourOS 的預設 Xfce 主題"
_tr_add2 after_install_themedeftip  "使用 EndeavourOS 的預設 Xfce 主題"

# 2020-Jun-28:
_tr_add2 after_install_pclean       "軟體包清理配置"
_tr_add2 after_install_pcleantip    "配置軟體包快取清理服務"

# 2020-Jul-04:
_tr_add2 nb_tab_OwnCommands         "自訂指令"                   # modified 2020-Jul-08
_tr_add2 nb_tab_owncmds_text        "個人化指令"               # modified 2020-Jul-08

# 2020-Jul-08:
_tr_add2 nb_tab_owncmdstip          "關於新增自訂指令的幫助"

_tr_add2 add_more_apps_akm          "核心管理器"
_tr_add2 add_more_apps_akmtip       "小巧的 Linux 核心管理器和系統資訊工具"

# 2020-Jul-15:
_tr_add2 butt_owncmds_help        "自訂指令教學"

# 2020-Aug-05:
_tr_add2 butt_owncmds_dnd         "滑鼠拖放自訂指令"
_tr_add2 butt_owncmds_dnd_help    "顯示一個視窗，拖放項目進去即可新增按鈕"

# 2020-Sep-03:
_tr_add2 ins_reso                 "變更螢幕解析度"
_tr_add2 ins_resotip              "立即變更螢幕解析度"

# 2020-Sep-08:
_tr_add2 add_more_apps_arch          "瀏覽所有 Arch 軟體包"
_tr_add2 add_more_apps_aur           "瀏覽所有 AUR 軟體包"
_tr_add2 add_more_apps_done1_text    "建議的程式已安裝完成！"
_tr_add2 add_more_apps_done2_text    "或瀏覽所有 Arch 及 AUR 的軟體包"
_tr_add2 add_more_apps_done2_tip1    "如果要安裝，請使用 'pacman' 或 'yay'"
_tr_add2 add_more_apps_done2_tip2    "如果要安裝，請使用 'yay'"

# 2020-Sep-11:
_tr_add2 after_install_ew2        "選擇一款 EndeavourOS 桌布"   # was: "EndeavourOS wallpaper (choose)"
_tr_add2 after_install_ewtip2     "選擇桌布"                          # was: "Choose from EndeavourOS default wallpapers"

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
_tr_add2 updt_failure             "更新失敗！"
_tr_add2 updt_nothing_todo        "無事可做"
_tr_add2 updt_press_enter         "按 Enter 鍵關閉本視窗"

# 2020-Oct-24:
#    IMPORTANT NOTE:
#       - line 244: changed text of 'add_more_apps_done2_text'

# 2020-Dec-11:
_tr_add2 after_install_pacdiff_tip    "管理 pacnew、pacorig、pacsave 檔案，使用 pacdiff 及"

# 2021-Apr-07:
_tr_add2 after_install_conf           "配置"                             # a starting verb on a sentence "Configure eos-update-notifier"
_tr_add2 after_install_more_wall      "下載其他 EndeavourOS 桌布"
_tr_add2 after_install_more_wall_tip  "下載 EndeavourOS 舊款桌布、社群桌布"
_tr_add2 after_install_info           "相關資訊"                           # last word on a sentence, means just any information

_tr_add2 butt_softnews                "軟體消息"
_tr_add2 butt_softnews_tip            "與 EndeavourOS 軟體有關的重要消息"

_tr_add2 install_community            "安裝社群版"
_tr_add2 install_community_tip        "社群版合集（主要是視窗管理器）"    # changed 2021-Oct-23, 2023-Jan-12

# 2021-May-01
_tr_add2 ins_syslog                   "如何分享系統日誌"
_tr_add2 ins_syslogtip                "解釋當您需要協助時，要如何分享系統日誌"
_tr_add2 ins_logtool                  "故障排除用日誌"
_tr_add2 ins_logtooltip               "尋求協助時，可在此選擇、建立、並分享故障排除日誌"

# 2021-May-20
_tr_add2 nb_tab_DailyAssistant       "小幫手"
_tr_add2 daily_assistant_text        "處理日常事務及／或其他實用工具"
_tr_add2 after_install_itab          "選擇 Welcome 起始分頁"
_tr_add2 after_install_itab_tip      "設定 Welcome 啟動時顯示的分頁"

# 2021-Jun-08
_tr_add2 daily_assist_apps           "應用程式分類"
_tr_add2 daily_assist_apps_tip       "照類別分類的應用程式"

_tr_add2 after_install_vbox1         "啟用 VirtualBox Guest 公用程式"
_tr_add2 after_install_vbox2         "如果要啟用 VirtualBox Guest 公用程式，請選擇<b>安裝完之後</b> 分頁，然後按按鈕 "

# 2021-Jun-17
_tr_add2 after_install_r8168         "有線網路有問題？在 r8168 或 r8169 驅動程式間切換！"    # changed 2021-Dec-14 !!
_tr_add2 after_install_r8168_tip     "在 r8168 或 r8169 驅動程式間切換（可能需要重新開機）"           # changed 2021-Dec-14 !!

# 2021-Oct-08
_tr_add2 daily_assist_DEinfo         "相關資訊"                                         # assume prefix "DE:", e.g.: "Xfce: information"
_tr_add2 daily_assist_DEinfo_tip     "桌面／視窗管理器的相關資訊"  # assume prefix "DE:", e.g.: "Xfce: more information ..."

# 2022-Feb-16
_tr_add2 add_more_apps_qs            "挑選安裝熱門程式"                      # runs eos-quickstart
_tr_add2 add_more_apps_qstip         "挑選熱門程式並安裝"

# 2022-Mar-21
_tr_add2 ins_blue_notes              "藍牙注意事項"
_tr_add2 ins_blue_notes_tip          "設定藍牙相關的注意事項"

# 2022-Mar-27
_tr_add2 after_install_fw            "防火牆資訊"
_tr_add2 after_install_fwtip         "預設防火牆的相關資訊"

# 2022-Mar-30
_tr_add2 ins_custom                  "自訂安裝流程"
_tr_add2 ins_custom_tip              "如何自訂安裝流程"

# 2022-Jul-15
_tr_add2 daily_assist_anews          "最新 Arch 新聞"
_tr_add2 daily_assist_anewstip       "在瀏覽器中顯示最新 Arch 新聞"

# 2022-Sep-25
_tr_add2 nb_nofify_user1             "於下列時間有重要消息："                        # one (or more) dates, e.g. 2023-Feb-18
_tr_add2 nb_nofify_user2             "請按位於本視窗左下角的"                                  # Software News
_tr_add2 nb_nofify_user3             "按鈕。"

# 2023-Feb-20
_tr_add2 ins_customized              "取得您的安裝個人化檔案（進階）"
_tr_add2 ins_cust_text               "取得您的個人化 user_commands.bash 的 URL"
_tr_add2 ins_cust_text2              "取得的檔案是用來取代 ~/user_commands.bash"
_tr_add2 ins_cust_text3              "主要在<b>線上</b>安裝比較有用"

