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

# Japanese:

### First some useful definitions:

_tr_lang=ja            # required helper variable for _tr_add2

# Help with some special characters (HTML). Yad has problems without them:
_exclamation='&#33;'   # '!'
_and='&#38;'           # '&'
_question='&#63;'      # '?'


###################### Now the actual strings to be translated: ######################
# func   <placeholder>         "string"

_tr_add2 welcome_disabled      "$PRETTY_PROGNAME アプリは無効です。有効にするには、オプション --enable を使います（一時的には: --once）。"  # changed 2022-Feb-21

_tr_add2 butt_later            "また後で"
_tr_add2 butt_latertip         "$PRETTY_PROGNAME を有効のままにします"

_tr_add2 butt_noshow           "今後表示しない"
_tr_add2 butt_noshowtip        "$PRETTY_PROGNAME を無効にします"

_tr_add2 butt_help             "ヘルプ"


_tr_add2 nb_tab_INSTALL        "インストール"
_tr_add2 nb_tab_GeneralInfo    "通常の情報"
_tr_add2 nb_tab_AfterInstall   "インストール後"
_tr_add2 nb_tab_AddMoreApps    "アプリを追加"


_tr_add2 after_install_text    "インストール後の作業"

_tr_add2 after_install_um      "ミラーの更新"
_tr_add2 after_install_umtip   "システム更新前にミラーのリストを更新します"

_tr_add2 after_install_us      "システムの更新"
_tr_add2 after_install_ustip   "システム ソフトウェアを更新します"

_tr_add2 after_install_dsi     "システムの問題を検出"
_tr_add2 after_install_dsitip  "システム パッケージなどの潜在的な問題を検出します"

_tr_add2 after_install_etl     "EndeavourOS を最新にするには $_question"
_tr_add2 after_install_etltip  "EndeavourOS を最新にするには何をすべきかを表示します"

_tr_add2 after_install_cdm     "ディスプレイ マネージャの変更"
_tr_add2 after_install_cdmtip  "別のディスプレイ マネージャを使います"

_tr_add2 after_install_ew      "EndeavourOS にてデフォルトの壁紙を使う"      # was: "EndeavourOS wallpaper"
_tr_add2 after_install_ewtip   "デフォルトの壁紙にリセットします"     # was: "Change desktop wallpaper to EOS default"


_tr_add2 after_install_pm      "パッケージ管理"
_tr_add2 after_install_pmtip   "pacman でパッケージを管理する方法"

_tr_add2 after_install_ay      "AUR $_and yay $_exclamation"
_tr_add2 after_install_aytip   "AUR と yay の情報"

_tr_add2 after_install_hn      "ハードウェアとネットワーク"
_tr_add2 after_install_hntip   "ハードウェアを機能させます"

_tr_add2 after_install_bt      "Bluetooth"
_tr_add2 after_install_bttip   "Bluetooth の使用上の注意"

_tr_add2 after_install_nv      "NVIDIA ユーザへ $_exclamation"
_tr_add2 after_install_nvtip   "NVIDIA インストーラーを使います"

_tr_add2 after_install_ft      "フォーラムの便利な使い方"
_tr_add2 after_install_fttip   "ヘルプの求め方 $_exclamation"


_tr_add2 general_info_text     "EndeavourOS のWebサイトを見ませんか $_exclamation"

_tr_add2 general_info_ws       "Webサイト"

_tr_add2 general_info_wi       "Wiki"
_tr_add2 general_info_witip    "注目の記事"

_tr_add2 general_info_ne       "ニュース"
_tr_add2 general_info_netip    "ニュースと記事"

_tr_add2 general_info_fo       "フォーラム"
_tr_add2 general_info_fotip    "フレンドリーなフォーラムで質問、コメント、チャット $_exclamation"

_tr_add2 general_info_do       "寄付"
_tr_add2 general_info_dotip    "EndeavourOS の実行を維持するためにご協力ください"

_tr_add2 general_info_ab       "$PRETTY_PROGNAME について"
_tr_add2 general_info_abtip    "このアプリの詳細"


_tr_add2 add_more_apps_text    "人気のアプリをインストール"

_tr_add2 add_more_apps_lotip   "Office ツール (libreoffice-fresh)"

_tr_add2 add_more_apps_ch      "Chromium Web ブラウザ"
_tr_add2 add_more_apps_chtip   "Web ブラウザ"

_tr_add2 add_more_apps_fw      "ファイアウォール"
_tr_add2 add_more_apps_fwtip   "Gufw ファイアウォール"

