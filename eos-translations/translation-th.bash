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

_tr_lang=th            # required helper variable for _tr_add2

# Help with some special characters (HTML). Yad has problems without them:
_exclamation='&#33;'   # '!'
_and='&#38;'           # '&'
_question='&#63;'      # '?'


###################### Now the actual strings to be translated: ######################
# func   <placeholder>         "string"

_tr_add2 welcome_disabled      "โปรแกรม $PRETTY_PROGNAME ถูกปิดใช้งาน. หากยืนยันที่จะเปิด ใช้ออปชัน --enable"

_tr_add2 butt_later            "แล้วเจอกันใหม่"
_tr_add2 butt_latertip         "ให้ $PRETTY_PROGNAME เปิดใช้งานต่อไป"

_tr_add2 butt_noshow           "ไม่ต้องแสดงอีก"
_tr_add2 butt_noshowtip        "ปิดให้งาน $PRETTY_PROGNAME"

_tr_add2 butt_help             "ช่วยเหลือ"


_tr_add2 nb_tab_INSTALL        "ติดตั้ง"
_tr_add2 nb_tab_GeneralInfo    "ข้อมูลทั่วไป"
_tr_add2 nb_tab_AfterInstall   "หลังการติดตั้ง"
_tr_add2 nb_tab_AddMoreApps    "ลงแอปเพิ่ม"


_tr_add2 after_install_text    "สิ้งที่ต้องทำหลังติดตั้ง"

_tr_add2 after_install_um      "อัพเดต mirror"
_tr_add2 after_install_umtip   "อัพเดตรายการ mirror ก่อนอัพเดตระบบ"

_tr_add2 after_install_us      "อัพเดตระบบ"
_tr_add2 after_install_ustip   "อัพเดตซอร์ฟแวร์และระบบปฏิบัติการ"

_tr_add2 after_install_dsi     "ตรวจสอบปัญหา"
_tr_add2 after_install_dsitip  "ตรวจหาสิ่งที่อาจเป็นปัญหาใน package ของระบบปฏิบัติการและในที่อื่น ๆ"

_tr_add2 after_install_etl     "EndeavourOS to latest$_question"
_tr_add2 after_install_etltip  "แสดงสิ่งที่ต้องทำเพื่อให้ระบบของคุณไปถึงระดับล่าสุดของ EndeavourOS"

_tr_add2 after_install_cdm     "เปลี่ยน display manager"
_tr_add2 after_install_cdmtip  "เปลี่ยนไปใช้ display mananer ตัวอื่น"

_tr_add2 after_install_ew      "ใช้ภาพพื้นหลังของ EndeavourOS"      # was: "EndeavourOS wallpaper"
_tr_add2 after_install_ewtip   "เปลี่ยนกลับไปใช้ภาพพื้นหลังเริ่มแรกของ EndeavourOS"     # was: "Change desktop wallpaper to EOS default"


_tr_add2 after_install_pm      "การจัดการแพ็คเกจ"
_tr_add2 after_install_pmtip   "เรียนรู้การจัดการแพ็คเกจด้วย pacman"

_tr_add2 after_install_ay      "AUR $_and yay$_exclamation"
_tr_add2 after_install_aytip   "เรียนรู้เกี่ยวกับ Arch User Repository และ yay"

_tr_add2 after_install_hn      "ฮาร์ดแวร์และเน็ตเวิร์ก"
_tr_add2 after_install_hntip   "มาทำให้ฮาร์ดแวร์ของคุณใช้งานกันเถอะ"

_tr_add2 after_install_bt      "บลูทูธ"
_tr_add2 after_install_bttip   "คำแนะนำเกี่ยวกับบลูทูธ"

_tr_add2 after_install_nv      "ถึงผู้ใช้ NVIDIA$_exclamation"
_tr_add2 after_install_nvtip   "การใช้ตัวติดตั้งไดร์ฟเวอร์ของ NVIDIA"

_tr_add2 after_install_ft      "ทิปการใช้ฟอรัม"
_tr_add2 after_install_fttip   "ให้พวกเราช่วยคุณนะ :)"


