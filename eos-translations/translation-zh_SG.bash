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

_tr_lang=zh_SG            # required helper variable for _tr_add2

# Help with some special characters (HTML). Yad has problems without them:
_exclamation='！'   # '!'
_and='&#38;'           # '&'
_question='？'      # '?'


###################### Now the actual strings to be translated: ######################
# func   <placeholder>         "string"

_tr_add2 welcome_disabled      "$PRETTY_PROGNAME应用是停用状态。如果你想啓用它，请添加 --enable 参数。"

_tr_add2 butt_later            "下次见"
_tr_add2 butt_latertip         "保留$PRETTY_PROGNAME的啓用状态"

_tr_add2 butt_noshow           "不再显示此程式"
_tr_add2 butt_noshowtip        "停用$PRETTY_PROGNAME"

_tr_add2 butt_help             "寻求帮助"


_tr_add2 nb_tab_INSTALL        "安装系统"
_tr_add2 nb_tab_GeneralInfo    "一般资讯"
_tr_add2 nb_tab_AfterInstall   "安装后指南"
_tr_add2 nb_tab_AddMoreApps    "安装更多应用程式"


_tr_add2 after_install_text    "安装后指南"

_tr_add2 after_install_um      "修改镜像列表"
_tr_add2 after_install_umtip   "在更新系统之前修改镜像列表"

_tr_add2 after_install_us      "更新系统"
_tr_add2 after_install_ustip   "更新系统软件"

_tr_add2 after_install_dsi     "侦测系统问题"
_tr_add2 after_install_dsitip  "侦测常见的系统问题"

_tr_add2 after_install_etl     "想更新EndeavourOS吗$_question"
_tr_add2 after_install_etltip  "更新EndeavourOS的教学"

_tr_add2 after_install_cdm     "更换显示管理器"
_tr_add2 after_install_cdmtip  "换一个显示管理器"

_tr_add2 after_install_ew      "EndeavourOS 预设桌面背景"      # was: "EndeavourOS wallpaper"
_tr_add2 after_install_ewtip   "还原成预设桌面背景"     # was: "Change desktop wallpaper to EOS default"


_tr_add2 after_install_pm      "管理软件包"
_tr_add2 after_install_pmtip   "学习如何用pacman管理软件包"

_tr_add2 after_install_ay      "Arch使用者软件仓库(AUR)和yay小帮手$_exclamation"
_tr_add2 after_install_aytip   "关于AUR和yay的资讯"

_tr_add2 after_install_hn      "硬件与网路支援"
_tr_add2 after_install_hntip   "确保你的硬件正常运作"

_tr_add2 after_install_bt      "蓝牙"
_tr_add2 after_install_bttip   "蓝牙的建议使用方法"

_tr_add2 after_install_nv      "NVIDIA显示卡使用者们看这边$_exclamation"
_tr_add2 after_install_nvtip   "请使用NVIDIA专用安装程式"

_tr_add2 after_install_ft      "论坛的建议使用方法"
_tr_add2 after_install_fttip   "寻求帮助的正确方法"


_tr_add2 general_info_text     "来EndeavourOS官方网站寻求协助$_exclamation"

_tr_add2 general_info_ws       "官方网站"

_tr_add2 general_info_wi       "百科"
_tr_add2 general_info_witip    "精选文章"

_tr_add2 general_info_ne       "新消息"
_tr_add2 general_info_netip    "新消息与文章"

_tr_add2 general_info_fo       "论坛"
_tr_add2 general_info_fotip    "欢迎来我们的论坛發问，留言，聊天$_exclamation"

_tr_add2 general_info_do       "捐款"
_tr_add2 general_info_dotip    "您的捐款能帮助我们继续开發EndeavourOS"

_tr_add2 general_info_ab       "关于$PRETTY_PROGNAME"
_tr_add2 general_info_abtip    "更多关于本应用的资讯"


_tr_add2 add_more_apps_text    "安装热门程式"

_tr_add2 add_more_apps_lotip   "办公软件(libreoffice-fresh)"

_tr_add2 add_more_apps_ch      "Chromium浏览器"
_tr_add2 add_more_apps_chtip   "网页浏览器"