_tr_add2 add_more_apps_bt      "Xfce 用 Bluetooth (blueberry)"
_tr_add2 add_more_apps_bt_bm   "Xfce 用 Bluetooth (blueman)"


####################### NEW STUFF AFTER THIS LINE:

_tr_add2 settings_dis_contents   "$PRETTY_PROGNAME を再実行するには、ターミナルを起動して次を実行します:\n<tt>   $PROGNAME --enable</tt>\nor\n<tt>   $PROGNAME --once</tt>\n"  # slightly changed 2021-Dec-21; changed again 2022-Apr-06
_tr_add2 settings_dis_text       "$PRETTY_PROGNAME の再有効化:"
_tr_add2 settings_dis_title      "$PRETTY_PROGNAME を再度有効にする方法"
_tr_add2 settings_dis_butt       "覚えました"
_tr_add2 settings_dis_buttip     "約束します"

_tr_add2 help_butt_title         "$PRETTY_PROGNAME のヘルプ"
_tr_add2 help_butt_text          "$PRETTY_PROGNAME アプリの詳細"

_tr_add2 dm_title                "ディスプレイマネージャを選択"
_tr_add2 dm_col_name1            "選択済み"
_tr_add2 dm_col_name2            "ディスプレイマネージャ名"

_tr_add2 dm_reboot_required      "変更を有効にするには再起動が必要です。"
_tr_add2 dm_changed              "ディスプレイマネージャが次のように変更されました: "
_tr_add2 dm_failed               "ディスプレイマネージャの変更に失敗しました。"
_tr_add2 dm_warning_title        "警告"

_tr_add2 install_installer       "インストーラー"
_tr_add2 install_already         "インストール済み"
_tr_add2 install_ing             "インストール"
_tr_add2 install_done            "終了。"

_tr_add2 sysup_no                "更新はありません。"
_tr_add2 sysup_check             "ソフトウェア更新を確認..."

_tr_add2 issues_title            "パッケージの問題を検出"
_tr_add2 issues_grub             "重要: ブート メニューを手動で再作成する必要があります。"
_tr_add2 issues_run              "コマンドの実行:"
_tr_add2 issues_no               "重要なシステムの問題は検出されませんでした。"

_tr_add2 cal_noavail            "利用できません: "        # installer program
_tr_add2 cal_warn               "警告"
_tr_add2 cal_info1              "これはコミュニティが開発したリリースです。\n\n"     # specials needed!
_tr_add2 cal_info2              "<b>オフライン</b> 方式は、EndeavourOS をテーマにした Xfce デスクトップを提供します。\nインターネット接続は必要ありません。\n\n"
_tr_add2 cal_info3              "<b>オンライン</b> 方式では、バニラのテーマでデスクトップを選択できます。\nインターネット接続が必要です。\n\n"
_tr_add2 cal_info4              "注意: このリリースは進行中です。バグを報告して、安定させるためにご協力ください。\n"
_tr_add2 cal_choose             "インストールのやり方を選択"
_tr_add2 cal_method             "方式"
_tr_add2 cal_nosupport          "$PROGNAME: サポートされていないモードです: "
_tr_add2 cal_nofile             "$PROGNAME: 必要なファイルが存在しません: "
_tr_add2 cal_istarted           "インストールの開始"
_tr_add2 cal_istopped           "インストールの完了"

_tr_add2 tail_butt              "このウィンドウを閉じます"
_tr_add2 tail_buttip            "このウィンドウだけを閉じます"


_tr_add2 ins_text              "ディスクに EndeavourOS をインストール"
_tr_add2 ins_start             "インストーラーを起動"
_tr_add2 ins_starttip          "EndeavourOS インストーラーを起動します (メインのデスクトップから選択します)"   # changed 2023-Jan-12
_tr_add2 ins_up                "このアプリを更新 $_exclamation"
_tr_add2 ins_uptip             "このアプリを更新して再起動"
_tr_add2 ins_keys              "pacman のキーの初期化"
_tr_add2 ins_keystip           "pacman のキーを初期化します"
_tr_add2 ins_pm                "パーティション管理マネージャ"
_tr_add2 ins_pmtip             "Gparted アプリを使うと、ディスクのパーティションと構造を調査および管理できます"
_tr_add2 ins_rel               "最新のリリース情報"
_tr_add2 ins_reltip            "最新のリリースに関する詳細情報"
_tr_add2 ins_tips              "インストールのヒント"
_tr_add2 ins_tipstip           "インストールのヒント"
_tr_add2 ins_trouble           "トラブル解決"
_tr_add2 ins_troubletip        "システム復旧"

