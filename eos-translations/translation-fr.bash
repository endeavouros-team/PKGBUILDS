# Traduction de l'application Welcome
#
# Note : variables (voir $PRETTY_PROGNAME ci-dessous) peuvent-être utilisées si elles sont déjà définies dans soit l'un soit l'autre
# - dans l'application Welcome
# - globalement
#
#
# Chaque chaîne de caractères doit-être définie ainsi :
#
#    _tr_add <language> <placeholder> "string"
#          ou bien
#    _tr_add2 <placeholder> "string"
#
# où
#
#    _tr_add         Une fonction bash ajoute une "chaîne" à la base de données des chaînes de caractères.
#    _tr_add2        Identique à _tr_add mais connaît la langue à partir de la variable _tr_lang (ci-dessous).
#    <language>      Un acronyme pour la langue, ex. "fr" pour le françcais (vérifiez la variable LANG !).
#    <placeholder>   Un nom prédéfini qui identifie l'endroit dans l'application Welcome où cette chaîne est utilisée.
#    "string"        La chaîne de caractère traduite pour l'application Welcome.

# Français :

### Premièrement quelques définitions utiles :

_tr_lang=fr            # variable d'aide requise pour _tr_add2

# Aide sur certains caractères spéciaux (HTML). Yad a des problèmes sans eux :
_exclamation='&#33;'   # '!'
_and='&#38;'           # '&'
_question='&#63;'      # '?'


###################### MAINTENANT, LES CHAÎNES DE CARACTÈRES À TRADUIRE ######################
# func   <placeholder>           "string"

_tr_add2 welcome_disabled        "$PRETTY_PROGNAME l'application est désactivée. Pour la démarrer, utilisez l'option --enable. (Temporairement : --once)"

_tr_add2 butt_later              "À plus tard"
_tr_add2 butt_latertip           "Conserver $PRETTY_PROGNAME activé"

_tr_add2 butt_noshow             "Ne plus me voir"
_tr_add2 butt_noshowtip          "Désactiver $PRETTY_PROGNAME"

_tr_add2 butt_help               "Aide"


_tr_add2 nb_tab_INSTALL          "INSTALLER"
_tr_add2 nb_tab_GeneralInfo      "Info Générale"
_tr_add2 nb_tab_AfterInstall     "Post-Installation"
_tr_add2 nb_tab_AddMoreApps      "Ajout Applications"


_tr_add2 after_install_text      "Tâches Post-Installation"

_tr_add2 after_install_um        "Mise à jour Miroirs"
_tr_add2 after_install_umtip     "Mise à jour de la liste des miroirs avant celle du système"

_tr_add2 after_install_us        "Mise à jour Système"
_tr_add2 after_install_ustip     "Mise à jour des logiciels du système"

_tr_add2 after_install_dsi       "Détecter bugs Système"
_tr_add2 after_install_dsitip    "Détecter tout problème potentiel sur les paquets du système ou ailleurs"

_tr_add2 after_install_etl       "EndeavourOS à jour $_question"
_tr_add2 after_install_etltip    "Montrez ce qu'il faut faire pour que votre système atteigne le dernier niveau d'EndeavourOS"

_tr_add2 after_install_cdm       "Gestionnaire Sessions"
_tr_add2 after_install_cdmtip    "Utiliser un gestionnaire de session graphique différent"

_tr_add2 after_install_ew        "Fond d'écran EOS par défaut"
_tr_add2 after_install_ewtip     "Remplacer le fond d'écran du bureau par celui d'EndeavourOS par défaut"


_tr_add2 after_install_pm        "Gestion Paquets"
_tr_add2 after_install_pmtip     "Comment gérer les paquets avec pacman"

_tr_add2 after_install_ay        "AUR $_and yay $_exclamation"
_tr_add2 after_install_aytip     "Dépôts Utilisateur Arch et yay info"

_tr_add2 after_install_hn        "Matériel et Réseau"
_tr_add2 after_install_hntip     "Faites fonctionner votre matériel"

_tr_add2 after_install_bt        "Bluetooth"
_tr_add2 after_install_bttip     "Conseils pour le Bluetooth"

_tr_add2 after_install_nv        "Utilisateurs NVIDIA $_exclamation"
_tr_add2 after_install_nvtip     "Utiliser le gestionnaire d'installation NVIDIA"

_tr_add2 after_install_ft        "Forum"
_tr_add2 after_install_fttip     "Aidez-nous à vous aider$_exclamation"


_tr_add2 general_info_text       "Suivez votre guide sur le site EndeavourOS $_exclamation"