_tr_add2 general_info_text     "ไปที่เว็บของ EndeavourOS$_exclamation"

_tr_add2 general_info_ws       "เว็บไซต์"

_tr_add2 general_info_wi       "วิกิ"
_tr_add2 general_info_witip    "บทความที่ได้รับเลือก"

_tr_add2 general_info_ne       "ข่าวสาร"
_tr_add2 general_info_netip    "ข่าวสารและบทความต่าง ๆ"

_tr_add2 general_info_fo       "ฟอรัม"
_tr_add2 general_info_fotip    "สอบถาม คอมเมนต์ และพูดคุย"

_tr_add2 general_info_do       "บริจาค"
_tr_add2 general_info_dotip    "ช่วยให้พวกเราพัฒนา EndeavourOS ต่อไปได้"

_tr_add2 general_info_ab       "เกี่ยวกับ $PRETTY_PROGNAME"
_tr_add2 general_info_abtip    "ข้อมูลเพิ่มเติมเกี่ยวกับโปรแกรมนี้"


_tr_add2 add_more_apps_text    "ติดตั้งแอปที่เป็นที่นิยม"

_tr_add2 add_more_apps_lotip   "ชุดโปรแกรม office (libreoffice-fresh)"

_tr_add2 add_more_apps_ch      "เว็บเบราเซอร์ Chromium"
_tr_add2 add_more_apps_chtip   "เว็บเบราเซอร์"

_tr_add2 add_more_apps_fw      "ไฟร์วอลล์"
_tr_add2 add_more_apps_fwtip   "Gufw firewall"

_tr_add2 add_more_apps_bt      "แอปบลูทูธ (blueberry) สำหรับ Xfce"
_tr_add2 add_more_apps_bt_bm   "แอปบลูทูธ (blueman) สำหรับ Xfce"


####################### NEW STUFF AFTER THIS LINE:

_tr_add2 settings_dis_contents   "เพื่อรัน $PRETTY_PROGNAME อีกครั้ง รันคำสั่งนี้ในเทอร์มันัล: $PROGNAME --enable"
_tr_add2 settings_dis_text       "เปิดใช้งาน $PRETTY_PROGNAME อีกครั้ง:"
_tr_add2 settings_dis_title      "วิธีการเปิดใช้งาน $PRETTY_PROGNAME อีกครั้ง"
_tr_add2 settings_dis_butt       "ฉันจะจำ"
_tr_add2 settings_dis_buttip     "ฉันสัญญา"

_tr_add2 help_butt_title         "$PRETTY_PROGNAME - ช่วยเหลือ"
_tr_add2 help_butt_text          "ข้อมูลเพิ่มเติมเกี่ยวกับ $PRETTY_PROGNAME"

_tr_add2 dm_title                "เลือก Display Manager"
_tr_add2 dm_col_name1            "เลือก"
_tr_add2 dm_col_name2            "ชื่อ DM"

_tr_add2 dm_reboot_required      "จำเป็นต้องรีบูตเพื่อให้การตั้งค่าใหม่ใช้งานได้"
_tr_add2 dm_changed              "เปลี่ยน DM เป็น: "
_tr_add2 dm_failed               "การเปลี่ยน DM ล้มเหลว"
_tr_add2 dm_warning_title        "คำเตือน"

_tr_add2 install_installer       "ตัวติดตั้ง"
_tr_add2 install_already         "ติดตั้งไปแล้ว"
_tr_add2 install_ing             "กำลังติดตั้ง"
_tr_add2 install_done            "เสร็จแล้ว"

_tr_add2 sysup_no                "ไม่มีอัพเดต"
_tr_add2 sysup_check             "กำลังตรวจสอบการอัพเดต"

_tr_add2 issues_title            "พบปัญหาแพ็คเกจ"
_tr_add2 issues_grub             "สำคัญ: จำเป็นจะต้องสร้าง boot menu ใหม่เอง"
_tr_add2 issues_run              "กำลังรันคำสั่ง:"
_tr_add2 issues_no               "ไม่เจอปัญหาที่สำคัญเกี่ยวกับระบบ"