_tr_add2 after_install_us_from    "更新 "                            # AUR or upstream
_tr_add2 after_install_us_el      "管理者権限が必要です。"
_tr_add2 after_install_us_done    "更新完了。"
_tr_add2 after_install_us_fail    "更新に失敗しました $_exclamation"

# 2020-May-14:

_tr_add2 nb_tab_UsefulTips     "ヒント"
_tr_add2 useful_tips_text      "役立つヒント"

# 2020-May-16:

_tr_add2 butt_changelog        "変更ログ"
_tr_add2 butt_changelogtip     "Welcome の変更ログを表示します"

_tr_add2 after_install_themevan      "Xfce バニラテーマ"
_tr_add2 after_install_themevantip   "バニラの Xfce テーマを使います"

_tr_add2 after_install_themedef     "Xfce EndeavourOS デフォルトテーマ"
_tr_add2 after_install_themedeftip  "EndeavourOS のデフォルトの Xfce テーマを使います"

# 2020-Jun-28:
_tr_add2 after_install_pclean       "パッケージのクリーンアップ設定"
_tr_add2 after_install_pcleantip    "パッケージ キャッシュのクリーンアップ サービスを設定します"

# 2020-Jul-04:
_tr_add2 nb_tab_OwnCommands         "個人用コマンド"                   # modified 2020-Jul-08
_tr_add2 nb_tab_owncmds_text        "個人用に作成したコマンド"         # modified 2020-Jul-08

# 2020-Jul-08:
_tr_add2 nb_tab_owncmdstip          "個人用コマンドの追加に関するヘルプ"

_tr_add2 add_more_apps_akm          "カーネル管理マネージャ"
_tr_add2 add_more_apps_akmtip       "小さな Linux カーネル マネージャとソースの情報"

# 2020-Jul-15:
_tr_add2 butt_owncmds_help        "チュートリアル: 個人用コマンド"

# 2020-Aug-05:
_tr_add2 butt_owncmds_dnd         "個人用コマンド ドラッグ${_and}ドロップ"
_tr_add2 butt_owncmds_dnd_help    "新しいボタンのフィールド項目をドラッグする、ウィンドウを表示します"

# 2020-Sep-03:
_tr_add2 ins_reso                 "ディスプレイの解像度を変更"
_tr_add2 ins_resotip              "ディスプレイの解像度を今すぐ変更します"

# 2020-Sep-08:
_tr_add2 add_more_apps_arch          "すべての Arch パッケージをブラウザで閲覧"
_tr_add2 add_more_apps_aur           "すべての AUR パッケージをブラウザで閲覧"
_tr_add2 add_more_apps_done1_text    "推奨アプリは既にインストールされています $_exclamation"
_tr_add2 add_more_apps_done2_text    "またはすべての Arch および AUR パッケージをブラウザで閲覧"
_tr_add2 add_more_apps_done2_tip1    "インストールに、「pacman」または「AUR ヘルパー」を使います"
_tr_add2 add_more_apps_done2_tip2    "インストールに、「AUR ヘルパー」を使います"

# 2020-Sep-11:
_tr_add2 after_install_ew2        "EndeavourOS の壁紙の 1つを選択"   # was: "EndeavourOS wallpaper (choose)"
_tr_add2 after_install_ewtip2     "壁紙を選択します"                 # was: "Choose from EndeavourOS default wallpapers"

# 2020-Sep-15:
#    IMPORTANT NOTE:
#       - line 71:  changed text of 'after_install_ew'
#       - line 72:  changed text of 'after_install_ewtip'
#       - line 249: changed text of 'after_install_ew2'
#       - line 250: changed text of 'after_install_ewtip2'

# 2020-Oct-23:
_tr_add2 updt_update_check        "更新の確認"
_tr_add2 updt_searching           "検索中"
_tr_add2 updt_for_updates         "にて更新"
_tr_add2 updt_failure             "失敗 $_exclamation"
_tr_add2 updt_nothing_todo        "やることが何もありません"
_tr_add2 updt_press_enter         "ENTER を押してこのウィンドウを閉じます"

# 2020-Oct-24:
#    IMPORTANT NOTE:
#       - line 244: changed text of 'add_more_apps_done2_text'

# 2020-Dec-11:
_tr_add2 after_install_pacdiff_tip "pacnew、pacorig の管理 $_and pacdiff を使用した pacsave ファイル $_and"