_tr_add2 add_more_apps_fw      "防火牆"
_tr_add2 add_more_apps_fwtip   "Gufw防火牆"

_tr_add2 add_more_apps_bt      "Xfce蓝牙设定工具(blueberry)"
_tr_add2 add_more_apps_bt_bm   "Xfce蓝牙管理器(blueman)"


####################### NEW STUFF AFTER THIS LINE:

_tr_add2 settings_dis_contents   "如果你想重新啓用$PRETTY_PROGNAME，请在终端中运行： $PROGNAME --enable"
_tr_add2 settings_dis_text       "重新啓用$PRETTY_PROGNAME："
_tr_add2 settings_dis_title      "如何重新啓用$PRETTY_PROGNAME"
_tr_add2 settings_dis_butt       "我记住了"
_tr_add2 settings_dis_buttip     "我保证"

_tr_add2 help_butt_title         "$PRETTY_PROGNAME帮助"
_tr_add2 help_butt_text          "更多关于本应用的资讯"

_tr_add2 dm_title                "选择显示管理器"
_tr_add2 dm_col_name1            "已选择"
_tr_add2 dm_col_name2            "显示管理器名称"

_tr_add2 dm_reboot_required      "设定变更会在下次重开系统时生效"
_tr_add2 dm_changed              "现在啓用的显示管理器："
_tr_add2 dm_failed               "更换显示管理器失败"
_tr_add2 dm_warning_title        "警告"

_tr_add2 install_installer       "安装程式"
_tr_add2 install_already         "已安装"
_tr_add2 install_ing             "正在安装"
_tr_add2 install_done            "安装完成"

_tr_add2 sysup_no                "这已是最新版本"
_tr_add2 sysup_check             "正在寻找软件更新..."

_tr_add2 issues_title            "侦测软件包问题"
_tr_add2 issues_grub             "注意：请务必手动更新开机选单"
_tr_add2 issues_run              "正在执行以下指令："
_tr_add2 issues_no               "侦测不到任何系统问题"

_tr_add2 cal_noavail            "无法存取："        # installer program
_tr_add2 cal_warn               "警告"
_tr_add2 cal_info1              "这是社群开發版本。\n\n"                                   # specials needed!
_tr_add2 cal_info2              "<b>离线</b>安装只支援Xfce桌面环境，并配以EndeavourOS主题。\n此安装方法不需要网路连接。\n\n"
_tr_add2 cal_info3              "<b>在线</b>安装可让您自行选择桌面环境，并配以原版主题。\n此安装方法需要网路连接。\n\n"
_tr_add2 cal_info4              "请注意：此版本是测试版本。请回报你遇到的程式错误，帮助我们向稳定版迈进。\n"
_tr_add2 cal_choose             "选择安装方法"
_tr_add2 cal_method             "方法"
_tr_add2 cal_nosupport          "$PROGNAME：不支援此模式："
_tr_add2 cal_nofile             "$PROGNAME：找不到必要档案："
_tr_add2 cal_istarted           "已开始安装"
_tr_add2 cal_istopped           "安装完成"

_tr_add2 tail_butt              "关闭本视窗"
_tr_add2 tail_buttip            "只关闭本视窗"


_tr_add2 ins_text              "在硬碟上安装EndeavourOS"
_tr_add2 ins_start             "打开安装程式"
_tr_add2 ins_starttip          "打开安装程式以及除错终端"
_tr_add2 ins_up                "更新本应用$_exclamation"
_tr_add2 ins_uptip             "更新并重啓本应用"
_tr_add2 ins_keys              "初始化pacman密钥"
_tr_add2 ins_keystip           "初始化pacman密钥"
_tr_add2 ins_pm                "硬碟分区管理器"
_tr_add2 ins_pmtip             "使用Gparted检查并管理硬碟分区和结构"
_tr_add2 ins_rel               "关于最新版本的资讯"
_tr_add2 ins_reltip            "更多关于最新版本的资讯"
_tr_add2 ins_tips              "安装教学"
_tr_add2 ins_tipstip           "安装教学"
_tr_add2 ins_trouble           "故障排除"
_tr_add2 ins_troubletip        "系统救援"