_tr_add2 cal_noavail            "ไม่พร้อม: "        # installer program
_tr_add2 cal_warn               "คำเตือน"
_tr_add2 cal_info1              "นี่คือเวอร์ชัน community development release.\n\n"                                   # specials needed!
_tr_add2 cal_info2              "วิธีการแบบ <b>Offline</b> จะติดตั้ง Xfce พร้อมด้วยธีมของ EndeavourOS\nไม่จำเป็นต้องมีการเชื่อมต่ออินเทอร์เน็ต\n\n"
_tr_add2 cal_info3              "วิธีการแบบ <b>Online</b> คุณสามารถเลือกลง desktop ต่าง ๆ ได้ พร้อมกับธีมดั่งเดิม\nจำเป็นต้องมีการเข้าถึงอินเทอร์เน็ต\n\n"
_tr_add2 cal_info4              "โปรดเข้าใจ: เวอร์ชันนี้ยังคงอยู่ระหว่างการพัฒนาและยังคงไม่เสถียร โปรดช่วยเราพัฒนาต่อโดยการรีพอร์ตบัค\n"
_tr_add2 cal_choose             "เลือกวิธีการติดตั้ง"
_tr_add2 cal_method             "วิธีการ"
_tr_add2 cal_nosupport          "$PROGNAME: โหมดที่ไม่รองรับ: "
_tr_add2 cal_nofile             "$PROGNAME: ไฟล์ที่จำเป็นไม่มีอยู่: "
_tr_add2 cal_istarted           "เริมการติดตั้ง"
_tr_add2 cal_istopped           "การติดตั้งเสร็จสิ้น"

_tr_add2 tail_butt              "เปิดหน้านี้"
_tr_add2 tail_buttip            "ปิดเฉพาะหน้านี้"


_tr_add2 ins_text              "กำลังติดตั้ง EndeavourOS ลงดิสก์"
_tr_add2 ins_start             "เปิดตัวติดตั้ง"
_tr_add2 ins_starttip          "เปิดตัวติดตั้ง พร้อมเทอร์มินัลสำหรับดีบัค"
_tr_add2 ins_up                "อัพเดตแอปนี้$_exclamation"
_tr_add2 ins_uptip             "อัพเดตโปรแกรมนี้แล้วรีสตาร์ท"
_tr_add2 ins_keys              "เริ่ม pacman keys"
_tr_add2 ins_keystip           "เริ่ม pacman keys"
_tr_add2 ins_pm                "ตัวจัดการพาร์ติชัน"
_tr_add2 ins_pmtip             "ตรวจสอบและจัดการพาร์ติชันและโครงสร้างด้วย Gparted"
_tr_add2 ins_rel               "ข้อมูลเวอร์ชันล่าสุด"
_tr_add2 ins_reltip            "ข้อมูลเพิ่มเติมเกี่ยวกับเวอร์ชันล่าสุด"
_tr_add2 ins_tips              "ทิปการติดตั้ง"
_tr_add2 ins_tipstip           "ทิปเกี่ยวกับการติดตั้ง"
_tr_add2 ins_trouble           "วิเคราะห์ปัญหา"
_tr_add2 ins_troubletip        "วิเคราะห์ปัญหาและกู้ระบบ"

_tr_add2 after_install_us_from    "อัพเดตจาก"                            # AUR or upstream
_tr_add2 after_install_us_el      "ต้องการ privileges ที่สูงกว่า"
_tr_add2 after_install_us_done    "อัพเดตเสร็จสิ้น"
_tr_add2 after_install_us_fail    "อัพเดตล้มเหลว"

# 2020-May-14:

_tr_add2 nb_tab_UsefulTips     "ทิป"
_tr_add2 useful_tips_text      "ทิปที่เป็นประโยชน์"

# 2020-May-16:

_tr_add2 butt_changelog        "Changelog"
_tr_add2 butt_changelogtip     "แสดงบันทึการเปลี่ยนแปลงของแอป Welcome"

_tr_add2 after_install_themevan      "ใช้ธีมดั่งเดิมของ Xfce"
_tr_add2 after_install_themevantip   "ใช้ธีมดั่งเดิมของ Xfce"

