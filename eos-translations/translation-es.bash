# Traducciones para la aplicación Welcome
#
# Nota : variables (como $PRETTY_PROGNAME abajo) pueden utilizarse si ya están definidos, ya sea
# - en el Welcome aplicación
# - globalmente
#
#
# Cualquier cadena debe ser definida como :
#
#    _tr_add <language> <placeholder> "string"
#          or
#    _tr_add2 <placeholder> "string"
#
# donde
#
#    _tr_add         Es una función bash que añade una "cadena" a la base de datos de palabras.
#    _tr_add2        Igual que _tr_add pero define el idioma usando la variable _tr_lang (abajo).
#    <language>      Un acrónimo para el idioma, por ejemplo "en" para el inglés (¡comprueba las variable LANG !).
#    <placeholder>   Un nombre predefinido que identifica el lugar en la aplicación de bienvenida donde se utiliza esta cadena.
#    "string"        La cadena traducida para la aplicación Welcome.

# Español :

### Primero algunas definiciones útiles :

_tr_lang=es            # variable de ayuda requerida para _tr_add2

# Ayuda con algunos caracteres especiales (HTML). Yad tiene problemas sin ellos :
_exclamation='&#33;'   # '!'
_and='&#38;'           # '&'
_question='&#63;'      # '?'

_exclamation_down='&#161;'   # '¡'
_question_down='&#191;'      # '¿'


###################### Ahora las cadenas reales a ser traducidas ######################
# func   <placeholder>            "string"

_tr_add2 welcome_disabled         "$PRETTY_PROGNAME La aplicación está desactivada. Para iniciarla de todas formas, usa la opción --enable."

_tr_add2 butt_later               "Hasta pronto"
_tr_add2 butt_latertip            "Mantener $PRETTY_PROGNAME activado"

_tr_add2 butt_noshow              "No mostrar más"
_tr_add2 butt_noshowtip           "Desactivar $PRETTY_PROGNAME"

_tr_add2 butt_help                "Ayuda"


_tr_add2 nb_tab_INSTALL           "INSTALAR"
_tr_add2 nb_tab_GeneralInfo       "Información General"
_tr_add2 nb_tab_AfterInstall      "Después Instalación"
_tr_add2 nb_tab_AddMoreApps       "Añadir Aplicaciones"


_tr_add2 after_install_text       "Tareas después de la instalación"

_tr_add2 after_install_um         "Actualizar Servidores"
_tr_add2 after_install_umtip      "Actualizar la lista de servidores antes de la actualización del sistema"

_tr_add2 after_install_us         "Actualizar Sistema"
_tr_add2 after_install_ustip      "Actualizar el software del sistema"

_tr_add2 after_install_dsi        "Detectar bug Sistema"
_tr_add2 after_install_dsitip     "Detectar cualquier problema potencial en los paquetes del sistema o en otro lugar"

_tr_add2 after_install_etl        "${_question_down}EndeavourOS más reciente$_question"
_tr_add2 after_install_etltip     "Mostrar qué hacer para que tu sistema llegue al último nivel de EndeavourOS"

_tr_add2 after_install_cdm        "Cambiar Gestor Pantalla"
_tr_add2 after_install_cdmtip     "Usar un gestor de pantalla diferente"

_tr_add2 after_install_ew         "Fondo de pantalla EOS"
_tr_add2 after_install_ewtip      "Cambiar el fondo de pantalla al que trae EndeavourOS por defecto"


_tr_add2 after_install_pm         "Gestor de Paquetes"
_tr_add2 after_install_pmtip      "Cómo manejar los paquetes con pacman"

_tr_add2 after_install_ay         "${_exclamation_down}AUR $_and yay$_exclamation"
_tr_add2 after_install_aytip      "Información de AUR y yay"

_tr_add2 after_install_hn         "Hardware y Red"
_tr_add2 after_install_hntip      "Ponga a funcionar su hardware"

_tr_add2 after_install_bt         "Bluetooth"
_tr_add2 after_install_bttip      "Consejo de bluetooth"