# 2021-Apr-07:
_tr_add2 after_install_conf           "設定"                             # a starting verb on a sentence "Configure eos-update-notifier"
_tr_add2 after_install_more_wall      "EndeavourOS の壁紙をもっとダウンロード"
_tr_add2 after_install_more_wall_tip  "EndeavourOS の以前の壁紙とコミュニティの壁紙をダウンロードします"
_tr_add2 after_install_info           "情報"                           # last word on a sentence, means just any information

_tr_add2 butt_softnews                "ソフトウェアニュース"
_tr_add2 butt_softnews_tip            "EndeavourOS ソフトウェアに関する重要なお知らせ"

_tr_add2 install_community            "コミュニティ エディションをインストール"
_tr_add2 install_community_tip        "コミュニティ版コレクション (様々な WM)"    # changed 2021-Oct-23, 2023-Jan-12

# 2021-May-01
_tr_add2 ins_syslog                   "システムログを共有する方法"
_tr_add2 ins_syslogtip                "サポートが必要な場合にシステム ログを共有する方法について説明します"
_tr_add2 ins_logtool                  "トラブル解決用のログ"
_tr_add2 ins_logtooltip               "ヘルプを求めるときにトラブル解決用のログを選択、作成、共有します"

# 2021-May-20
_tr_add2 nb_tab_DailyAssistant       "補助"
_tr_add2 daily_assistant_text        "日常的に使える便利なツール"
_tr_add2 after_install_itab          "Welcome で最初に開くタブを選択"
_tr_add2 after_install_itab_tip      "Welcome の開始時に表示するタブを設定します"

# 2021-Jun-08
_tr_add2 daily_assist_apps           "アプリケーションのカテゴリ"
_tr_add2 daily_assist_apps_tip       "カテゴリ別に分類されたアプリケーション"

_tr_add2 after_install_vbox1         "VirtualBox  Guest ユーティリティを有効にする"
_tr_add2 after_install_vbox2         "VirtualBox Guest ユーティリティを有効にするには、「<b>AfterInstall</b>」タブを選択し、ボタンをクリックします "

# 2021-Jun-17
_tr_add2 after_install_r8168         "有線ネットワークの問題 $_question r8168 および r8169 ドライバーの切替え $_exclamation"    # changed 2021-Dec-14 !!
_tr_add2 after_install_r8168_tip     "r8168 ドライバーと r8169 ドライバーを切替えます (再起動が必要な場合があります)"           # changed 2021-Dec-14 !!

# 2021-Oct-08
_tr_add2 daily_assist_DEinfo         "情報"                                         # assume prefix "DE:", e.g.: "Xfce: information"
_tr_add2 daily_assist_DEinfo_tip     "このデスクトップ/ウィンドウ マネージャに関する詳細情報"  # assume prefix "DE:", e.g.: "Xfce: more information ..."

# 2022-Feb-16
_tr_add2 add_more_apps_qs            "インストールしたい人気のアプリを選択"                      # runs eos-quickstart
_tr_add2 add_more_apps_qstip         "人気のあるアプリを選択してインストール"

# 2022-Mar-21
_tr_add2 ins_blue_notes              "Bluetooth について"
_tr_add2 ins_blue_notes_tip          "Bluetooth の設定に関する注意事項"

# 2022-Mar-27
_tr_add2 after_install_fw            "ファイアウォールの情報"
_tr_add2 after_install_fwtip         "デフォルトのファイアウォールに関する情報"

# 2022-Mar-30
_tr_add2 ins_custom                  "インストール処理のカスタマイズ"
_tr_add2 ins_custom_tip              "インストール処理をカスタマイズする方法"

# 2022-Jul-15
_tr_add2 daily_assist_anews          "Arch の最新ニュース"
_tr_add2 daily_assist_anewstip       "Arch の最新ニュースをブラウザに表示"

# 2022-Sep-25
_tr_add2 nb_nofify_user1             "重要なお知らせがあります "
_tr_add2 nb_nofify_user2             "次のボタンをクリックしてください: "                        # Software News
_tr_add2 nb_nofify_user3             "（このウィンドウの左下にボタンはあります）"

# 2023-Feb-20
_tr_add2 ins_customized              "インストール カスタマイズ ファイルを取得します (上級者向け)"
_tr_add2 ins_cust_text               "カスタマイズした user_commands.bash に URL を指定します"
_tr_add2 ins_cust_text2              "取得したファイルで ~/user_commands.bash を置き換えます"
_tr_add2 ins_cust_text3              "これは、<b>online</b> 指定でインストールする場合に最も便利です"

# 2023-Mar-29
_tr_add2 ins_no_connection           "注: インターネット接続が利用できません。一部のボタンが非表示になっているか、機能しません。"