_tr_add2 general_info_ws         "Site internet"

_tr_add2 general_info_wi         "Wiki"
_tr_add2 general_info_witip      "Articles en vedette"

_tr_add2 general_info_ne         "Actualités"
_tr_add2 general_info_netip      "Actualités et articles"

_tr_add2 general_info_fo         "Forum"
_tr_add2 general_info_fotip      "Demandez, commentez et discutez sur notre forum convivial $_exclamation"

_tr_add2 general_info_do         "Faire un don"
_tr_add2 general_info_dotip      "Aidez-nous à maintenir le fonctionnement d'EndeavourOS"

_tr_add2 general_info_ab         "À propos de"
_tr_add2 general_info_abtip      "Plus d'info au sujet de cette application"


_tr_add2 add_more_apps_text      "Installer des applications populaires"

_tr_add2 add_more_apps_lotip     "Suite bureautique (libreoffice-fresh)"

_tr_add2 add_more_apps_ch        "Chromium"
_tr_add2 add_more_apps_chtip     "Navigateur web"

_tr_add2 add_more_apps_fw        "Pare-feu"
_tr_add2 add_more_apps_fwtip     "Pare-feu Gufw"

_tr_add2 add_more_apps_bt        "Bluetooth (blueberry) Xfce"
_tr_add2 add_more_apps_bt_bm     "Bluetooth (blueman) Xfce"


####################### NOUVELLES CHOSES APRÈS CETTE LIGNE ######################

_tr_add2 settings_dis_contents   "Pour lancer $PRETTY_PROGNAME à nouveau, démarrer le terminal et lancer :\n<tt>   $PROGNAME --enable</tt>\nor\n<tt>   $PROGNAME --once</tt>\n "
_tr_add2 settings_dis_text       "Réactivation $PRETTY_PROGNAME :"
_tr_add2 settings_dis_title      "Comment réactiver $PRETTY_PROGNAME"
_tr_add2 settings_dis_butt       "Je me souviens"
_tr_add2 settings_dis_buttip     "Je promets"

_tr_add2 help_butt_title         "$PRETTY_PROGNAME Aide"
_tr_add2 help_butt_text          "Plus d'info à propos de l'application $PRETTY_PROGNAME"

_tr_add2 dm_title                "Sélection gestionnaire de sessions"
_tr_add2 dm_col_name1            "Sélectionné"
_tr_add2 dm_col_name2            "Nom du DM"

_tr_add2 dm_reboot_required      "Un redémarrage est nécessaire pour que les changements prennent effet."
_tr_add2 dm_changed              "Le DM a été changé par : "
_tr_add2 dm_failed               "Échec du changement de DM."
_tr_add2 dm_warning_title        "Avertissement"

_tr_add2 install_installer       "Installeur"
_tr_add2 install_already         "Déjà installé"
_tr_add2 install_ing             "En train d'installer"
_tr_add2 install_done            "Terminé."

_tr_add2 sysup_no                "Pas de mise à jour."
_tr_add2 sysup_check             "Vérification des mises à jour des logiciels..."

_tr_add2 issues_title            "Détection des problèmes de paquets"
_tr_add2 issues_grub             "IMPORTANT : recréer manuellement le menu de démarrage sera nécessaire."
_tr_add2 issues_run              "Exécution des commandes :"
_tr_add2 issues_no               "Aucun problème important n'a été détecté dans le système."

_tr_add2 cal_noavail             "Non disponible : "	# programme d'installation
_tr_add2 cal_warn                "Avertissement"
_tr_add2 cal_info1               "C'est une version de développement communautaire.\n\n"	# besoins spéciaux !
_tr_add2 cal_info2               "<b>Offline</b> ce mode vous donne un bureau Xfce avec le thème EndeavourOS.\nUne connexion Internet n'est pas nécessaire.\n\n"
_tr_add2 cal_info3               "<b>Online</b> ce mode vous laisse choisir votre bureau, avec le thème d'origine (vanilla).\nUne connexion Internet est requise.\n\n"
_tr_add2 cal_info4               "Veuillez noter : Cette version est un travail en cours, veuillez nous aider à la rendre stable en signalant les bogues.\n"
_tr_add2 cal_choose              "Choisir le mode d'installation"
_tr_add2 cal_method              "Mode"
_tr_add2 cal_nosupport           "$PROGNAME : mode non supporté : "
_tr_add2 cal_nofile              "$PROGNAME : le fichier requis n'existe pas : "
_tr_add2 cal_istarted            "Installation en cours"
_tr_add2 cal_istopped            "Installation terminée"