_tr_add2 after_install_nv         "${_exclamation_down}Usuarios NVIDIA$_exclamation"
_tr_add2 after_install_nvtip      "Utilice el instalador de NVIDIA"

_tr_add2 after_install_ft         "Consejos Foro"
_tr_add2 after_install_fttip      "${_exclamation_down}Ayúdanos a ayudarte$_exclamation"


_tr_add2 general_info_text        "${_exclamation_down}Encuentra tu camino en el sitio EndeavourOS$_exclamation"

_tr_add2 general_info_ws          "Sitio web"

_tr_add2 general_info_wi          "Wiki"
_tr_add2 general_info_witip       "Artículos destacados"

_tr_add2 general_info_ne          "Noticias"
_tr_add2 general_info_netip       "Noticias y artículos"

_tr_add2 general_info_fo          "Foro"
_tr_add2 general_info_fotip       "${_exclamation_down}Pregunte, comente y charle en nuestro amigable foro$_exclamation"

_tr_add2 general_info_do          "Donar"
_tr_add2 general_info_dotip       "Ayúdanos a mantener el EndeavourOS funcionando"

_tr_add2 general_info_ab          "Acerca de $PRETTY_PROGNAME"
_tr_add2 general_info_abtip       "Más información sobre esta aplicación"


_tr_add2 add_more_apps_text       "Instalar aplicaciones populares"

_tr_add2 add_more_apps_lotip      "Herramientas ofimáticas (libreoffice-fresh)"

_tr_add2 add_more_apps_ch         "Chromium"
_tr_add2 add_more_apps_chtip      "Navegador Web"

_tr_add2 add_more_apps_fw         "Firewall"
_tr_add2 add_more_apps_fwtip      "Gufw firewall"

_tr_add2 add_more_apps_bt         "Bluetooth (blueberry) Xfce"
_tr_add2 add_more_apps_bt_bm      "Bluetooth (blueman) Xfce"


####################### COSAS NUEVAS DESPUÉS DE ESTA LÍNEA  ######################

_tr_add2 settings_dis_contents    "Para ejecutar $PRETTY_PROGNAME de nuevo, inicia una terminal y ejecuta : $PROGNAME --enable"
_tr_add2 settings_dis_text        "Reactivación $PRETTY_PROGNAME :"
_tr_add2 settings_dis_title       "Cómo volver a reactivar $PRETTY_PROGNAME"
_tr_add2 settings_dis_butt        "Lo recuerdo"
_tr_add2 settings_dis_buttip      "Lo prometo"

_tr_add2 help_butt_title          "$PRETTY_PROGNAME Ayuda"
_tr_add2 help_butt_text           "Más información sobre la aplicación $PRETTY_PROGNAME"

_tr_add2 dm_title                 "Seleccione el Gestor de pantalla"
_tr_add2 dm_col_name1             "Seleccionado"
_tr_add2 dm_col_name2             "Nombre del gestor de pantalla"

_tr_add2 dm_reboot_required       "Es necesario reiniciar para que los cambios surtan efecto."
_tr_add2 dm_changed               "Gestor de pantalla cambiado a : "
_tr_add2 dm_failed                "El cambio de gestor de pantalla falló."
_tr_add2 dm_warning_title         "Alerta"

_tr_add2 install_installer        "Instalador"
_tr_add2 install_already          "Ya instalado"
_tr_add2 install_ing              "Instalando"
_tr_add2 install_done             "Terminado."

_tr_add2 sysup_no                 "No hay actualizaciones."
_tr_add2 sysup_check              "Buscando actualizaciones de software..."

_tr_add2 issues_title             "Detección de errores en los paquetes"
_tr_add2 issues_grub              "IMPORTANTE : será necesario volver a crear el menú de arranque manualmente."
_tr_add2 issues_run               "Comandos de ejecución :"
_tr_add2 issues_no                "No se detectaron problemas importantes del sistema."