_tr_add2 after_install_themedef     "ใช้ธีม Xfce ของ EndeavourOS"
_tr_add2 after_install_themedeftip  "ใช้ธีม Xfce เริ่มต้นจาก EndeavourOS"

# 2020-Jun-28:
_tr_add2 after_install_pclean       "ตั้งค่าการ cleanup แพ็คเกจ"
_tr_add2 after_install_pcleantip    "ตั้งค่าการเซอร์วิสการ cleanup แคลชของแพ็คเกจ"

# 2020-Jul-04:
_tr_add2 nb_tab_OwnCommands         "คำสั่งส่วนบุคคล"                   # modified 2020-Jul-08
_tr_add2 nb_tab_owncmds_text        "คำสั่งที่คุณเขียนเอง"               # modified 2020-Jul-08

# 2020-Jul-08:
_tr_add2 nb_tab_owncmdstip          "ตัวช่วยในการเพิ่มคำสั่งส่วนบุคคล"

_tr_add2 add_more_apps_akm          "โปรแกรมจัดการเคอร์เนล"
_tr_add2 add_more_apps_akmtip       "โปรแกรมจัดการลินุกซ์เคอร์เนล"

# 2020-Jul-15:
_tr_add2 butt_owncmds_help        "สอน: สำสั่งส่วนบุคคล"

# 2020-Aug-05:
_tr_add2 butt_owncmds_dnd         "ลากและวางคำสั่งส่วนบุคคล"
_tr_add2 butt_owncmds_dnd_help    "แสดงหน้าต่างสำหรับลาก field item สำหรับปุ่มใหม่"

# 2020-Sep-03:
_tr_add2 ins_reso                 "เปลี่ยนความละเอียดหน้าจอ"
_tr_add2 ins_resotip              "เปลี่ยนความละเอียดของหน้าจอตอนนี้"

# 2020-Sep-08:
_tr_add2 add_more_apps_arch          "ดูแพ็คเกจของ Arch ทั้งหมด"
_tr_add2 add_more_apps_aur           "ดูแพ็คเกจของ AUR ทั้งหมด"
_tr_add2 add_more_apps_done1_text    "แอปที่แนะนำได้ถูกติดตั้งหมดแล้ว$_exclamation"
_tr_add2 add_more_apps_done2_text    "หรือลองค้นดูแพ็คเกจทั้งหมดของ Arch และ AUR"
_tr_add2 add_more_apps_done2_tip1    "ใช้ 'pacman' or 'yay' เพื่อติดตั้ง"
_tr_add2 add_more_apps_done2_tip2    "ใช้ 'yay' เพื่อติดตั้ง"

# 2020-Sep-11:
_tr_add2 after_install_ew2        "เลือกวอร์เปเปอร์ของ EndeavourOS"   # was: "EndeavourOS wallpaper (choose)"
_tr_add2 after_install_ewtip2     "โปรแกรมเลือกวอร์เปเปอร์"                          # was: "Choose from EndeavourOS default wallpapers"

# 2020-Sep-15:
#    IMPORTANT NOTE:
#       - line 71:  changed text of 'after_install_ew'
#       - line 72:  changed text of 'after_install_ewtip'
#       - line 249: changed text of 'after_install_ew2'
#       - line 250: changed text of 'after_install_ewtip2'

# 2020-Oct-23:
_tr_add2 updt_update_check        "ตรวจสอบการอัพเดต"
_tr_add2 updt_searching           "กำลังค้นหา"
_tr_add2 updt_for_updates         "การอัพเดต"
_tr_add2 updt_failure             "ล้มเหลว$_exclamation"
_tr_add2 updt_nothing_todo        "ไม่มีอะไรต้องทำ"
_tr_add2 updt_press_enter         "กด ENTER เพื่อปิดหน้าต่างนี้"

# 2020-Oct-24:
#    IMPORTANT NOTE:
#       - line 244: changed text of 'add_more_apps_done2_text'

# 2020-Dec-11:
_tr_add2 after_install_pacdiff_tip "จัดการ pacnew, pacorig $_and ไฟล์ pacsave ด้วย pacdiff $_and"