_tr_add2 after_install_us_from    "更新来自"                            # AUR or upstream
_tr_add2 after_install_us_el      "需要管理员权限"
_tr_add2 after_install_us_done    "更新完成"
_tr_add2 after_install_us_fail    "更新失败"

# 2020-May-14:

_tr_add2 nb_tab_UsefulTips     "小建议"
_tr_add2 useful_tips_text      "有用的小建议"

# 2020-May-16:

_tr_add2 butt_changelog        "更新日誌"
_tr_add2 butt_changelogtip     "查看欢迎程式的更新日誌"

_tr_add2 after_install_themevan      "Xfce的原版主题"
_tr_add2 after_install_themevantip   "使用Xfce的原版主题"

_tr_add2 after_install_themedef     "EndeavourOS的预设Xfce主题"
_tr_add2 after_install_themedeftip  "使用EndeavourOS的预设Xfce主题"

# 2020-Jun-28:
_tr_add2 after_install_pclean       "啓用自动清理软件包快取"
_tr_add2 after_install_pcleantip    "配置自订清理软件包快取的服务"

# 2020-Jul-04:
_tr_add2 nb_tab_OwnCommands         "自订指令"                   # modified 2020-Jul-08
_tr_add2 nb_tab_owncmds_text        "个性化指令"               # modified 2020-Jul-08

# 2020-Jul-08:
_tr_add2 nb_tab_owncmdstip          "自订指令帮助"

_tr_add2 add_more_apps_akm          "核心管理器"
_tr_add2 add_more_apps_akmtip       "一个小巧的Linux核心管理器和系统资讯工具"

# 2020-Jul-15:
_tr_add2 butt_owncmds_help        "自订指令教学"

# 2020-Aug-05:
_tr_add2 butt_owncmds_dnd         "滑鼠拖放自订指令"
_tr_add2 butt_owncmds_dnd_help    "展示目标视窗，将项目拖放成新按钮"

# 2020-Sep-03:
_tr_add2 ins_reso                 "变更解析度"
_tr_add2 ins_resotip              "改变萤幕解析度"

# 2020-Sep-08:
_tr_add2 add_more_apps_arch          "浏览所有Arch官方仓库裏的软件包"
_tr_add2 add_more_apps_aur           "浏览所有Arch使用者仓库(AUR)裏的软件包"
_tr_add2 add_more_apps_done1_text    "已安装建议应用$_exclamation"
_tr_add2 add_more_apps_done2_text    "或浏览所有Arch官方仓库和AUR裏的软件包"
_tr_add2 add_more_apps_done2_tip1    "请使用pacman或yay安装此应用"
_tr_add2 add_more_apps_done2_tip2    "请使用yay安装此应用"

# 2020-Sep-11:
_tr_add2 after_install_ew2        "选择EndeavourOS桌面背景"   # was: "EndeavourOS wallpaper (choose)"
_tr_add2 after_install_ewtip2     "选择桌面背景"                          # was: "Choose from EndeavourOS default wallpapers"

# 2020-Sep-15:
#    IMPORTANT NOTE:
#       - line 71:  changed text of 'after_install_ew'
#       - line 72:  changed text of 'after_install_ewtip'
#       - line 249: changed text of 'after_install_ew2'
#       - line 250: changed text of 'after_install_ewtip2'

# 2020-Oct-23:
_tr_add2 updt_update_check        "检查更新"
_tr_add2 updt_searching           "正在搜寻"
_tr_add2 updt_for_updates         "更新"
_tr_add2 updt_failure             "更新失败$_exclamation"
_tr_add2 updt_nothing_todo        "已是最新版本"
_tr_add2 updt_press_enter         "按Enter键关闭本视窗"

# 2020-Oct-24:
#    IMPORTANT NOTE:
#       - line 244: changed text of 'add_more_apps_done2_text'

# 2020-Dec-11:
_tr_add2 after_install_pacdiff_tip "使用pacdiff管理pacnew，pacorig和pacsave档案"