_tr_add2 cal_noavail              "No está disponible : "        # programa de instalación
_tr_add2 cal_warn                 "Alerta"
_tr_add2 cal_info1                "Este es un lanzamiento de desarrollo comunitario.\n\n"                                   # specials needed !
_tr_add2 cal_info2                "<b>Offline</b> Este método te da el escritorio %%s.\nNo es necesario tener conexión a Internet.\n\n"
_tr_add2 cal_info3                "<b>Online</b> Este método te permite elegir tu escritorio.\nEs necesario tener conexión a Internet.\n\n"
_tr_add2 cal_info4                "Por favor tenga en cuenta: Este lanzamiento es un trabajo en progreso, por favor ayúdenos a estabilizarlo reportando errores.\n"
_tr_add2 cal_info5                "\nSe recomienda actualizar el sistema después de instalar.\n\n"
_tr_add2 cal_info6                "\nEl sistema queda actualizado después de instalar.\n\n"
_tr_add2 cal_choose               "Elija el método de instalación"
_tr_add2 cal_method               "Método"
_tr_add2 cal_nosupport            "$PROGNAME : modo no soportado : "
_tr_add2 cal_nofile               "$PROGNAME : el archivo requerido no existe : "
_tr_add2 cal_istarted             "La instalación comenzó"
_tr_add2 cal_istopped             "La instalación terminó"

_tr_add2 tail_butt                "Cerrar esta ventana"
_tr_add2 tail_buttip              "Cerrar sólo esta ventana"


_tr_add2 ins_text                 "Instalando EndeavourOS en el disco"
_tr_add2 ins_start                "Inicie el instalador"
_tr_add2 ins_starttip             "Inicie el instalador del EndeavourOS junto con una terminal de debug"
_tr_add2 ins_up                   "${_exclamation_down}Actualizar esta aplicación$_exclamation"
_tr_add2 ins_uptip                "Actualiza esta aplicación y reiniciarla"
_tr_add2 ins_keys                 "Iniciar las teclas del pacman"
_tr_add2 ins_keystip              "Iniciar las teclas del pacman"
_tr_add2 ins_pm                   "Gestor de particiones"
_tr_add2 ins_pmtip                "Gparted permite examinar y gestionar las particiones y la estructura del disco"
_tr_add2 ins_rel                  "Información sobre el último lanzamiento"
_tr_add2 ins_reltip               "Más información sobre el último lanzamiento"
_tr_add2 ins_tips                 "Consejos de instalación"
_tr_add2 ins_tipstip              "Consejos de instalación"
_tr_add2 ins_trouble              "Solución de problemas"
_tr_add2 ins_troubletip           "Recuperar el sistema"

_tr_add2 after_install_us_from    "Actualizar desde"                            # AUR o upstream
_tr_add2 after_install_us_el      "Se requieren privilegios elevados."
_tr_add2 after_install_us_done    "Actualización finalizada."
_tr_add2 after_install_us_fail    "${_exclamation_down}La actualización falló$_exclamation"

# 2020-May-14:

_tr_add2 nb_tab_UsefulTips     "Consejos"
_tr_add2 useful_tips_text      "Consejos útiles"

# 2020-May-16:

_tr_add2 butt_changelog        "Registro de cambios"
_tr_add2 butt_changelogtip     "Mostrar el registro de cambios de Welcome"

_tr_add2 after_install_themevan      "Tema sin personalización Xfce"
_tr_add2 after_install_themevantip   "Usar tema sin personalización Xfce"

_tr_add2 after_install_themedef     "Tema por defecto Xfce de EndeavourOS"
_tr_add2 after_install_themedeftip  "Usar tema por defecto Xfce de EndeavourOS"

# 2020-Jun-28:
_tr_add2 after_install_pclean       "Configuración de limpieza de los paquetes"
_tr_add2 after_install_pcleantip    "Configurar el servicio de limpieza de la caché de paquetes"

# 2020-Jul-04:
_tr_add2 nb_tab_OwnCommands         "Comandos personales"                   # modified 2020-Jul-08
_tr_add2 nb_tab_owncmds_text        "Comandos personalizados"               # modified 2020-Jul-08

