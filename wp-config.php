<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier contient les réglages de configuration suivants : réglages MySQL,
 * préfixe de table, clés secrètes, langue utilisée, et ABSPATH.
 * Vous pouvez en savoir plus à leur sujet en allant sur
 * {@link http://codex.wordpress.org/fr:Modifier_wp-config.php Modifier
 * wp-config.php}. C’est votre hébergeur qui doit vous donner vos
 * codes MySQL.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en "wp-config.php" et remplir les
 * valeurs.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define( 'DB_NAME', 'croque_ton_quartier' );

/** Utilisateur de la base de données MySQL. */
define( 'DB_USER', 'root' );

/** Mot de passe de la base de données MySQL. */
define( 'DB_PASSWORD', '' );

/** Adresse de l’hébergement MySQL. */
define( 'DB_HOST', 'localhost' );

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Type de collation de la base de données.
  * N’y touchez que si vous savez ce que vous faites.
  */
define('DB_COLLATE', '');

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clefs secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '+ H_6zY=sZ;MvmPS_%r:f.X|?s_}EiBH.V/34hePk[r$bJ+dSV|AH7um+PC~ QQi' );
define( 'SECURE_AUTH_KEY',  'o|Yh}v<jV=ct9DR5OGECw;JV(0hqAM-@T>hA9r2OxG[*]{VA)x56d~5:rLOtc,L3' );
define( 'LOGGED_IN_KEY',    'PamXguSDPjZB#sp+$h^om{@{6fUu@`@zJ/DnQW@pKT}+0R$Gj@)5c&y~YY3223Ds' );
define( 'NONCE_KEY',        '1W.sA7e~_rx0a6MEj=,Ux|mAGcY/F-VnUO;.(jn|395~K~.k+d2<u9G)z7F]KE-=' );
define( 'AUTH_SALT',        'Cm=K p3dJH,<HTserNBAp[_KE:P),tmUN7(>C7T.Nros|4,KW*$X7Ez8hnTBpg?~' );
define( 'SECURE_AUTH_SALT', 'Lk=5&ky,Dl6/0h#jNUr{mrs/A}7zw=GY%!>C?^,iUffz$hjeDWMS89>NkKC+_;jh' );
define( 'LOGGED_IN_SALT',   'iWLv-)vPI#V32P$2Z8C@$`76@E%~Yx|OhR*ME#$Ms&F6b5ZSCA@0UOxN<<A`lT_G' );
define( 'NONCE_SALT',       '$FM`*5hn@Cb:N*[`wpUl%}CnTX#n?0TIwJ|XJ#kufw;GCcG5@Ya<jp}yllogeM#=' );
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix = 'wp_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortemment recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* C’est tout, ne touchez pas à ce qui suit ! Bonne publication. */

/** Chemin absolu vers le dossier de WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');