_tr_add2 tail_butt               "Fermer cette fenêtre"
_tr_add2 tail_buttip             "Ne fermer que cette fenêtre"


_tr_add2 ins_text                "Installation d'EndeavourOS sur le disque"
_tr_add2 ins_start               "Démarrer l'installateur"
_tr_add2 ins_starttip            "Démarrez l'installateur EndeavourOS avec un terminal de débogage"
_tr_add2 ins_up                  "Mettre à jour cette application $_exclamation"
_tr_add2 ins_uptip               "Mise à jour et redémarrage de cette application"
_tr_add2 ins_keys                "Initialiser les clés pacman"
_tr_add2 ins_keystip             "Initialiser les clés pacman"
_tr_add2 ins_pm                  "Gestionnaire de Partitions"
_tr_add2 ins_pmtip               "Gparted examine et gère les partitions et la structure des disques"
_tr_add2 ins_rel                 "Info sur la dernière version"
_tr_add2 ins_reltip              "Plus d'info à propos de la dernière version"
_tr_add2 ins_tips                "Conseils d'installation"
_tr_add2 ins_tipstip             "Conseils d'installation"
_tr_add2 ins_trouble             "Dépannage"
_tr_add2 ins_troubletip          "Sauvetage du système"

_tr_add2 after_install_us_from   "Mises à jour de"	# AUR ou en amont
_tr_add2 after_install_us_el     "Privilèges élevés requis."
_tr_add2 after_install_us_done   "Mise à jour effectuée."
_tr_add2 after_install_us_fail   "La mise à jour a échoué $_exclamation"

# 14-mai-2020 :

_tr_add2 nb_tab_UsefulTips     "Astuces"
_tr_add2 useful_tips_text      "Astuces utiles"

# 16-mai-2020 :

_tr_add2 butt_changelog        "Changements"
_tr_add2 butt_changelogtip     "Affiche les changements de l'application Welcome"

_tr_add2 after_install_themevan      "Thème original Xfce"
_tr_add2 after_install_themevantip   "Utiliser le thème original de Xfce"

_tr_add2 after_install_themedef     "Thème EOS Xfce"
_tr_add2 after_install_themedeftip  "Utiliser le thème d'EndeavourOS pour Xfce"

# 28-juin-2020:
_tr_add2 after_install_pclean       "Configuration nettoyage paquets"
_tr_add2 after_install_pcleantip    "Configure le service de nettoyage du cache des paquets"

# 04-juillet-2020:
_tr_add2 nb_tab_OwnCommands         "Commandes personnelles"
_tr_add2 nb_tab_owncmds_text        "Commandes personnelles ajoutées"

# 08-juillet-2020:
_tr_add2 nb_tab_owncmdstip          "Aide pour l'ajout de commandes personnelles"

_tr_add2 add_more_apps_akm          "Gestionnaire noyaux"
_tr_add2 add_more_apps_akmtip       "Un petit gestionnaire de noyaux linux et une source d'informations"

# 15-juillet-2020:
_tr_add2 butt_owncmds_help        "Tutoriel : Commandes personnelles"

# 05-août-2020:
_tr_add2 butt_owncmds_dnd         "Commandes personnelles tirer${_and}glisser"
_tr_add2 butt_owncmds_dnd_help    "Montre une fenêtre où déposer les items pour les nouveaux boutons"

# 03-septembre-2020:
_tr_add2 ins_reso                 "Changer résolution affichage"
_tr_add2 ins_resotip              "Changer la résolution d'affichage maintenant"

# 08-septembre-2020:
_tr_add2 add_more_apps_arch          "Parcourir paquets Arch"
_tr_add2 add_more_apps_aur           "Parcourir tous les paquets AUR"
_tr_add2 add_more_apps_done1_text    "Suggestions d'applications déjà installées$_exclamation"
_tr_add2 add_more_apps_done2_text    "ou parcourir tous les paquets d'Arch et d'AUR"
_tr_add2 add_more_apps_done2_tip1    "Pour l'installation, utilisez 'pacman' ou 'yay'"
_tr_add2 add_more_apps_done2_tip2    "Pour l'installation, utilisez 'yay'"

# 11-septembre-2020:
_tr_add2 after_install_ew2      "Choisir un des fonds d'écran EOS"
_tr_add2 after_install_ewtip2   "Choisir parmi les fonds d'écran d'EndeavourOS"

# 2020-Sep-15:
#    IMPORTANT NOTE:
#       - line 71:  changed text of 'after_install_ew'
#       - line 72:  changed text of 'after_install_ewtip'
#       - line 249: changed text of 'after_install_ew2'
#       - line 250: changed text of 'after_install_ewtip2'