# 2020-Jul-08:
_tr_add2 nb_tab_owncmdstip          "Ayuda para agregar comandos personales"

_tr_add2 add_more_apps_akm          "Gestor del kernel"
_tr_add2 add_more_apps_akmtip       "Un pequeño gestor del kernel de linux y una fuente de información"

# 2020-Jul-15:
_tr_add2 butt_owncmds_help        "Tutorial: Comandos personales"

# 2020-Aug-05:
_tr_add2 butt_owncmds_dnd         "Comandos personales drag${_and}drop"
_tr_add2 butt_owncmds_dnd_help    "Mostrar una ventana donde arrastrar los elementos del campo para los nuevos botones"

# 2020-Sep-03:
_tr_add2 ins_reso                 "Cambiar la resolución de la pantalla"
_tr_add2 ins_resotip              "Cambiar la resolución de la pantalla ahora"

# 2020-Sep-08:
_tr_add2 add_more_apps_arch          "Ver todos los paquetes de Arch"
_tr_add2 add_more_apps_aur           "Ver todos los paquetes de AUR"
_tr_add2 add_more_apps_done1_text    "${_exclamation_down}Aplicaciones sugeridas ya instaladas$_exclamation"
_tr_add2 add_more_apps_done2_text    "o ver todos los paquetes de Arch y AUR"
_tr_add2 add_more_apps_done2_tip1    "Para instalar, usa 'pacman' o 'yay'"
_tr_add2 add_more_apps_done2_tip2    "Para instalar, usa 'yay'"

# 2020-Sep-11:
_tr_add2 after_install_ew2        "Elija uno de los fondos de pantalla de EndeavourOS"   # was: "EndeavourOS wallpaper (choose)"
_tr_add2 after_install_ewtip2     "Selector de fondos de pantalla"                          # was: "Choose from EndeavourOS default wallpapers"

# 2020-Sep-15:
#    IMPORTANT NOTE:
#       - line 71:  changed text of 'after_install_ew'
#       - line 72:  changed text of 'after_install_ewtip'
#       - line 249: changed text of 'after_install_ew2'
#       - line 250: changed text of 'after_install_ewtip2'

# 2020-Oct-23:
_tr_add2 updt_update_check        "Comprobar actualizaciones"
_tr_add2 updt_searching           "buscando"
_tr_add2 updt_for_updates         "actualizaciones"
_tr_add2 updt_failure             "${_exclamation_down}falló$_exclamation"
_tr_add2 updt_nothing_todo        "no hay nada que hacer"
_tr_add2 updt_press_enter         "Pulse ENTER para cerrar esta ventana"

# 2020-Oct-24:
#    IMPORTANT NOTE:
#       - line 244: changed text of 'add_more_apps_done2_text'

# 2020-Dec-11:
_tr_add2 after_install_pacdiff_tip "Maneja los archivos pacnew, pacorig y pacsave con pacdiff y"

# 2021-Apr-07:
_tr_add2 after_install_conf           "Configurar"                             # a starting verb on a sentence "Configure eos-update-notifier"
_tr_add2 after_install_more_wall      "Descargar más fondos de pantalla de EndeavourOS"
_tr_add2 after_install_more_wall_tip  "Descargar fondos de pantalla de EndeavourOS anteriores y comunitarios"
_tr_add2 after_install_info           "información"                           # last word on a sentence, means just any information

_tr_add2 butt_softnews                "Noticias de Software"
_tr_add2 butt_softnews_tip            "Noticias importantes sobre software de EndeavourOS"

_tr_add2 install_community            "Instalar ediciones comunitarias"
_tr_add2 install_community_tip        "Colección de ediciones comunitarias (GVs principalmente)"    # changed 2021-Oct-23, 2023-Jan-12

# 2021-May-01
_tr_add2 ins_syslog                   "Como compartir logs del sistema"
_tr_add2 ins_syslogtip                "Explica cómo puedes compartir logs del sistema cuando necesitas ayuda"
_tr_add2 ins_logtool                  "Logs para solución de problemas"
_tr_add2 ins_logtooltip               "Seleccionar, crear y compartir logs para solución de problemas cuando pides ayuda"