# 23-octobre-2020:
_tr_add2 updt_update_check        "vérification de la mise à jour"
_tr_add2 updt_searching           "En train de rechercher"
_tr_add2 updt_for_updates         "pour les mises à jour"
_tr_add2 updt_failure             "échec$_exclamation"
_tr_add2 updt_nothing_todo        "il n'y a rien à faire"
_tr_add2 updt_press_enter         "Presser ENTRÉE pour fermer cette fenêtre"

# 24-octobre-2020:
#    IMPORTANT NOTE:
#       - line 244: changed text of 'add_more_apps_done2_text'

# 11-décembre-2020:
_tr_add2 after_install_pacdiff_tip "Gère les fichier pacnew, pacorig $_and pacsave avec pacdiff $_and"

# 07-avril-2021:
_tr_add2 after_install_conf           "Configurer"                             # a starting verb on a sentence "Configure eos-update-notifier"
_tr_add2 after_install_more_wall      "Télécharger plus de fonds d'écran d'EndeavourOS"
_tr_add2 after_install_more_wall_tip  "Télécharger les anciens fonds d'écrans d'EndeavourOS et ceux de la communauté"
_tr_add2 after_install_info           "information"                           # last word on a sentence, means just any information

_tr_add2 butt_softnews                "Nouvelles des logiciels"
_tr_add2 butt_softnews_tip            "Nouvelles importantes sur les logiciels d'EndeavourOS"

_tr_add2 install_community            "Installer édition communautaire"
_tr_add2 install_community_tip        "Collection des éditions communautaire (note: connexion internet requise) : " # changé le 23-Oct-2021

# 1er-mai-2021
_tr_add2 ins_syslog                   "Partager les logs système"
_tr_add2 ins_syslogtip                "Explique comment vous pouvez partager les logs systèmes quand vous avez besoin d'aide"
_tr_add2 ins_logtool                  "Logs pour le dépannage"
_tr_add2 ins_logtooltip               "Sélectionne, crée et partage les logs de dépannage quand vous demandez de l'aide"

# 20-mai-2021
_tr_add2 nb_tab_DailyAssistant       "Assistant"
_tr_add2 daily_assistant_text        "Outils pour les tâches utiles et/ou quotidienne"
_tr_add2 after_install_itab          "Selection onglet initial Welcome"
_tr_add2 after_install_itab_tip      "Définit l'onglet que Welcome affiche au démarrage"

# 08-juin-2021
_tr_add2 daily_assist_apps           "Catégories d'applications"
_tr_add2 daily_assist_apps_tip       "Applications triées par categorie"

_tr_add2 after_install_vbox1         "Activer outils invités VirtualBox"
_tr_add2 after_install_vbox2         "Pour activer les outils invités de VirtualBox, selectionner l'onglet <b>Post-Installation</b> et cliquer sur le bouton"

# 17-juin-2021 / 14-déc-2021
_tr_add2 after_install_r8168         "Réseau filaire issue$_question  Basculer pilote r8168 et r8169 $_exclamation"
_tr_add2 after_install_r8168_tip     "Basculer entre les pilotes r8168 et r8169 (puis redémarrer)"

# 08-octobre-2021
_tr_add2 daily_assist_DEinfo         "Information"                                         # assume prefix "DE:", e.g.: "Xfce: information"
_tr_add2 daily_assist_DEinfo_tip     "Plus d'informations sur cet environnement de bureau/gestionnaire de fen"  # assume prefix "DE:", e.g.: "Xfce: more information ..."

# 16-fevrier-2022
_tr_add2 add_more_apps_qs            "Choisir applications populaires à installer"                      # runs eos-quickstart
_tr_add2 add_more_apps_qstip         "Choisissez des applications populaires et installez-les"

# 21-mars-2022
_tr_add2 ins_blue_notes              "Notes sur le Bluetooth"
_tr_add2 ins_blue_notes_tip          "Notes sur la configuration du Bluetooth"

# 27-mars-2022
_tr_add2 after_install_fw            "Infos sur le pare-feu"
_tr_add2 after_install_fwtip         "Infos sur le pare-feu par défaut"

# 30-mars-2022
_tr_add2 ins_custom                  "Personnaliser le processus d'installation"
_tr_add2 ins_custom_tip              "Comment personnaliser le processus d'installation"

# 15-juillet-2022
_tr_add2 daily_assist_anews          "Dernières nouvelles Arch"
_tr_add2 daily_assist_anewstip       "Montre les dernières nouvelles d'Arch dans un navigateur"