# 2021-May-20
_tr_add2 nb_tab_DailyAssistant       "Asistente"
_tr_add2 daily_assistant_text        "Herramientas para tareas útiles y/o diarias"
_tr_add2 after_install_itab          "Seleccionar la pestaña inicial de Welcome"
_tr_add2 after_install_itab_tip      "Define la pestaña que Welcome muestra cuando se inicia"

# 2021-Jun-08
_tr_add2 daily_assist_apps           "Aplicaciones por categoría"
_tr_add2 daily_assist_apps_tip       "Aplicaciones ordenadas por categoría"

_tr_add2 after_install_vbox1         "Habilitar las utilidades de Invitado de VirtualBox"
_tr_add2 after_install_vbox2         "Para habilitar las utilidades de Invitado de VirtualBox, seleccione la pestaña <b>Después Instalación</b> y haga clic en el botón "

# 2021-Jun-17
_tr_add2 after_install_r8168         "${_question_down}Problemas con la red cableada$_question ${_exclamation_down}Cambia los controladores r8168 y r8169$_exclamation"    # changed 2021-Dec-14 !!
_tr_add2 after_install_r8168_tip     "Cambia entre los controladores r8168 y r8169 (puede requerir reiniciar)"           # changed 2021-Dec-14 !!

# 2021-Oct-08
_tr_add2 daily_assist_DEinfo         "información"                                         # assume prefix "DE:", e.g.: "Xfce: information"
_tr_add2 daily_assist_DEinfo_tip     "más información sobre este Gestor de Escritorio/Ventanas"  # assume prefix "DE:", e.g.: "Xfce: more information ..."

# 2022-Feb-16
_tr_add2 add_more_apps_qs            "Elegir aplicaciones populares para instalar"                      # runs eos-quickstart
_tr_add2 add_more_apps_qstip         "Elegir aplicaciones populares e instalarlas"

# 2022-Mar-21
_tr_add2 ins_blue_notes              "Notas del Bluetooth"
_tr_add2 ins_blue_notes_tip          "Notas sobre la configuración del Bluetooth"

# 2022-Mar-27
_tr_add2 after_install_fw            "Información del cortafuegos"
_tr_add2 after_install_fwtip         "Información sobre el cortafuegos predeterminado"

# 2022-Mar-30
_tr_add2 ins_custom                  "Personalizando el proceso de instalación"
_tr_add2 ins_custom_tip              "Cómo personalizar el proceso de instalación"

# 2022-Jul-15
_tr_add2 daily_assist_anews          "Últimas noticias de Arch"
_tr_add2 daily_assist_anewstip       "Muestra las últimas noticias de Arch en un navegador"

# 2022-Sep-25
_tr_add2 nb_nofify_user1             "Hay noticias importantes el"                        # one (or more) dates, e.g. 2023-Feb-18
_tr_add2 nb_nofify_user2             "Por favor haga clic en el botón"                                  # Software News
_tr_add2 nb_nofify_user3             "en la esquina inferior izquierda de esta ventana."

# 2023-Feb-20
_tr_add2 ins_customized              "Traer su archivo de personalización de instalación (avanzado)"
_tr_add2 ins_cust_text               "Indique la URL de su user_commands.bash personalizado"
_tr_add2 ins_cust_text2              "El archivo obtenido reemplazará a ~/user_commands.bash"
_tr_add2 ins_cust_text3              "Esto es más útil para la instalación <b>en línea</b>"

# 2023-Mar-29
_tr_add2 ins_no_connection           "Nota: conexión a Internet no disponible, algunos botones están ocultos o no funcionan."

# 2023-Aug-25
_tr_add2 ins_pmtip2                  "Gestor de particiones permite examinar y gestionar las particiones y la estructura del disco"

# 2023-Sep-16
_tr_add2 ins_arm_start             "Instalador de imagen ARM de EndeavourOS"
_tr_add2 ins_arm_starttip          "Comenzar a instalar la edición ARM de EndeavourOS"
