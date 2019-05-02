-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 02 Mai 2019 à 17:52
-- Version du serveur :  5.7.11
-- Version de PHP :  7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `croque_ton_quartier`
--

-- --------------------------------------------------------

--
-- Structure de la table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un commentateur WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-04-12 18:11:22', '2019-04-12 16:11:22', 'Bonjour, ceci est un commentaire.\nPour débuter avec la modération, la modification et la suppression de commentaires, veuillez visiter l’écran des Commentaires dans le Tableau de bord.\nLes avatars des personnes qui commentent arrivent depuis <a href="https://gravatar.com">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_mgmlp_folders`
--

CREATE TABLE `wp_mgmlp_folders` (
  `post_id` bigint(20) NOT NULL,
  `folder_id` bigint(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `wp_mgmlp_folders`
--

INSERT INTO `wp_mgmlp_folders` (`post_id`, `folder_id`) VALUES
(62, 0),
(63, 62),
(64, 63),
(19, 64),
(20, 64),
(21, 64),
(22, 64),
(23, 64),
(24, 64),
(25, 64),
(30, 64),
(31, 64),
(65, 62),
(66, 65),
(67, 65),
(68, 62),
(69, 68),
(70, 68),
(71, 68),
(72, 68),
(73, 62),
(74, 73),
(75, 73),
(76, 63);

-- --------------------------------------------------------

--
-- Structure de la table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wordpress/croque-ton-cartier', 'yes'),
(2, 'home', 'http://localhost/wordpress/croque-ton-cartier', 'yes'),
(3, 'blogname', 'Croque ton quartier', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'alexandredupont23@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '1', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '3', 'yes'),
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'G \\h i \\m\\i\\n', 'yes'),
(25, 'links_updated_date_format', 'j F Y G \\h i \\m\\i\\n', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:90:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=43&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:58:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:68:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:88:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:83:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:64:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:53:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$";s:91:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$";s:85:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1";s:77:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]";s:65:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]";s:72:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$";s:98:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]";s:61:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$";s:97:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]";s:47:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:57:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:77:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:72:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]";s:51:"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]";s:38:"([0-9]{4})/comment-page-([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&cpage=$matches[2]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:33:"classic-editor/classic-editor.php";i:1;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'croque-ton-quartier', 'yes'),
(41, 'stylesheet', 'croque-ton-quartier', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:3:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}i:3;a:4:{s:5:"title";s:12:"Plan du site";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:33:"classic-editor/classic-editor.php";a:2:{i:0;s:14:"Classic_Editor";i:1;s:9:"uninstall";}}', 'no'),
(82, 'timezone_string', 'America/New_York', 'yes'),
(84, 'page_on_front', '43', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:7:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:114:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}s:8:"customer";a:2:{s:4:"name";s:8:"Customer";s:12:"capabilities";a:1:{s:4:"read";b:1;}}s:12:"shop_manager";a:2:{s:4:"name";s:12:"Shop manager";s:12:"capabilities";a:92:{s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:4:"read";b:1;s:18:"read_private_pages";b:1;s:18:"read_private_posts";b:1;s:10:"edit_posts";b:1;s:10:"edit_pages";b:1;s:20:"edit_published_posts";b:1;s:20:"edit_published_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"edit_private_posts";b:1;s:17:"edit_others_posts";b:1;s:17:"edit_others_pages";b:1;s:13:"publish_posts";b:1;s:13:"publish_pages";b:1;s:12:"delete_posts";b:1;s:12:"delete_pages";b:1;s:20:"delete_private_pages";b:1;s:20:"delete_private_posts";b:1;s:22:"delete_published_pages";b:1;s:22:"delete_published_posts";b:1;s:19:"delete_others_posts";b:1;s:19:"delete_others_pages";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:17:"moderate_comments";b:1;s:12:"upload_files";b:1;s:6:"export";b:1;s:6:"import";b:1;s:10:"list_users";b:1;s:18:"edit_theme_options";b:1;s:18:"manage_woocommerce";b:1;s:24:"view_woocommerce_reports";b:1;s:12:"edit_product";b:1;s:12:"read_product";b:1;s:14:"delete_product";b:1;s:13:"edit_products";b:1;s:20:"edit_others_products";b:1;s:16:"publish_products";b:1;s:21:"read_private_products";b:1;s:15:"delete_products";b:1;s:23:"delete_private_products";b:1;s:25:"delete_published_products";b:1;s:22:"delete_others_products";b:1;s:21:"edit_private_products";b:1;s:23:"edit_published_products";b:1;s:20:"manage_product_terms";b:1;s:18:"edit_product_terms";b:1;s:20:"delete_product_terms";b:1;s:20:"assign_product_terms";b:1;s:15:"edit_shop_order";b:1;s:15:"read_shop_order";b:1;s:17:"delete_shop_order";b:1;s:16:"edit_shop_orders";b:1;s:23:"edit_others_shop_orders";b:1;s:19:"publish_shop_orders";b:1;s:24:"read_private_shop_orders";b:1;s:18:"delete_shop_orders";b:1;s:26:"delete_private_shop_orders";b:1;s:28:"delete_published_shop_orders";b:1;s:25:"delete_others_shop_orders";b:1;s:24:"edit_private_shop_orders";b:1;s:26:"edit_published_shop_orders";b:1;s:23:"manage_shop_order_terms";b:1;s:21:"edit_shop_order_terms";b:1;s:23:"delete_shop_order_terms";b:1;s:23:"assign_shop_order_terms";b:1;s:16:"edit_shop_coupon";b:1;s:16:"read_shop_coupon";b:1;s:18:"delete_shop_coupon";b:1;s:17:"edit_shop_coupons";b:1;s:24:"edit_others_shop_coupons";b:1;s:20:"publish_shop_coupons";b:1;s:25:"read_private_shop_coupons";b:1;s:19:"delete_shop_coupons";b:1;s:27:"delete_private_shop_coupons";b:1;s:29:"delete_published_shop_coupons";b:1;s:26:"delete_others_shop_coupons";b:1;s:25:"edit_private_shop_coupons";b:1;s:27:"edit_published_shop_coupons";b:1;s:24:"manage_shop_coupon_terms";b:1;s:22:"edit_shop_coupon_terms";b:1;s:24:"delete_shop_coupon_terms";b:1;s:24:"assign_shop_coupon_terms";b:1;}}}', 'yes'),
(95, 'fresh_site', '0', 'yes'),
(96, 'WPLANG', 'fr_FR', 'yes'),
(97, 'widget_search', 'a:3:{i:2;a:1:{s:5:"title";s:0:"";}i:3;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:8:{s:19:"wp_inactive_widgets";a:6:{i:0;s:10:"archives-2";i:1;s:6:"meta-2";i:2;s:8:"search-2";i:3;s:12:"categories-2";i:4;s:14:"recent-posts-2";i:5;s:17:"recent-comments-2";}s:9:"sidebar-1";a:0:{}s:8:"footer-1";a:1:{i:0;s:13:"media_image-2";}s:8:"footer-2";a:1:{i:0;s:13:"custom_html-4";}s:8:"footer-3";a:1:{i:0;s:10:"nav_menu-3";}s:8:"footer-4";a:1:{i:0;s:13:"custom_html-5";}s:8:"footer-5";a:1:{i:0;s:8:"search-3";}s:13:"array_version";i:3;}', 'yes'),
(103, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:2:{i:2;a:15:{s:13:"attachment_id";i:78;s:3:"url";s:69:"http://localhost/wordpress/wp-content/uploads/2019/04/logo-footer.png";s:5:"title";s:0:"";s:4:"size";s:4:"full";s:5:"width";i:194;s:6:"height";i:112;s:7:"caption";s:0:"";s:3:"alt";s:0:"";s:9:"link_type";s:6:"custom";s:8:"link_url";s:0:"";s:13:"image_classes";s:0:"";s:12:"link_classes";s:0:"";s:8:"link_rel";s:0:"";s:17:"link_target_blank";b:0;s:11:"image_title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(110, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(112, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:2:{s:12:"_multiwidget";i:1;i:3;a:2:{s:5:"title";s:12:"Plan du site";s:8:"nav_menu";i:2;}}', 'yes'),
(117, 'widget_custom_html', 'a:3:{i:4;a:2:{s:5:"title";s:12:"Coordonnées";s:7:"content";s:46:"123, rue de l\'assemblée\r\nG1X 4V9\r\nQuébec, QC";}i:5;a:2:{s:5:"title";s:12:"Nous joindre";s:7:"content";s:64:"Téléphone: 418.345.1234\r\nCourriel: croquetonquartier@gmail.com";}s:12:"_multiwidget";i:1;}', 'yes'),
(119, 'cron', 'a:11:{i:1556820708;a:1:{s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1556829092;a:1:{s:24:"woocommerce_cleanup_logs";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1556834400;a:1:{s:27:"woocommerce_scheduled_sales";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1556839892;a:1:{s:28:"woocommerce_cleanup_sessions";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1556856697;a:3:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1556899908;a:2:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1556899909;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1556904692;a:1:{s:33:"woocommerce_cleanup_personal_data";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1556904702;a:1:{s:30:"woocommerce_tracker_send_event";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1557187200;a:1:{s:25:"woocommerce_geoip_updater";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:7:"monthly";s:4:"args";a:0:{}s:8:"interval";i:2635200;}}}s:7:"version";i:2;}', 'yes'),
(144, 'can_compress_scripts', '1', 'no'),
(146, 'theme_mods_twentynineteen', 'a:3:{s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:3:{s:6:"menu-1";i:2;s:6:"footer";i:0;s:6:"social";i:0;}s:16:"sidebars_widgets";a:2:{s:4:"time";i:1556468168;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(316, '_site_transient_timeout_browser_183df7713c418778ae3b1715c697443c', '1556908296', 'no'),
(317, '_site_transient_browser_183df7713c418778ae3b1715c697443c', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"73.0.3683.103";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(318, '_site_transient_timeout_php_check_70b0f2e71e10d268b0bc7f081eb76a94', '1556908297', 'no'),
(319, '_site_transient_php_check_70b0f2e71e10d268b0bc7f081eb76a94', 'a:5:{s:19:"recommended_version";s:3:"7.3";s:15:"minimum_version";s:5:"5.2.4";s:12:"is_supported";b:1;s:9:"is_secure";b:1;s:13:"is_acceptable";b:1;}', 'no'),
(344, 'category_children', 'a:0:{}', 'yes'),
(350, '_site_transient_timeout_browser_127868b9556d0b73282ae4585eb3c66a', '1557072961', 'no'),
(351, '_site_transient_browser_127868b9556d0b73282ae4585eb3c66a', 'a:10:{s:4:"name";s:6:"Chrome";s:7:"version";s:13:"73.0.3683.103";s:8:"platform";s:7:"Windows";s:10:"update_url";s:29:"https://www.google.com/chrome";s:7:"img_src";s:43:"http://s.w.org/images/browsers/chrome.png?1";s:11:"img_src_ssl";s:44:"https://s.w.org/images/browsers/chrome.png?1";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(352, '_site_transient_timeout_php_check_baf661bc1e7958f3dc9ec8c07cccafb4', '1557072961', 'no'),
(353, '_site_transient_php_check_baf661bc1e7958f3dc9ec8c07cccafb4', 'a:5:{s:19:"recommended_version";s:3:"7.3";s:15:"minimum_version";s:5:"5.2.4";s:12:"is_supported";b:1;s:9:"is_secure";b:1;s:13:"is_acceptable";b:1;}', 'no'),
(367, 'current_theme', 'croque-ton-quartier', 'yes'),
(368, 'theme_mods_croque-ton-quartier', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:6:"menu-1";i:2;}s:18:"custom_css_post_id";i:-1;s:16:"header_textcolor";s:5:"blank";}', 'yes'),
(369, 'theme_switched', '', 'yes'),
(374, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(377, 'recently_activated', 'a:3:{s:27:"svg-support/svg-support.php";i:1556559044;s:48:"media-library-plus/maxgalleria-media-library.php";i:1556559036;s:32:"media-library-plus/mlp-reset.php";i:1556559017;}', 'yes'),
(386, 'woocommerce_store_address', '123, rue de l\'assemblée', 'yes'),
(387, 'woocommerce_store_address_2', '', 'yes'),
(388, 'woocommerce_store_city', 'Québec', 'yes'),
(389, 'woocommerce_default_country', 'CA:QC', 'yes'),
(390, 'woocommerce_store_postcode', 'G1X 4V9', 'yes'),
(391, 'woocommerce_allowed_countries', 'specific', 'yes'),
(392, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(393, 'woocommerce_specific_allowed_countries', 'a:1:{i:0;s:2:"CA";}', 'yes'),
(394, 'woocommerce_ship_to_countries', '', 'yes'),
(395, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(396, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(397, 'woocommerce_calc_taxes', 'yes', 'yes'),
(398, 'woocommerce_enable_coupons', 'yes', 'yes'),
(399, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(400, 'woocommerce_currency', 'CAD', 'yes'),
(401, 'woocommerce_currency_pos', 'left', 'yes'),
(402, 'woocommerce_price_thousand_sep', ',', 'yes'),
(403, 'woocommerce_price_decimal_sep', '.', 'yes'),
(404, 'woocommerce_price_num_decimals', '2', 'yes'),
(405, 'woocommerce_shop_page_id', '', 'yes'),
(406, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(407, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(408, 'woocommerce_placeholder_image', '77', 'yes'),
(409, 'woocommerce_weight_unit', 'kg', 'yes'),
(410, 'woocommerce_dimension_unit', 'cm', 'yes'),
(411, 'woocommerce_enable_reviews', 'yes', 'yes'),
(412, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(413, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(414, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(415, 'woocommerce_review_rating_required', 'yes', 'no'),
(416, 'woocommerce_manage_stock', 'yes', 'yes'),
(417, 'woocommerce_hold_stock_minutes', '60', 'no'),
(418, 'woocommerce_notify_low_stock', 'yes', 'no'),
(419, 'woocommerce_notify_no_stock', 'yes', 'no'),
(420, 'woocommerce_stock_email_recipient', 'alexandredupont23@gmail.com', 'no'),
(421, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(422, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(423, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(424, 'woocommerce_stock_format', '', 'yes'),
(425, 'woocommerce_file_download_method', 'force', 'no'),
(426, 'woocommerce_downloads_require_login', 'no', 'no'),
(427, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(428, 'woocommerce_prices_include_tax', 'no', 'yes'),
(429, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(430, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(431, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(432, 'woocommerce_tax_classes', 'Taux réduit\r\nTaux Zéro', 'yes'),
(433, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(434, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(435, 'woocommerce_price_display_suffix', '', 'yes'),
(436, 'woocommerce_tax_total_display', 'itemized', 'no'),
(437, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(438, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(439, 'woocommerce_ship_to_destination', 'billing', 'no'),
(440, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(441, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(442, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(443, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(444, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(445, 'woocommerce_registration_generate_username', 'yes', 'no'),
(446, 'woocommerce_registration_generate_password', 'yes', 'no'),
(447, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(448, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(449, 'woocommerce_registration_privacy_policy_text', 'Vos données personnelles seront utilisées pour vous accompagner au cours de votre visite du site web, gérer l’accès à votre compte, et pour d’autres raisons décrites dans notre [privacy_policy].', 'yes'),
(450, 'woocommerce_checkout_privacy_policy_text', 'Vos données personnelles seront utilisées pour le traitement de votre commande, vous accompagner au cours de votre visite du site web, et pour d’autres raisons décrites dans notre [privacy_policy].', 'yes'),
(451, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(452, 'woocommerce_trash_pending_orders', '', 'no'),
(453, 'woocommerce_trash_failed_orders', '', 'no'),
(454, 'woocommerce_trash_cancelled_orders', '', 'no'),
(455, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:"number";s:0:"";s:4:"unit";s:6:"months";}', 'no'),
(456, 'woocommerce_email_from_name', 'Croque ton quartier', 'no'),
(457, 'woocommerce_email_from_address', 'alexandredupont23@gmail.com', 'no'),
(458, 'woocommerce_email_header_image', '', 'no'),
(459, 'woocommerce_email_footer_text', '{site_title}<br/>Built with <a href="https://woocommerce.com/">WooCommerce</a>', 'no'),
(460, 'woocommerce_email_base_color', '#96588a', 'no'),
(461, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(462, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(463, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(464, 'woocommerce_cart_page_id', '', 'yes'),
(465, 'woocommerce_checkout_page_id', '', 'yes'),
(466, 'woocommerce_myaccount_page_id', '', 'yes'),
(467, 'woocommerce_terms_page_id', '', 'no'),
(468, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(469, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(470, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(471, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(472, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(473, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(474, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(475, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(476, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(477, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(478, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(479, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(480, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(481, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(482, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(483, 'woocommerce_api_enabled', 'no', 'yes'),
(484, 'woocommerce_single_image_width', '600', 'yes'),
(485, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(486, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(487, 'woocommerce_demo_store', 'no', 'no'),
(488, 'woocommerce_permalinks', 'a:5:{s:12:"product_base";s:7:"produit";s:13:"category_base";s:17:"categorie-produit";s:8:"tag_base";s:17:"etiquette-produit";s:14:"attribute_base";s:0:"";s:22:"use_verbose_page_rules";b:0;}', 'yes'),
(489, 'current_theme_supports_woocommerce', 'no', 'yes'),
(490, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(492, 'product_cat_children', 'a:0:{}', 'yes'),
(493, 'default_product_cat', '16', 'yes'),
(497, 'woocommerce_db_version', '3.5.7', 'yes'),
(498, 'woocommerce_admin_notices', 'a:3:{i:0;s:7:"install";i:1;s:6:"update";i:2;s:20:"no_secure_connection";}', 'yes'),
(499, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(500, 'widget_woocommerce_widget_cart', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(501, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(502, 'widget_woocommerce_layered_nav', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(503, 'widget_woocommerce_price_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(504, 'widget_woocommerce_product_categories', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(505, 'widget_woocommerce_product_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(506, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(507, 'widget_woocommerce_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(508, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(509, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(510, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(511, 'widget_woocommerce_rating_filter', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(514, '_transient_wc_count_comments', 'O:8:"stdClass":7:{s:14:"total_comments";i:0;s:3:"all";i:0;s:12:"post-trashed";s:1:"1";s:9:"moderated";i:0;s:8:"approved";i:0;s:4:"spam";i:0;s:5:"trash";i:0;}', 'yes'),
(515, '_transient_as_comment_count', 'O:8:"stdClass":7:{s:12:"post-trashed";s:1:"1";s:14:"total_comments";i:0;s:3:"all";i:0;s:9:"moderated";i:0;s:8:"approved";i:0;s:4:"spam";i:0;s:5:"trash";i:0;}', 'yes'),
(516, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(517, '_transient_timeout_external_ip_address_::1', '1557079388', 'no'),
(518, '_transient_external_ip_address_::1', '142.184.96.101', 'no'),
(526, '_transient_timeout_wc_low_stock_count', '1559066650', 'no'),
(527, '_transient_wc_low_stock_count', '0', 'no'),
(528, '_transient_timeout_wc_outofstock_count', '1559066650', 'no'),
(529, '_transient_wc_outofstock_count', '0', 'no'),
(530, 'new_admin_email', 'alexandredupont23@gmail.com', 'yes'),
(534, 'page_for_posts', '52', 'yes'),
(538, 'woocommerce_bacs_settings', 'a:11:{s:7:"enabled";s:3:"yes";s:5:"title";s:17:"Virement bancaire";s:11:"description";s:216:"Effectuez le paiement directement depuis votre compte bancaire. Veuillez utiliser l’ID de votre commande comme référence du paiement. Votre commande ne sera pas expédiée tant que les fonds ne seront pas reçus.";s:12:"instructions";s:0:"";s:15:"account_details";s:0:"";s:12:"account_name";s:0:"";s:14:"account_number";s:0:"";s:9:"sort_code";s:0:"";s:9:"bank_name";s:0:"";s:4:"iban";s:0:"";s:3:"bic";s:0:"";}', 'yes'),
(539, 'woocommerce_gateway_order', 'a:4:{s:4:"bacs";i:0;s:6:"cheque";i:1;s:3:"cod";i:2;s:6:"paypal";i:3;}', 'yes'),
(540, '_transient_shipping-transient-version', '1556474900', 'yes'),
(574, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(584, '_transient_timeout_wc_shipping_method_count_1_1556474900', '1559134011', 'no'),
(585, '_transient_wc_shipping_method_count_1_1556474900', '1', 'no'),
(671, 'bodhi_svgs_plugin_version', '2.3.15', 'yes'),
(677, 'mgmlp_sort_order', '0', 'yes'),
(678, 'mgmlp_move_or_copy', 'on', 'yes'),
(679, 'maxgalleria_media_library_version', '5.0.0', 'yes'),
(680, 'mgmlp_upload_folder_name', 'uploads', 'yes'),
(681, 'mgmlp_upload_folder_id', '62', 'yes'),
(682, 'mgmlp_src_fix', '1', 'yes'),
(689, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(692, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(693, 'woocommerce_allow_tracking', 'no', 'no'),
(694, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(697, 'woocommerce_version', '3.6.2', 'yes'),
(699, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(721, '_site_transient_timeout_browser_591a43aafb2c3e203f6b925e7cd15e92', '1557340296', 'no'),
(722, '_site_transient_browser_591a43aafb2c3e203f6b925e7cd15e92', 'a:10:{s:4:"name";s:7:"Firefox";s:7:"version";s:4:"65.0";s:8:"platform";s:7:"Windows";s:10:"update_url";s:24:"https://www.firefox.com/";s:7:"img_src";s:44:"http://s.w.org/images/browsers/firefox.png?1";s:11:"img_src_ssl";s:45:"https://s.w.org/images/browsers/firefox.png?1";s:15:"current_version";s:2:"56";s:7:"upgrade";b:0;s:8:"insecure";b:0;s:6:"mobile";b:0;}', 'no'),
(723, '_site_transient_timeout_php_check_03bc88feb8c0ce198a12645fce792b30', '1557340296', 'no'),
(724, '_site_transient_php_check_03bc88feb8c0ce198a12645fce792b30', 'a:5:{s:19:"recommended_version";s:3:"7.3";s:15:"minimum_version";s:5:"5.2.4";s:12:"is_supported";b:0;s:9:"is_secure";b:0;s:13:"is_acceptable";b:1;}', 'no'),
(725, '_transient_timeout_wc_report_sales_by_date', '1556821897', 'no'),
(726, '_transient_wc_report_sales_by_date', 'a:8:{s:32:"6817075eff71175189d9b2667222bc32";a:0:{}s:32:"e42d64b879ef92e8a1d9021f1655d4d5";a:0:{}s:32:"70f487bdefc1c0b185ea09e6d6932864";a:0:{}s:32:"5d8ff18fc70523399c1b1c23032986cf";N;s:32:"91b637675bf272715b6120169f03239d";a:0:{}s:32:"138d2b74f5139b415a9908d7c86c7d9a";a:0:{}s:32:"47b90aee337738433305ac31b7edc652";a:0:{}s:32:"33b20b86a6bd08b34ddf96ee9e153e9d";a:0:{}}', 'no'),
(727, '_transient_timeout_wc_admin_report', '1556821897', 'no'),
(728, '_transient_wc_admin_report', 'a:1:{s:32:"b024f16ed7a87c478c936f60938e2f65";a:0:{}}', 'no'),
(786, '_site_transient_timeout_theme_roots', '1556816904', 'no'),
(787, '_site_transient_theme_roots', 'a:1:{s:19:"croque-ton-quartier";s:7:"/themes";}', 'no'),
(789, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-5.1.1.zip";s:6:"locale";s:5:"fr_FR";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:65:"https://downloads.wordpress.org/release/fr_FR/wordpress-5.1.1.zip";s:10:"no_content";b:0;s:11:"new_bundled";b:0;s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"5.1.1";s:7:"version";s:5:"5.1.1";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"5.0";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1556815105;s:15:"version_checked";s:5:"5.1.1";s:12:"translations";a:0:{}}', 'no'),
(790, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1556815105;s:7:"checked";a:1:{s:19:"croque-ton-quartier";s:5:"1.0.0";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(791, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1556819325;s:7:"checked";a:6:{s:30:"advanced-custom-fields/acf.php";s:6:"5.7.12";s:33:"classic-editor/classic-editor.php";s:3:"1.4";s:25:"hero-state/hero-state.php";s:3:"1.0";s:47:"regenerate-thumbnails/regenerate-thumbnails.php";s:5:"3.1.0";s:21:"safe-svg/safe-svg.php";s:5:"1.9.4";s:21:"wp-reset/wp-reset.php";s:4:"1.60";}s:8:"response";a:0:{}s:12:"translations";a:1:{i:0;a:7:{s:4:"type";s:6:"plugin";s:4:"slug";s:21:"regenerate-thumbnails";s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"3.1.0";s:7:"updated";s:19:"2019-01-05 07:23:07";s:7:"package";s:88:"https://downloads.wordpress.org/translation/plugin/regenerate-thumbnails/3.1.0/fr_FR.zip";s:10:"autoupdate";b:1;}}s:9:"no_update";a:5:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":9:{s:2:"id";s:36:"w.org/plugins/advanced-custom-fields";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"5.7.12";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.7.12.zip";s:5:"icons";a:2:{s:2:"2x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746";s:2:"1x";s:75:"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746";}s:7:"banners";a:2:{s:2:"2x";s:78:"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099";s:2:"1x";s:77:"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102";}s:11:"banners_rtl";a:0:{}}s:33:"classic-editor/classic-editor.php";O:8:"stdClass":9:{s:2:"id";s:28:"w.org/plugins/classic-editor";s:4:"slug";s:14:"classic-editor";s:6:"plugin";s:33:"classic-editor/classic-editor.php";s:11:"new_version";s:3:"1.4";s:3:"url";s:45:"https://wordpress.org/plugins/classic-editor/";s:7:"package";s:61:"https://downloads.wordpress.org/plugin/classic-editor.1.4.zip";s:5:"icons";a:2:{s:2:"2x";s:67:"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671";s:2:"1x";s:67:"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671";}s:7:"banners";a:2:{s:2:"2x";s:70:"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671";s:2:"1x";s:69:"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676";}s:11:"banners_rtl";a:0:{}}s:47:"regenerate-thumbnails/regenerate-thumbnails.php";O:8:"stdClass":9:{s:2:"id";s:35:"w.org/plugins/regenerate-thumbnails";s:4:"slug";s:21:"regenerate-thumbnails";s:6:"plugin";s:47:"regenerate-thumbnails/regenerate-thumbnails.php";s:11:"new_version";s:5:"3.1.0";s:3:"url";s:52:"https://wordpress.org/plugins/regenerate-thumbnails/";s:7:"package";s:64:"https://downloads.wordpress.org/plugin/regenerate-thumbnails.zip";s:5:"icons";a:1:{s:2:"1x";s:74:"https://ps.w.org/regenerate-thumbnails/assets/icon-128x128.png?rev=1753390";}s:7:"banners";a:2:{s:2:"2x";s:77:"https://ps.w.org/regenerate-thumbnails/assets/banner-1544x500.jpg?rev=1753390";s:2:"1x";s:76:"https://ps.w.org/regenerate-thumbnails/assets/banner-772x250.jpg?rev=1753390";}s:11:"banners_rtl";a:0:{}}s:21:"safe-svg/safe-svg.php";O:8:"stdClass":9:{s:2:"id";s:22:"w.org/plugins/safe-svg";s:4:"slug";s:8:"safe-svg";s:6:"plugin";s:21:"safe-svg/safe-svg.php";s:11:"new_version";s:5:"1.9.4";s:3:"url";s:39:"https://wordpress.org/plugins/safe-svg/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/safe-svg.1.9.4.zip";s:5:"icons";a:3:{s:2:"2x";s:61:"https://ps.w.org/safe-svg/assets/icon-256x256.png?rev=1706191";s:2:"1x";s:53:"https://ps.w.org/safe-svg/assets/icon.svg?rev=1706191";s:3:"svg";s:53:"https://ps.w.org/safe-svg/assets/icon.svg?rev=1706191";}s:7:"banners";a:2:{s:2:"2x";s:64:"https://ps.w.org/safe-svg/assets/banner-1544x500.png?rev=1706191";s:2:"1x";s:63:"https://ps.w.org/safe-svg/assets/banner-772x250.png?rev=1706191";}s:11:"banners_rtl";a:0:{}}s:21:"wp-reset/wp-reset.php";O:8:"stdClass":9:{s:2:"id";s:22:"w.org/plugins/wp-reset";s:4:"slug";s:8:"wp-reset";s:6:"plugin";s:21:"wp-reset/wp-reset.php";s:11:"new_version";s:4:"1.60";s:3:"url";s:39:"https://wordpress.org/plugins/wp-reset/";s:7:"package";s:56:"https://downloads.wordpress.org/plugin/wp-reset.1.60.zip";s:5:"icons";a:2:{s:2:"2x";s:61:"https://ps.w.org/wp-reset/assets/icon-256x256.png?rev=1906468";s:2:"1x";s:61:"https://ps.w.org/wp-reset/assets/icon-128x128.png?rev=1906468";}s:7:"banners";a:2:{s:2:"2x";s:64:"https://ps.w.org/wp-reset/assets/banner-1544x500.png?rev=1904477";s:2:"1x";s:63:"https://ps.w.org/wp-reset/assets/banner-772x250.png?rev=1904477";}s:11:"banners_rtl";a:0:{}}}}', 'no'),
(794, '_site_transient_timeout_available_translations', '1556830116', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(795, '_site_transient_available_translations', 'a:116:{s:2:"af";a:8:{s:8:"language";s:2:"af";s:7:"version";s:5:"5.0.3";s:7:"updated";s:19:"2019-01-08 06:00:48";s:12:"english_name";s:9:"Afrikaans";s:11:"native_name";s:9:"Afrikaans";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.0.3/af.zip";s:3:"iso";a:2:{i:1;s:2:"af";i:2;s:3:"afr";}s:7:"strings";a:1:{s:8:"continue";s:10:"Gaan voort";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-04-26 04:17:36";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.1.1/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.7.7";s:7:"updated";s:19:"2017-01-26 15:42:35";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"as";a:8:{s:8:"language";s:2:"as";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-22 18:59:07";s:12:"english_name";s:8:"Assamese";s:11:"native_name";s:21:"অসমীয়া";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/as.zip";s:3:"iso";a:3:{i:1;s:2:"as";i:2;s:3:"asm";i:3;s:3:"asm";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-06 00:09:27";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-12 20:34:31";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:3:"bel";a:8:{s:8:"language";s:3:"bel";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-04 08:43:29";s:12:"english_name";s:10:"Belarusian";s:11:"native_name";s:29:"Беларуская мова";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.9.5/bel.zip";s:3:"iso";a:2:{i:1;s:2:"be";i:2;s:3:"bel";}s:7:"strings";a:1:{s:8:"continue";s:20:"Працягнуць";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:3:"5.0";s:7:"updated";s:19:"2018-12-11 16:43:39";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.0/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.8.6";s:7:"updated";s:19:"2017-10-01 12:57:10";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.8.6/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-04-11 03:10:08";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.1.1/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-04 20:20:28";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-03-08 04:42:01";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.1.1/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-02 17:25:51";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-04-12 15:56:52";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:9:"Čeština";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-03-08 13:44:30";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.1.1/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-03-25 20:13:18";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsæt";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-03-29 19:06:37";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/5.1.1/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-04-28 20:52:36";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_AT";a:8:{s:8:"language";s:5:"de_AT";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-03-12 05:45:50";s:12:"english_name";s:16:"German (Austria)";s:11:"native_name";s:21:"Deutsch (Österreich)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/de_AT.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-04-28 20:52:46";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/5.1.1/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-03-29 19:06:10";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:3:"dzo";a:8:{s:8:"language";s:3:"dzo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-06-29 08:59:03";s:12:"english_name";s:8:"Dzongkha";s:11:"native_name";s:18:"རྫོང་ཁ";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip";s:3:"iso";a:2:{i:1;s:2:"dz";i:2;s:3:"dzo";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-03-12 10:58:18";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.1.1/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-04-12 07:11:04";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-03-08 03:57:57";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-03-07 23:32:35";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-03-25 23:19:50";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-03-08 03:57:25";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-03-21 14:53:06";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.1.1/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-04-22 20:19:05";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/es_CL.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-04-24 08:04:25";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/es_ES.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-03-12 02:56:56";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/es_AR.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:3:"5.1";s:7:"updated";s:19:"2019-03-02 06:35:01";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.1/es_GT.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CR";a:8:{s:8:"language";s:5:"es_CR";s:7:"version";s:3:"5.0";s:7:"updated";s:19:"2018-12-06 21:26:01";s:12:"english_name";s:20:"Spanish (Costa Rica)";s:11:"native_name";s:22:"Español de Costa Rica";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.0/es_CR.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:3:"5.0";s:7:"updated";s:19:"2018-12-06 12:47:45";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.0/es_VE.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:3:"5.0";s:7:"updated";s:19:"2018-12-07 18:38:30";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.0/es_MX.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:5:"4.9.9";s:7:"updated";s:19:"2018-12-14 13:48:04";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.9/es_CO.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-09 09:36:22";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip";s:3:"iso";a:3:{i:1;s:2:"es";i:2;s:3:"spa";i:3;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:9:"5.0-beta3";s:7:"updated";s:19:"2018-11-28 16:04:33";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/5.0-beta3/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2017-12-09 21:12:23";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-04-14 11:16:45";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-03-29 13:01:02";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.1.1/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-03-14 13:16:24";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:6:"4.9.10";s:7:"updated";s:19:"2019-04-16 00:23:07";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.9.10/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-01-31 11:16:06";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:3:"fur";a:8:{s:8:"language";s:3:"fur";s:7:"version";s:5:"4.8.6";s:7:"updated";s:19:"2018-01-29 17:32:35";s:12:"english_name";s:8:"Friulian";s:11:"native_name";s:8:"Friulian";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip";s:3:"iso";a:2:{i:2;s:3:"fur";i:3;s:3:"fur";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-03-08 23:32:17";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-09-14 12:33:48";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-04-28 16:40:42";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.9.7";s:7:"updated";s:19:"2018-06-17 09:33:44";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-04-18 07:37:51";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.1.1/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-03-19 14:36:40";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-03 16:21:10";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-07-28 13:16:13";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:6:"4.7.11";s:7:"updated";s:19:"2018-09-20 11:13:37";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-03-29 23:09:50";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-04-09 13:58:05";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.1.1/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"jv_ID";a:8:{s:8:"language";s:5:"jv_ID";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-24 13:53:29";s:12:"english_name";s:8:"Javanese";s:11:"native_name";s:9:"Basa Jawa";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip";s:3:"iso";a:2:{i:1;s:2:"jv";i:2;s:3:"jav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Nerusaké";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:3:"5.1";s:7:"updated";s:19:"2019-02-21 08:17:32";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.1/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:3:"kab";a:8:{s:8:"language";s:3:"kab";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-09-21 14:15:57";s:12:"english_name";s:6:"Kabyle";s:11:"native_name";s:9:"Taqbaylit";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.9.8/kab.zip";s:3:"iso";a:2:{i:2;s:3:"kab";i:3;s:3:"kab";}s:7:"strings";a:1:{s:8:"continue";s:6:"Kemmel";}}s:2:"kk";a:8:{s:8:"language";s:2:"kk";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-12 08:08:32";s:12:"english_name";s:6:"Kazakh";s:11:"native_name";s:19:"Қазақ тілі";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip";s:3:"iso";a:2:{i:1;s:2:"kk";i:2;s:3:"kaz";}s:7:"strings";a:1:{s:8:"continue";s:20:"Жалғастыру";}}s:2:"km";a:8:{s:8:"language";s:2:"km";s:7:"version";s:5:"5.0.3";s:7:"updated";s:19:"2019-01-09 07:34:10";s:12:"english_name";s:5:"Khmer";s:11:"native_name";s:27:"ភាសាខ្មែរ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.0.3/km.zip";s:3:"iso";a:2:{i:1;s:2:"km";i:2;s:3:"khm";}s:7:"strings";a:1:{s:8:"continue";s:12:"បន្ត";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"5.0.3";s:7:"updated";s:19:"2019-01-09 14:27:41";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.0.3/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:3:"ckb";a:8:{s:8:"language";s:3:"ckb";s:7:"version";s:5:"4.9.9";s:7:"updated";s:19:"2018-12-18 14:32:44";s:12:"english_name";s:16:"Kurdish (Sorani)";s:11:"native_name";s:13:"كوردی‎";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.9.9/ckb.zip";s:3:"iso";a:2:{i:1;s:2:"ku";i:3;s:3:"ckb";}s:7:"strings";a:1:{s:8:"continue";s:30:"به‌رده‌وام به‌";}}s:2:"lo";a:8:{s:8:"language";s:2:"lo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 09:59:23";s:12:"english_name";s:3:"Lao";s:11:"native_name";s:21:"ພາສາລາວ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip";s:3:"iso";a:2:{i:1;s:2:"lo";i:2;s:3:"lao";}s:7:"strings";a:1:{s:8:"continue";s:18:"ຕໍ່​ໄປ";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"5.0.3";s:7:"updated";s:19:"2019-01-09 18:11:00";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.0.3/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:5:"4.7.7";s:7:"updated";s:19:"2017-03-17 20:40:40";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.7/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.7.7";s:7:"updated";s:19:"2017-01-26 15:54:41";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.7/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:5:"ml_IN";a:8:{s:8:"language";s:5:"ml_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:43:32";s:12:"english_name";s:9:"Malayalam";s:11:"native_name";s:18:"മലയാളം";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ml";i:2;s:3:"mal";}s:7:"strings";a:1:{s:8:"continue";s:18:"തുടരുക";}}s:2:"mn";a:8:{s:8:"language";s:2:"mn";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 07:29:35";s:12:"english_name";s:9:"Mongolian";s:11:"native_name";s:12:"Монгол";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip";s:3:"iso";a:2:{i:1;s:2:"mn";i:2;s:3:"mon";}s:7:"strings";a:1:{s:8:"continue";s:24:"Үргэлжлүүлэх";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.8.6";s:7:"updated";s:19:"2018-02-13 07:38:55";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.8.6/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.9.8";s:7:"updated";s:19:"2018-08-30 20:27:25";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.20";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-05-01 10:50:04";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"ne_NP";a:8:{s:8:"language";s:5:"ne_NP";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-03-27 10:30:26";s:12:"english_name";s:6:"Nepali";s:11:"native_name";s:18:"नेपाली";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip";s:3:"iso";a:2:{i:1;s:2:"ne";i:2;s:3:"nep";}s:7:"strings";a:1:{s:8:"continue";s:43:"जारी राख्नुहोस्";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-03-23 09:36:48";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_BE";a:8:{s:8:"language";s:5:"nl_BE";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-04-28 13:59:03";s:12:"english_name";s:15:"Dutch (Belgium)";s:11:"native_name";s:20:"Nederlands (België)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/nl_BE.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-03-23 09:40:21";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/5.1.1/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-03-09 16:36:42";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.8.3";s:7:"updated";s:19:"2017-08-25 10:03:08";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pa_IN";a:8:{s:8:"language";s:5:"pa_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-16 05:19:43";s:12:"english_name";s:7:"Punjabi";s:11:"native_name";s:18:"ਪੰਜਾਬੀ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip";s:3:"iso";a:2:{i:1;s:2:"pa";i:2;s:3:"pan";}s:7:"strings";a:1:{s:8:"continue";s:25:"ਜਾਰੀ ਰੱਖੋ";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-03-13 06:39:07";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.20";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-03-13 17:59:01";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:10:"pt_PT_ao90";a:8:{s:8:"language";s:10:"pt_PT_ao90";s:7:"version";s:3:"5.1";s:7:"updated";s:19:"2019-02-22 12:37:09";s:12:"english_name";s:27:"Portuguese (Portugal, AO90)";s:11:"native_name";s:17:"Português (AO90)";s:7:"package";s:67:"https://downloads.wordpress.org/translation/core/5.1/pt_PT_ao90.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-04-08 09:37:30";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_AO";a:8:{s:8:"language";s:5:"pt_AO";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-03-17 07:59:20";s:12:"english_name";s:19:"Portuguese (Angola)";s:11:"native_name";s:20:"Português de Angola";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/pt_AO.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"rhg";a:8:{s:8:"language";s:3:"rhg";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-16 13:03:18";s:12:"english_name";s:8:"Rohingya";s:11:"native_name";s:8:"Ruáinga";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip";s:3:"iso";a:1:{i:3;s:3:"rhg";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-05-02 12:56:48";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-03-21 14:39:06";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:3:"sah";a:8:{s:8:"language";s:3:"sah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-21 02:06:41";s:12:"english_name";s:5:"Sakha";s:11:"native_name";s:14:"Сахалыы";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip";s:3:"iso";a:2:{i:2;s:3:"sah";i:3;s:3:"sah";}s:7:"strings";a:1:{s:8:"continue";s:12:"Салҕаа";}}s:5:"si_LK";a:8:{s:8:"language";s:5:"si_LK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 06:00:52";s:12:"english_name";s:7:"Sinhala";s:11:"native_name";s:15:"සිංහල";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip";s:3:"iso";a:2:{i:1;s:2:"si";i:2;s:3:"sin";}s:7:"strings";a:1:{s:8:"continue";s:44:"දිගටම කරගෙන යන්න";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-03-08 15:30:32";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:3:"skr";a:8:{s:8:"language";s:3:"skr";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-03-09 14:38:41";s:12:"english_name";s:7:"Saraiki";s:11:"native_name";s:14:"سرائیکی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/5.1.1/skr.zip";s:3:"iso";a:1:{i:3;s:3:"skr";}s:7:"strings";a:1:{s:8:"continue";s:17:"جاری رکھو";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.9.2";s:7:"updated";s:19:"2018-01-04 13:33:13";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-04-02 15:10:17";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.1.1/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-03-13 12:26:58";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-04-11 21:25:18";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:5:"ta_IN";a:8:{s:8:"language";s:5:"ta_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:22:47";s:12:"english_name";s:5:"Tamil";s:11:"native_name";s:15:"தமிழ்";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ta";i:2;s:3:"tam";}s:7:"strings";a:1:{s:8:"continue";s:24:"தொடரவும்";}}s:2:"te";a:8:{s:8:"language";s:2:"te";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:47:39";s:12:"english_name";s:6:"Telugu";s:11:"native_name";s:18:"తెలుగు";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/te.zip";s:3:"iso";a:2:{i:1;s:2:"te";i:2;s:3:"tel";}s:7:"strings";a:1:{s:8:"continue";s:30:"కొనసాగించు";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-03-27 04:33:46";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.1.1/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-30 02:38:08";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-03-21 11:17:54";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"tt_RU";a:8:{s:8:"language";s:5:"tt_RU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-20 20:20:50";s:12:"english_name";s:5:"Tatar";s:11:"native_name";s:19:"Татар теле";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip";s:3:"iso";a:2:{i:1;s:2:"tt";i:2;s:3:"tat";}s:7:"strings";a:1:{s:8:"continue";s:17:"дәвам итү";}}s:3:"tah";a:8:{s:8:"language";s:3:"tah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-06 18:39:39";s:12:"english_name";s:8:"Tahitian";s:11:"native_name";s:10:"Reo Tahiti";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip";s:3:"iso";a:3:{i:1;s:2:"ty";i:2;s:3:"tah";i:3;s:3:"tah";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.9.5";s:7:"updated";s:19:"2018-04-12 12:31:53";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:16:"ئۇيغۇرچە";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-05-01 11:14:23";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.1.1/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"ur";a:8:{s:8:"language";s:2:"ur";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-03-31 10:39:40";s:12:"english_name";s:4:"Urdu";s:11:"native_name";s:8:"اردو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.1.1/ur.zip";s:3:"iso";a:2:{i:1;s:2:"ur";i:2;s:3:"urd";}s:7:"strings";a:1:{s:8:"continue";s:19:"جاری رکھیں";}}s:5:"uz_UZ";a:8:{s:8:"language";s:5:"uz_UZ";s:7:"version";s:5:"5.0.3";s:7:"updated";s:19:"2019-01-23 12:32:40";s:12:"english_name";s:5:"Uzbek";s:11:"native_name";s:11:"O‘zbekcha";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.0.3/uz_UZ.zip";s:3:"iso";a:2:{i:1;s:2:"uz";i:2;s:3:"uzb";}s:7:"strings";a:1:{s:8:"continue";s:11:"Davom etish";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-04-15 03:01:03";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/5.1.1/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-04-23 14:28:37";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"5.0.3";s:7:"updated";s:19:"2018-12-21 00:57:14";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.0.3/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:5:"5.1.1";s:7:"updated";s:19:"2019-04-02 05:45:13";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/5.1.1/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'no'),
(796, '_transient_timeout_plugin_slugs', '1556905726', 'no'),
(797, '_transient_plugin_slugs', 'a:6:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:33:"classic-editor/classic-editor.php";i:2;s:25:"hero-state/hero-state.php";i:3;s:47:"regenerate-thumbnails/regenerate-thumbnails.php";i:4;s:21:"safe-svg/safe-svg.php";i:5;s:21:"wp-reset/wp-reset.php";}', 'no');

-- --------------------------------------------------------

--
-- Structure de la table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 2, '_edit_lock', '1556304375:3'),
(4, 2, '_wp_trash_meta_status', 'publish'),
(5, 2, '_wp_trash_meta_time', '1556304392'),
(6, 2, '_wp_desired_post_slug', 'page-d-exemple'),
(7, 9, '_edit_lock', '1556304578:3'),
(8, 11, '_edit_lock', '1556304699:3'),
(9, 13, '_edit_lock', '1556304748:3'),
(10, 15, '_edit_lock', '1556304905:3'),
(11, 1, '_wp_trash_meta_status', 'publish'),
(12, 1, '_wp_trash_meta_time', '1556305071'),
(13, 1, '_wp_desired_post_slug', 'bonjour-tout-le-monde'),
(14, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(15, 18, '_edit_lock', '1556305256:3'),
(16, 19, '_wp_attached_file', '2019/04/activites.jpg'),
(17, 19, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:720;s:4:"file";s:21:"2019/04/activites.jpg";s:5:"sizes";a:8:{s:10:"portrait-1";a:4:{s:4:"file";s:21:"activites-715x536.jpg";s:5:"width";i:715;s:6:"height";i:536;s:9:"mime-type";s:10:"image/jpeg";}s:10:"portrait-2";a:4:{s:4:"file";s:21:"activites-293x220.jpg";s:5:"width";i:293;s:6:"height";i:220;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:21:"activites-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:21:"activites-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:21:"activites-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:21:"activites-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:21:"activites-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:21:"activites-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(18, 20, '_wp_attached_file', '2019/04/comite.jpg'),
(19, 20, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1728;s:6:"height";i:1152;s:4:"file";s:18:"2019/04/comite.jpg";s:5:"sizes";a:11:{s:10:"portrait-1";a:4:{s:4:"file";s:18:"comite-715x477.jpg";s:5:"width";i:715;s:6:"height";i:477;s:9:"mime-type";s:10:"image/jpeg";}s:9:"paysage-1";a:4:{s:4:"file";s:19:"comite-1127x751.jpg";s:5:"width";i:1127;s:6:"height";i:751;s:9:"mime-type";s:10:"image/jpeg";}s:10:"portrait-2";a:4:{s:4:"file";s:18:"comite-293x195.jpg";s:5:"width";i:293;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"comite-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"comite-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"comite-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"comite-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:18:"comite-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:18:"comite-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:18:"comite-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:20:"comite-1568x1045.jpg";s:5:"width";i:1568;s:6:"height";i:1045;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(20, 21, '_wp_attached_file', '2019/04/croque_neige.jpg'),
(21, 21, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:960;s:6:"height";i:720;s:4:"file";s:24:"2019/04/croque_neige.jpg";s:5:"sizes";a:8:{s:10:"portrait-1";a:4:{s:4:"file";s:24:"croque_neige-715x536.jpg";s:5:"width";i:715;s:6:"height";i:536;s:9:"mime-type";s:10:"image/jpeg";}s:10:"portrait-2";a:4:{s:4:"file";s:24:"croque_neige-293x220.jpg";s:5:"width";i:293;s:6:"height";i:220;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:24:"croque_neige-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:24:"croque_neige-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:24:"croque_neige-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:24:"croque_neige-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:24:"croque_neige-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:24:"croque_neige-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(22, 22, '_wp_attached_file', '2019/04/pommes3.jpg'),
(23, 22, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:720;s:6:"height";i:960;s:4:"file";s:19:"2019/04/pommes3.jpg";s:5:"sizes";a:8:{s:10:"portrait-1";a:4:{s:4:"file";s:19:"pommes3-563x751.jpg";s:5:"width";i:563;s:6:"height";i:751;s:9:"mime-type";s:10:"image/jpeg";}s:9:"paysage-1";a:4:{s:4:"file";s:19:"pommes3-563x751.jpg";s:5:"width";i:563;s:6:"height";i:751;s:9:"mime-type";s:10:"image/jpeg";}s:10:"portrait-2";a:4:{s:4:"file";s:19:"pommes3-263x351.jpg";s:5:"width";i:263;s:6:"height";i:351;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:19:"pommes3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"pommes3-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:19:"pommes3-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:19:"pommes3-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:19:"pommes3-600x800.jpg";s:5:"width";i:600;s:6:"height";i:800;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(24, 23, '_wp_attached_file', '2019/04/pumpkin.jpg'),
(25, 23, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:4032;s:6:"height";i:3024;s:4:"file";s:19:"2019/04/pumpkin.jpg";s:5:"sizes";a:11:{s:10:"portrait-1";a:4:{s:4:"file";s:19:"pumpkin-715x536.jpg";s:5:"width";i:715;s:6:"height";i:536;s:9:"mime-type";s:10:"image/jpeg";}s:9:"paysage-1";a:4:{s:4:"file";s:20:"pumpkin-1001x751.jpg";s:5:"width";i:1001;s:6:"height";i:751;s:9:"mime-type";s:10:"image/jpeg";}s:10:"portrait-2";a:4:{s:4:"file";s:19:"pumpkin-293x220.jpg";s:5:"width";i:293;s:6:"height";i:220;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:19:"pumpkin-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"pumpkin-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"pumpkin-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"pumpkin-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:19:"pumpkin-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:19:"pumpkin-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:19:"pumpkin-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"pumpkin-1568x1176.jpg";s:5:"width";i:1568;s:6:"height";i:1176;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(26, 24, '_wp_attached_file', '2019/04/spring4.jpg'),
(27, 24, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:7360;s:6:"height";i:4912;s:4:"file";s:19:"2019/04/spring4.jpg";s:5:"sizes";a:11:{s:10:"portrait-1";a:4:{s:4:"file";s:19:"spring4-715x477.jpg";s:5:"width";i:715;s:6:"height";i:477;s:9:"mime-type";s:10:"image/jpeg";}s:9:"paysage-1";a:4:{s:4:"file";s:20:"spring4-1125x751.jpg";s:5:"width";i:1125;s:6:"height";i:751;s:9:"mime-type";s:10:"image/jpeg";}s:10:"portrait-2";a:4:{s:4:"file";s:19:"spring4-293x196.jpg";s:5:"width";i:293;s:6:"height";i:196;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:19:"spring4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"spring4-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"spring4-768x513.jpg";s:5:"width";i:768;s:6:"height";i:513;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"spring4-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:19:"spring4-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:19:"spring4-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:19:"spring4-600x400.jpg";s:5:"width";i:600;s:6:"height";i:400;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:21:"spring4-1568x1046.jpg";s:5:"width";i:1568;s:6:"height";i:1046;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(28, 25, '_wp_attached_file', '2019/04/winter.jpg'),
(29, 25, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:3362;s:6:"height";i:2521;s:4:"file";s:18:"2019/04/winter.jpg";s:5:"sizes";a:11:{s:10:"portrait-1";a:4:{s:4:"file";s:18:"winter-715x536.jpg";s:5:"width";i:715;s:6:"height";i:536;s:9:"mime-type";s:10:"image/jpeg";}s:9:"paysage-1";a:4:{s:4:"file";s:19:"winter-1002x751.jpg";s:5:"width";i:1002;s:6:"height";i:751;s:9:"mime-type";s:10:"image/jpeg";}s:10:"portrait-2";a:4:{s:4:"file";s:18:"winter-293x220.jpg";s:5:"width";i:293;s:6:"height";i:220;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:18:"winter-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"winter-300x225.jpg";s:5:"width";i:300;s:6:"height";i:225;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:18:"winter-768x576.jpg";s:5:"width";i:768;s:6:"height";i:576;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"winter-1024x768.jpg";s:5:"width";i:1024;s:6:"height";i:768;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:18:"winter-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:18:"winter-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:18:"winter-600x450.jpg";s:5:"width";i:600;s:6:"height";i:450;s:9:"mime-type";s:10:"image/jpeg";}s:14:"post-thumbnail";a:4:{s:4:"file";s:20:"winter-1568x1176.jpg";s:5:"width";i:1568;s:6:"height";i:1176;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(31, 18, '_thumbnail_id', '21'),
(32, 27, '_edit_lock', '1556305927:3'),
(34, 27, '_thumbnail_id', '19'),
(35, 29, '_edit_lock', '1556747891:1'),
(36, 30, '_wp_attached_file', '2019/04/plantation_commence.jpg'),
(37, 30, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:712;s:6:"height";i:960;s:4:"file";s:31:"2019/04/plantation_commence.jpg";s:5:"sizes";a:8:{s:10:"portrait-1";a:4:{s:4:"file";s:31:"plantation_commence-557x751.jpg";s:5:"width";i:557;s:6:"height";i:751;s:9:"mime-type";s:10:"image/jpeg";}s:9:"paysage-1";a:4:{s:4:"file";s:31:"plantation_commence-557x751.jpg";s:5:"width";i:557;s:6:"height";i:751;s:9:"mime-type";s:10:"image/jpeg";}s:10:"portrait-2";a:4:{s:4:"file";s:31:"plantation_commence-260x351.jpg";s:5:"width";i:260;s:6:"height";i:351;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:31:"plantation_commence-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:31:"plantation_commence-223x300.jpg";s:5:"width";i:223;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:31:"plantation_commence-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:31:"plantation_commence-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:31:"plantation_commence-600x809.jpg";s:5:"width";i:600;s:6:"height";i:809;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(38, 31, '_wp_attached_file', '2019/04/sacs_de_terreau.jpg'),
(39, 31, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:720;s:6:"height";i:960;s:4:"file";s:27:"2019/04/sacs_de_terreau.jpg";s:5:"sizes";a:8:{s:10:"portrait-1";a:4:{s:4:"file";s:27:"sacs_de_terreau-563x751.jpg";s:5:"width";i:563;s:6:"height";i:751;s:9:"mime-type";s:10:"image/jpeg";}s:9:"paysage-1";a:4:{s:4:"file";s:27:"sacs_de_terreau-563x751.jpg";s:5:"width";i:563;s:6:"height";i:751;s:9:"mime-type";s:10:"image/jpeg";}s:10:"portrait-2";a:4:{s:4:"file";s:27:"sacs_de_terreau-263x351.jpg";s:5:"width";i:263;s:6:"height";i:351;s:9:"mime-type";s:10:"image/jpeg";}s:9:"thumbnail";a:4:{s:4:"file";s:27:"sacs_de_terreau-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:27:"sacs_de_terreau-225x300.jpg";s:5:"width";i:225;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";}s:21:"woocommerce_thumbnail";a:5:{s:4:"file";s:27:"sacs_de_terreau-300x300.jpg";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:10:"image/jpeg";s:9:"uncropped";b:0;}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:27:"sacs_de_terreau-100x100.jpg";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:10:"image/jpeg";}s:18:"woocommerce_single";a:4:{s:4:"file";s:27:"sacs_de_terreau-600x800.jpg";s:5:"width";i:600;s:6:"height";i:800;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(41, 29, '_thumbnail_id', '30'),
(42, 33, '_edit_lock', '1556306210:3'),
(44, 33, '_thumbnail_id', '23'),
(46, 33, '_wp_old_date', '2019-04-26'),
(83, 11, '_wp_trash_meta_status', 'publish'),
(84, 11, '_wp_trash_meta_time', '1556474558'),
(85, 11, '_wp_desired_post_slug', 'blogue'),
(86, 9, '_wp_trash_meta_status', 'publish'),
(87, 9, '_wp_trash_meta_time', '1556474558'),
(88, 9, '_wp_desired_post_slug', 'croque-ton-quartier'),
(89, 13, '_wp_trash_meta_status', 'publish'),
(90, 13, '_wp_trash_meta_time', '1556474558'),
(91, 13, '_wp_desired_post_slug', 'histoire'),
(92, 15, '_wp_trash_meta_status', 'publish'),
(93, 15, '_wp_trash_meta_time', '1556474558'),
(94, 15, '_wp_desired_post_slug', 'nous-joindre'),
(95, 3, '_wp_trash_meta_status', 'draft'),
(96, 3, '_wp_trash_meta_time', '1556474558'),
(97, 3, '_wp_desired_post_slug', 'politique-de-confidentialite'),
(98, 41, '_edit_lock', '1556474419:2'),
(99, 42, '_edit_lock', '1556474433:2'),
(100, 43, '_edit_lock', '1556762745:3'),
(101, 43, '_edit_last', '3'),
(102, 44, '_menu_item_type', 'post_type'),
(103, 44, '_menu_item_menu_item_parent', '0'),
(104, 44, '_menu_item_object_id', '43'),
(105, 44, '_menu_item_object', 'page'),
(106, 44, '_menu_item_target', ''),
(107, 44, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(108, 44, '_menu_item_xfn', ''),
(109, 44, '_menu_item_url', ''),
(110, 46, '_edit_last', '2'),
(111, 47, '_menu_item_type', 'post_type'),
(112, 47, '_menu_item_menu_item_parent', '0'),
(113, 47, '_menu_item_object_id', '46'),
(114, 47, '_menu_item_object', 'page'),
(115, 47, '_menu_item_target', ''),
(116, 47, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(117, 47, '_menu_item_xfn', ''),
(118, 47, '_menu_item_url', ''),
(119, 46, '_edit_lock', '1556474580:2'),
(120, 49, '_edit_last', '2'),
(121, 50, '_menu_item_type', 'post_type'),
(122, 50, '_menu_item_menu_item_parent', '0'),
(123, 50, '_menu_item_object_id', '49'),
(124, 50, '_menu_item_object', 'page'),
(125, 50, '_menu_item_target', ''),
(126, 50, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(127, 50, '_menu_item_xfn', ''),
(128, 50, '_menu_item_url', ''),
(129, 49, '_edit_lock', '1556474587:2'),
(130, 52, '_edit_last', '3'),
(131, 53, '_menu_item_type', 'post_type'),
(132, 53, '_menu_item_menu_item_parent', '0'),
(133, 53, '_menu_item_object_id', '52'),
(134, 53, '_menu_item_object', 'page'),
(135, 53, '_menu_item_target', ''),
(136, 53, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(137, 53, '_menu_item_xfn', ''),
(138, 53, '_menu_item_url', ''),
(139, 52, '_edit_lock', '1556819165:3'),
(140, 55, '_edit_last', '2'),
(141, 56, '_menu_item_type', 'post_type'),
(142, 56, '_menu_item_menu_item_parent', '0'),
(143, 56, '_menu_item_object_id', '55'),
(144, 56, '_menu_item_object', 'page'),
(145, 56, '_menu_item_target', ''),
(146, 56, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(147, 56, '_menu_item_xfn', ''),
(148, 56, '_menu_item_url', ''),
(149, 55, '_edit_lock', '1556474602:2'),
(150, 58, '_wp_trash_meta_status', 'publish'),
(151, 58, '_wp_trash_meta_time', '1556542004'),
(152, 59, '_wp_trash_meta_status', 'publish'),
(153, 59, '_wp_trash_meta_time', '1556542026'),
(154, 60, '_wp_trash_meta_status', 'publish'),
(155, 60, '_wp_trash_meta_time', '1556542051'),
(156, 61, '_wp_trash_meta_status', 'publish'),
(157, 61, '_wp_trash_meta_time', '1556545909'),
(158, 62, '_wp_attached_file', ''),
(159, 63, '_wp_attached_file', '2019'),
(160, 64, '_wp_attached_file', '2019/04'),
(161, 65, '_wp_attached_file', '2015'),
(162, 66, '_wp_attached_file', '2015/07'),
(163, 67, '_wp_attached_file', '2015/08'),
(164, 68, '_wp_attached_file', '2017'),
(165, 69, '_wp_attached_file', '2017/05'),
(166, 70, '_wp_attached_file', '2017/06'),
(167, 71, '_wp_attached_file', '2017/08'),
(168, 72, '_wp_attached_file', '2017/09'),
(169, 73, '_wp_attached_file', '2018'),
(170, 74, '_wp_attached_file', '2018/04'),
(171, 75, '_wp_attached_file', '2018/06'),
(172, 76, '_wp_attached_file', '2019/03'),
(173, 77, '_wp_attached_file', 'woocommerce-placeholder.png'),
(174, 77, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:1200;s:4:"file";s:27:"woocommerce-placeholder.png";s:5:"sizes";a:7:{s:10:"portrait-1";a:4:{s:4:"file";s:35:"woocommerce-placeholder-715x715.png";s:5:"width";i:715;s:6:"height";i:715;s:9:"mime-type";s:9:"image/png";}s:9:"paysage-1";a:4:{s:4:"file";s:35:"woocommerce-placeholder-751x751.png";s:5:"width";i:751;s:6:"height";i:751;s:9:"mime-type";s:9:"image/png";}s:10:"portrait-2";a:4:{s:4:"file";s:35:"woocommerce-placeholder-293x293.png";s:5:"width";i:293;s:6:"height";i:293;s:9:"mime-type";s:9:"image/png";}s:9:"thumbnail";a:4:{s:4:"file";s:35:"woocommerce-placeholder-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:35:"woocommerce-placeholder-300x300.png";s:5:"width";i:300;s:6:"height";i:300;s:9:"mime-type";s:9:"image/png";}s:12:"medium_large";a:4:{s:4:"file";s:35:"woocommerce-placeholder-768x768.png";s:5:"width";i:768;s:6:"height";i:768;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:37:"woocommerce-placeholder-1024x1024.png";s:5:"width";i:1024;s:6:"height";i:1024;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(175, 78, '_wp_attached_file', '2019/04/logo-footer.png'),
(176, 78, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:194;s:6:"height";i:112;s:4:"file";s:23:"2019/04/logo-footer.png";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:23:"logo-footer-150x112.png";s:5:"width";i:150;s:6:"height";i:112;s:9:"mime-type";s:9:"image/png";}s:29:"woocommerce_gallery_thumbnail";a:4:{s:4:"file";s:23:"logo-footer-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}s:14:"shop_thumbnail";a:4:{s:4:"file";s:23:"logo-footer-100x100.png";s:5:"width";i:100;s:6:"height";i:100;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-04-12 18:11:22', '2019-04-12 16:11:22', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'trash', 'open', 'open', '', 'bonjour-tout-le-monde__trashed', '', '', '2019-04-26 20:57:51', '2019-04-26 18:57:51', '', 0, 'http://localhost/TP4/?p=1', 0, 'post', '', 1),
(2, 1, '2019-04-12 18:11:22', '2019-04-12 16:11:22', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux visiteurs du site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel·le utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href="http://localhost/TP4/wp-admin/">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'trash', 'closed', 'open', '', 'page-d-exemple__trashed', '', '', '2019-04-26 20:46:32', '2019-04-26 18:46:32', '', 0, 'http://localhost/TP4/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-04-12 18:11:22', '2019-04-12 16:11:22', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p>L’adresse de notre site Web est : http://localhost/TP4.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation des données personnelles collectées</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Commentaires</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Médias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Formulaires de contact</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous avez un compte et que vous vous connectez sur ce site, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contenu embarqué depuis d’autres sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Statistiques et mesures d’audience</h3><!-- /wp:heading --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informations de contact</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informations supplémentaires</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comment nous protégeons vos données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Procédures mises en œuvre en cas de fuite de données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Les services tiers qui nous transmettent des données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3><!-- /wp:heading -->', 'Politique de confidentialité', '', 'trash', 'closed', 'open', '', 'politique-de-confidentialite__trashed', '', '', '2019-04-28 20:02:38', '2019-04-28 18:02:38', '', 0, 'http://localhost/TP4/?page_id=3', 0, 'page', '', 0),
(7, 3, '2019-04-26 20:31:37', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-04-26 20:31:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/croque-ton-quartier-master/?p=7', 0, 'post', '', 0),
(8, 3, '2019-04-26 20:46:32', '2019-04-26 18:46:32', '<!-- wp:paragraph -->\n<p>Ceci est une page d’exemple. C’est différent d’un article de blog parce qu’elle restera au même endroit et apparaîtra dans la navigation de votre site (dans la plupart des thèmes). La plupart des gens commencent par une page « À propos » qui les présente aux visiteurs du site. Cela pourrait ressembler à quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Bonjour ! Je suis un mécanicien qui aspire à devenir acteur, et voici mon site. J’habite à Bordeaux, j’ai un super chien baptisé Russell, et j’aime la vodka-ananas (ainsi qu’être surpris par la pluie soudaine lors de longues balades sur la plage au coucher du soleil).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... ou quelque chose comme cela :</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>La société 123 Machin Truc a été créée en 1971, et n’a cessé de proposer au public des machins-trucs de qualité depuis lors. Située à Saint-Remy-en-Bouzemont-Saint-Genest-et-Isson, 123 Machin Truc emploie 2 000 personnes, et fabrique toutes sortes de bidules super pour la communauté bouzemontoise.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>En tant que nouvel·le utilisateur ou utilisatrice de WordPress, vous devriez vous rendre sur <a href="http://localhost/TP4/wp-admin/">votre tableau de bord</a> pour supprimer cette page et créer de nouvelles pages pour votre contenu. Amusez-vous bien !</p>\n<!-- /wp:paragraph -->', 'Page d’exemple', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2019-04-26 20:46:32', '2019-04-26 18:46:32', '', 2, 'http://localhost/croque-ton-quartier-master/2019/04/26/2-revision-v1/', 0, 'revision', '', 0),
(9, 3, '2019-04-26 20:50:05', '2019-04-26 18:50:05', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'Croque ton quartier', '', 'trash', 'closed', 'closed', '', 'croque-ton-quartier__trashed', '', '', '2019-04-28 20:02:38', '2019-04-28 18:02:38', '', 0, 'http://localhost/croque-ton-quartier-master/?page_id=9', 0, 'page', '', 0),
(10, 3, '2019-04-26 20:50:05', '2019-04-26 18:50:05', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'Croque ton quartier', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2019-04-26 20:50:05', '2019-04-26 18:50:05', '', 9, 'http://localhost/croque-ton-quartier-master/2019/04/26/9-revision-v1/', 0, 'revision', '', 0),
(11, 3, '2019-04-26 20:51:56', '2019-04-26 18:51:56', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'Blogue', '', 'trash', 'closed', 'closed', '', 'blogue__trashed', '', '', '2019-04-28 20:02:38', '2019-04-28 18:02:38', '', 0, 'http://localhost/croque-ton-quartier-master/?page_id=11', 0, 'page', '', 0),
(12, 3, '2019-04-26 20:51:56', '2019-04-26 18:51:56', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'Blogue', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2019-04-26 20:51:56', '2019-04-26 18:51:56', '', 11, 'http://localhost/croque-ton-quartier-master/2019/04/26/11-revision-v1/', 0, 'revision', '', 0),
(13, 3, '2019-04-26 20:52:44', '2019-04-26 18:52:44', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'Histoire', '', 'trash', 'closed', 'closed', '', 'histoire__trashed', '', '', '2019-04-28 20:02:38', '2019-04-28 18:02:38', '', 0, 'http://localhost/croque-ton-quartier-master/?page_id=13', 0, 'page', '', 0),
(14, 3, '2019-04-26 20:52:44', '2019-04-26 18:52:44', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'Histoire', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2019-04-26 20:52:44', '2019-04-26 18:52:44', '', 13, 'http://localhost/croque-ton-quartier-master/2019/04/26/13-revision-v1/', 0, 'revision', '', 0),
(15, 3, '2019-04-26 20:53:06', '2019-04-26 18:53:06', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'Nous joindre', '', 'trash', 'closed', 'closed', '', 'nous-joindre__trashed', '', '', '2019-04-28 20:02:38', '2019-04-28 18:02:38', '', 0, 'http://localhost/croque-ton-quartier-master/?page_id=15', 0, 'page', '', 0),
(16, 3, '2019-04-26 20:53:06', '2019-04-26 18:53:06', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<!-- /wp:paragraph -->', 'Nous joindre', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2019-04-26 20:53:06', '2019-04-26 18:53:06', '', 15, 'http://localhost/croque-ton-quartier-master/2019/04/26/15-revision-v1/', 0, 'revision', '', 0),
(17, 3, '2019-04-26 20:57:51', '2019-04-26 18:57:51', '<!-- wp:paragraph -->\n<p>Bienvenue sur WordPress. Ceci est votre premier article. Modifiez-le ou supprimez-le, puis commencez à écrire !</p>\n<!-- /wp:paragraph -->', 'Bonjour tout le monde !', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2019-04-26 20:57:51', '2019-04-26 18:57:51', '', 1, 'http://localhost/croque-ton-quartier-master/2019/04/26/1-revision-v1/', 0, 'revision', '', 0),
(18, 3, '2019-04-26 21:00:51', '2019-04-26 19:00:51', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tortor ex, ornare nec convallis malesuada, sodales placerat velit. Fusce facilisis mauris nec aliquet finibus. Ut ut tempor metus. Phasellus ullamcorper eros id lectus tincidunt, quis semper ligula lacinia. Cras ut justo malesuada, scelerisque nulla non, aliquet nunc. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vivamus sagittis ultrices neque, mollis pellentesque tortor pretium et. Phasellus sollicitudin nunc ac eros luctus, sed facilisis purus aliquam. Nulla facilisi. Integer id mi in metus mollis luctus. Aenean convallis, arcu vitae maximus laoreet, felis eros semper metus, ut pretium nisl ligula ut turpis. Etiam convallis at nibh sit amet elementum. Nunc ultricies ultricies neque ut rhoncus. Morbi semper enim ac augue laoreet commodo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Praesent tortor urna, porttitor a feugiat a, egestas quis risus. Suspendisse nec varius justo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel imperdiet ex, id blandit nisi. Curabitur mattis ipsum at magna euismod, in rutrum nisl sagittis. Ut ultrices ipsum in tortor aliquam, sed aliquet risus ultricies. Vestibulum est massa, lobortis a massa a, sollicitudin dictum justo. Mauris faucibus nunc urna, eu tempor quam dapibus nec. In hac habitasse platea dictumst. Integer id pulvinar elit. Aliquam enim leo, porttitor ac velit ut, cursus laoreet ligula. Ut sollicitudin suscipit risus sit amet eleifend. Etiam vulputate, lacus sit amet volutpat interdum, leo eros feugiat ante, vel dapibus nibh mi eu velit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam elementum eu enim eu sodales. Praesent feugiat fringilla ipsum. Nulla tincidunt, elit ac vestibulum faucibus, mi magna pharetra nisl, ac bibendum ipsum massa a purus. Duis pulvinar sem sit amet ultricies bibendum. Duis dignissim placerat diam eget sodales. Proin lobortis, nisl eget fringilla finibus, tellus mauris laoreet justo, sit amet aliquam dolor odio nec metus. Etiam consequat vel metus eu ornare. Quisque venenatis nisi sit amet arcu iaculis eleifend.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Integer id nulla eget leo sagittis eleifend sed ut urna. Cras tincidunt faucibus massa ac hendrerit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc fermentum eget orci a bibendum. In augue magna, sodales eu tincidunt non, placerat vitae risus. Aliquam sit amet convallis odio. Sed lobortis feugiat urna tempor accumsan. Nulla maximus nisl non leo pharetra congue. Donec eu accumsan velit, in congue neque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quisque a dapibus quam. Donec in augue posuere elit porta ullamcorper. Duis ornare lorem in condimentum venenatis. Donec id iaculis lorem. Sed id dictum risus, in mollis metus. Nullam porta ultrices libero, sit amet tristique nulla suscipit sed. Nullam pulvinar varius arcu, nec fringilla neque gravida at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In tempus euismod est, nec malesuada est semper at. Fusce sed commodo sapien.</p>\n<!-- /wp:paragraph -->', 'On est là, été comme hiver', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tortor ex, ornare nec convallis malesuada, sodales placerat velit. Fusce facilisis mauris nec aliquet finibus. Ut ut tempor metus. Phasellus ullamcorper eros id lectus tincidunt, quis semper ligula lacinia. Cras ut justo malesuada, scelerisque nulla non, aliquet nunc.', 'publish', 'open', 'open', '', 'on-est-la-ete-comme-hiver', '', '', '2019-04-26 21:00:51', '2019-04-26 19:00:51', '', 0, 'http://localhost/croque-ton-quartier-master/?p=18', 0, 'post', '', 0),
(19, 3, '2019-04-26 21:00:09', '2019-04-26 19:00:09', '', 'activites', '', 'inherit', 'open', 'closed', '', 'activites', '', '', '2019-04-26 21:00:09', '2019-04-26 19:00:09', '', 18, 'http://localhost/croque-ton-quartier-master/wp-content/uploads/2019/04/activites.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 3, '2019-04-26 21:00:10', '2019-04-26 19:00:10', '', 'comite', '', 'inherit', 'open', 'closed', '', 'comite', '', '', '2019-04-26 21:00:10', '2019-04-26 19:00:10', '', 18, 'http://localhost/croque-ton-quartier-master/wp-content/uploads/2019/04/comite.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 3, '2019-04-26 21:00:12', '2019-04-26 19:00:12', '', 'croque_neige', '', 'inherit', 'open', 'closed', '', 'croque_neige', '', '', '2019-04-26 21:00:12', '2019-04-26 19:00:12', '', 18, 'http://localhost/croque-ton-quartier-master/wp-content/uploads/2019/04/croque_neige.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 3, '2019-04-26 21:00:13', '2019-04-26 19:00:13', '', 'pommes3', '', 'inherit', 'open', 'closed', '', 'pommes3', '', '', '2019-04-26 21:00:13', '2019-04-26 19:00:13', '', 18, 'http://localhost/croque-ton-quartier-master/wp-content/uploads/2019/04/pommes3.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 3, '2019-04-26 21:00:14', '2019-04-26 19:00:14', '', 'pumpkin', '', 'inherit', 'open', 'closed', '', 'pumpkin', '', '', '2019-04-26 21:00:14', '2019-04-26 19:00:14', '', 18, 'http://localhost/croque-ton-quartier-master/wp-content/uploads/2019/04/pumpkin.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 3, '2019-04-26 21:00:18', '2019-04-26 19:00:18', '', 'spring4', '', 'inherit', 'open', 'closed', '', 'spring4', '', '', '2019-04-26 21:00:18', '2019-04-26 19:00:18', '', 18, 'http://localhost/croque-ton-quartier-master/wp-content/uploads/2019/04/spring4.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 3, '2019-04-26 21:00:29', '2019-04-26 19:00:29', '', 'winter', '', 'inherit', 'open', 'closed', '', 'winter', '', '', '2019-04-26 21:00:29', '2019-04-26 19:00:29', '', 18, 'http://localhost/croque-ton-quartier-master/wp-content/uploads/2019/04/winter.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 3, '2019-04-26 21:00:51', '2019-04-26 19:00:51', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tortor ex, ornare nec convallis malesuada, sodales placerat velit. Fusce facilisis mauris nec aliquet finibus. Ut ut tempor metus. Phasellus ullamcorper eros id lectus tincidunt, quis semper ligula lacinia. Cras ut justo malesuada, scelerisque nulla non, aliquet nunc. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vivamus sagittis ultrices neque, mollis pellentesque tortor pretium et. Phasellus sollicitudin nunc ac eros luctus, sed facilisis purus aliquam. Nulla facilisi. Integer id mi in metus mollis luctus. Aenean convallis, arcu vitae maximus laoreet, felis eros semper metus, ut pretium nisl ligula ut turpis. Etiam convallis at nibh sit amet elementum. Nunc ultricies ultricies neque ut rhoncus. Morbi semper enim ac augue laoreet commodo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Praesent tortor urna, porttitor a feugiat a, egestas quis risus. Suspendisse nec varius justo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel imperdiet ex, id blandit nisi. Curabitur mattis ipsum at magna euismod, in rutrum nisl sagittis. Ut ultrices ipsum in tortor aliquam, sed aliquet risus ultricies. Vestibulum est massa, lobortis a massa a, sollicitudin dictum justo. Mauris faucibus nunc urna, eu tempor quam dapibus nec. In hac habitasse platea dictumst. Integer id pulvinar elit. Aliquam enim leo, porttitor ac velit ut, cursus laoreet ligula. Ut sollicitudin suscipit risus sit amet eleifend. Etiam vulputate, lacus sit amet volutpat interdum, leo eros feugiat ante, vel dapibus nibh mi eu velit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam elementum eu enim eu sodales. Praesent feugiat fringilla ipsum. Nulla tincidunt, elit ac vestibulum faucibus, mi magna pharetra nisl, ac bibendum ipsum massa a purus. Duis pulvinar sem sit amet ultricies bibendum. Duis dignissim placerat diam eget sodales. Proin lobortis, nisl eget fringilla finibus, tellus mauris laoreet justo, sit amet aliquam dolor odio nec metus. Etiam consequat vel metus eu ornare. Quisque venenatis nisi sit amet arcu iaculis eleifend.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Integer id nulla eget leo sagittis eleifend sed ut urna. Cras tincidunt faucibus massa ac hendrerit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc fermentum eget orci a bibendum. In augue magna, sodales eu tincidunt non, placerat vitae risus. Aliquam sit amet convallis odio. Sed lobortis feugiat urna tempor accumsan. Nulla maximus nisl non leo pharetra congue. Donec eu accumsan velit, in congue neque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quisque a dapibus quam. Donec in augue posuere elit porta ullamcorper. Duis ornare lorem in condimentum venenatis. Donec id iaculis lorem. Sed id dictum risus, in mollis metus. Nullam porta ultrices libero, sit amet tristique nulla suscipit sed. Nullam pulvinar varius arcu, nec fringilla neque gravida at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In tempus euismod est, nec malesuada est semper at. Fusce sed commodo sapien.</p>\n<!-- /wp:paragraph -->', 'On est là, été comme hiver', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tortor ex, ornare nec convallis malesuada, sodales placerat velit. Fusce facilisis mauris nec aliquet finibus. Ut ut tempor metus. Phasellus ullamcorper eros id lectus tincidunt, quis semper ligula lacinia. Cras ut justo malesuada, scelerisque nulla non, aliquet nunc.', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2019-04-26 21:00:51', '2019-04-26 19:00:51', '', 18, 'http://localhost/croque-ton-quartier-master/2019/04/26/18-revision-v1/', 0, 'revision', '', 0),
(27, 3, '2019-04-26 21:12:55', '2019-04-26 19:12:55', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tortor ex, ornare nec convallis malesuada, sodales placerat velit. Fusce facilisis mauris nec aliquet finibus. Ut ut tempor metus. Phasellus ullamcorper eros id lectus tincidunt, quis semper ligula lacinia. Cras ut justo malesuada, scelerisque nulla non, aliquet nunc. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vivamus sagittis ultrices neque, mollis pellentesque tortor pretium et. Phasellus sollicitudin nunc ac eros luctus, sed facilisis purus aliquam. Nulla facilisi. Integer id mi in metus mollis luctus. Aenean convallis, arcu vitae maximus laoreet, felis eros semper metus, ut pretium nisl ligula ut turpis. Etiam convallis at nibh sit amet elementum. Nunc ultricies ultricies neque ut rhoncus. Morbi semper enim ac augue laoreet commodo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Praesent tortor urna, porttitor a feugiat a, egestas quis risus. Suspendisse nec varius justo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel imperdiet ex, id blandit nisi. Curabitur mattis ipsum at magna euismod, in rutrum nisl sagittis. Ut ultrices ipsum in tortor aliquam, sed aliquet risus ultricies. Vestibulum est massa, lobortis a massa a, sollicitudin dictum justo. Mauris faucibus nunc urna, eu tempor quam dapibus nec. In hac habitasse platea dictumst. Integer id pulvinar elit. Aliquam enim leo, porttitor ac velit ut, cursus laoreet ligula. Ut sollicitudin suscipit risus sit amet eleifend. Etiam vulputate, lacus sit amet volutpat interdum, leo eros feugiat ante, vel dapibus nibh mi eu velit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam elementum eu enim eu sodales. Praesent feugiat fringilla ipsum. Nulla tincidunt, elit ac vestibulum faucibus, mi magna pharetra nisl, ac bibendum ipsum massa a purus. Duis pulvinar sem sit amet ultricies bibendum. Duis dignissim placerat diam eget sodales. Proin lobortis, nisl eget fringilla finibus, tellus mauris laoreet justo, sit amet aliquam dolor odio nec metus. Etiam consequat vel metus eu ornare. Quisque venenatis nisi sit amet arcu iaculis eleifend.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Integer id nulla eget leo sagittis eleifend sed ut urna. Cras tincidunt faucibus massa ac hendrerit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc fermentum eget orci a bibendum. In augue magna, sodales eu tincidunt non, placerat vitae risus. Aliquam sit amet convallis odio. Sed lobortis feugiat urna tempor accumsan. Nulla maximus nisl non leo pharetra congue. Donec eu accumsan velit, in congue neque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quisque a dapibus quam. Donec in augue posuere elit porta ullamcorper. Duis ornare lorem in condimentum venenatis. Donec id iaculis lorem. Sed id dictum risus, in mollis metus. Nullam porta ultrices libero, sit amet tristique nulla suscipit sed. Nullam pulvinar varius arcu, nec fringilla neque gravida at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In tempus euismod est, nec malesuada est semper at. Fusce sed commodo sapien.</p>\n<!-- /wp:paragraph -->', 'Des activités pour toute la famille', '', 'publish', 'open', 'open', '', 'des-activites-pour-toute-la-famille', '', '', '2019-04-26 21:12:55', '2019-04-26 19:12:55', '', 0, 'http://localhost/croque-ton-quartier-master/?p=27', 0, 'post', '', 0),
(28, 3, '2019-04-26 21:12:55', '2019-04-26 19:12:55', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tortor ex, ornare nec convallis malesuada, sodales placerat velit. Fusce facilisis mauris nec aliquet finibus. Ut ut tempor metus. Phasellus ullamcorper eros id lectus tincidunt, quis semper ligula lacinia. Cras ut justo malesuada, scelerisque nulla non, aliquet nunc. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vivamus sagittis ultrices neque, mollis pellentesque tortor pretium et. Phasellus sollicitudin nunc ac eros luctus, sed facilisis purus aliquam. Nulla facilisi. Integer id mi in metus mollis luctus. Aenean convallis, arcu vitae maximus laoreet, felis eros semper metus, ut pretium nisl ligula ut turpis. Etiam convallis at nibh sit amet elementum. Nunc ultricies ultricies neque ut rhoncus. Morbi semper enim ac augue laoreet commodo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Praesent tortor urna, porttitor a feugiat a, egestas quis risus. Suspendisse nec varius justo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel imperdiet ex, id blandit nisi. Curabitur mattis ipsum at magna euismod, in rutrum nisl sagittis. Ut ultrices ipsum in tortor aliquam, sed aliquet risus ultricies. Vestibulum est massa, lobortis a massa a, sollicitudin dictum justo. Mauris faucibus nunc urna, eu tempor quam dapibus nec. In hac habitasse platea dictumst. Integer id pulvinar elit. Aliquam enim leo, porttitor ac velit ut, cursus laoreet ligula. Ut sollicitudin suscipit risus sit amet eleifend. Etiam vulputate, lacus sit amet volutpat interdum, leo eros feugiat ante, vel dapibus nibh mi eu velit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam elementum eu enim eu sodales. Praesent feugiat fringilla ipsum. Nulla tincidunt, elit ac vestibulum faucibus, mi magna pharetra nisl, ac bibendum ipsum massa a purus. Duis pulvinar sem sit amet ultricies bibendum. Duis dignissim placerat diam eget sodales. Proin lobortis, nisl eget fringilla finibus, tellus mauris laoreet justo, sit amet aliquam dolor odio nec metus. Etiam consequat vel metus eu ornare. Quisque venenatis nisi sit amet arcu iaculis eleifend.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Integer id nulla eget leo sagittis eleifend sed ut urna. Cras tincidunt faucibus massa ac hendrerit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc fermentum eget orci a bibendum. In augue magna, sodales eu tincidunt non, placerat vitae risus. Aliquam sit amet convallis odio. Sed lobortis feugiat urna tempor accumsan. Nulla maximus nisl non leo pharetra congue. Donec eu accumsan velit, in congue neque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quisque a dapibus quam. Donec in augue posuere elit porta ullamcorper. Duis ornare lorem in condimentum venenatis. Donec id iaculis lorem. Sed id dictum risus, in mollis metus. Nullam porta ultrices libero, sit amet tristique nulla suscipit sed. Nullam pulvinar varius arcu, nec fringilla neque gravida at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In tempus euismod est, nec malesuada est semper at. Fusce sed commodo sapien.</p>\n<!-- /wp:paragraph -->', 'Des activités pour toute la famille', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2019-04-26 21:12:55', '2019-04-26 19:12:55', '', 27, 'http://localhost/croque-ton-quartier-master/2019/04/26/27-revision-v1/', 0, 'revision', '', 0),
(29, 3, '2019-04-26 21:14:26', '2019-04-26 19:14:26', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tortor ex, ornare nec convallis malesuada, sodales placerat velit. Fusce facilisis mauris nec aliquet finibus. Ut ut tempor metus. Phasellus ullamcorper eros id lectus tincidunt, quis semper ligula lacinia. Cras ut justo malesuada, scelerisque nulla non, aliquet nunc. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vivamus sagittis ultrices neque, mollis pellentesque tortor pretium et. Phasellus sollicitudin nunc ac eros luctus, sed facilisis purus aliquam. Nulla facilisi. Integer id mi in metus mollis luctus. Aenean convallis, arcu vitae maximus laoreet, felis eros semper metus, ut pretium nisl ligula ut turpis. Etiam convallis at nibh sit amet elementum. Nunc ultricies ultricies neque ut rhoncus. Morbi semper enim ac augue laoreet commodo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Praesent tortor urna, porttitor a feugiat a, egestas quis risus. Suspendisse nec varius justo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel imperdiet ex, id blandit nisi. Curabitur mattis ipsum at magna euismod, in rutrum nisl sagittis. Ut ultrices ipsum in tortor aliquam, sed aliquet risus ultricies. Vestibulum est massa, lobortis a massa a, sollicitudin dictum justo. Mauris faucibus nunc urna, eu tempor quam dapibus nec. In hac habitasse platea dictumst. Integer id pulvinar elit. Aliquam enim leo, porttitor ac velit ut, cursus laoreet ligula. Ut sollicitudin suscipit risus sit amet eleifend. Etiam vulputate, lacus sit amet volutpat interdum, leo eros feugiat ante, vel dapibus nibh mi eu velit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam elementum eu enim eu sodales. Praesent feugiat fringilla ipsum. Nulla tincidunt, elit ac vestibulum faucibus, mi magna pharetra nisl, ac bibendum ipsum massa a purus. Duis pulvinar sem sit amet ultricies bibendum. Duis dignissim placerat diam eget sodales. Proin lobortis, nisl eget fringilla finibus, tellus mauris laoreet justo, sit amet aliquam dolor odio nec metus. Etiam consequat vel metus eu ornare. Quisque venenatis nisi sit amet arcu iaculis eleifend.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Integer id nulla eget leo sagittis eleifend sed ut urna. Cras tincidunt faucibus massa ac hendrerit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc fermentum eget orci a bibendum. In augue magna, sodales eu tincidunt non, placerat vitae risus. Aliquam sit amet convallis odio. Sed lobortis feugiat urna tempor accumsan. Nulla maximus nisl non leo pharetra congue. Donec eu accumsan velit, in congue neque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quisque a dapibus quam. Donec in augue posuere elit porta ullamcorper. Duis ornare lorem in condimentum venenatis. Donec id iaculis lorem. Sed id dictum risus, in mollis metus. Nullam porta ultrices libero, sit amet tristique nulla suscipit sed. Nullam pulvinar varius arcu, nec fringilla neque gravida at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In tempus euismod est, nec malesuada est semper at. Fusce sed commodo sapien.</p>\n<!-- /wp:paragraph -->', 'Que la plantation commence!', '', 'publish', 'open', 'open', '', 'que-la-plantation-commence', '', '', '2019-04-26 21:14:26', '2019-04-26 19:14:26', '', 0, 'http://localhost/croque-ton-quartier-master/?p=29', 0, 'post', '', 0),
(30, 3, '2019-04-26 21:14:14', '2019-04-26 19:14:14', '', 'plantation_commence', '', 'inherit', 'open', 'closed', '', 'plantation_commence', '', '', '2019-04-26 21:14:14', '2019-04-26 19:14:14', '', 29, 'http://localhost/croque-ton-quartier-master/wp-content/uploads/2019/04/plantation_commence.jpg', 0, 'attachment', 'image/jpeg', 0),
(31, 3, '2019-04-26 21:14:15', '2019-04-26 19:14:15', '', 'sacs_de_terreau', '', 'inherit', 'open', 'closed', '', 'sacs_de_terreau', '', '', '2019-04-26 21:14:15', '2019-04-26 19:14:15', '', 29, 'http://localhost/croque-ton-quartier-master/wp-content/uploads/2019/04/sacs_de_terreau.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 3, '2019-04-26 21:14:26', '2019-04-26 19:14:26', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tortor ex, ornare nec convallis malesuada, sodales placerat velit. Fusce facilisis mauris nec aliquet finibus. Ut ut tempor metus. Phasellus ullamcorper eros id lectus tincidunt, quis semper ligula lacinia. Cras ut justo malesuada, scelerisque nulla non, aliquet nunc. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vivamus sagittis ultrices neque, mollis pellentesque tortor pretium et. Phasellus sollicitudin nunc ac eros luctus, sed facilisis purus aliquam. Nulla facilisi. Integer id mi in metus mollis luctus. Aenean convallis, arcu vitae maximus laoreet, felis eros semper metus, ut pretium nisl ligula ut turpis. Etiam convallis at nibh sit amet elementum. Nunc ultricies ultricies neque ut rhoncus. Morbi semper enim ac augue laoreet commodo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Praesent tortor urna, porttitor a feugiat a, egestas quis risus. Suspendisse nec varius justo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel imperdiet ex, id blandit nisi. Curabitur mattis ipsum at magna euismod, in rutrum nisl sagittis. Ut ultrices ipsum in tortor aliquam, sed aliquet risus ultricies. Vestibulum est massa, lobortis a massa a, sollicitudin dictum justo. Mauris faucibus nunc urna, eu tempor quam dapibus nec. In hac habitasse platea dictumst. Integer id pulvinar elit. Aliquam enim leo, porttitor ac velit ut, cursus laoreet ligula. Ut sollicitudin suscipit risus sit amet eleifend. Etiam vulputate, lacus sit amet volutpat interdum, leo eros feugiat ante, vel dapibus nibh mi eu velit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam elementum eu enim eu sodales. Praesent feugiat fringilla ipsum. Nulla tincidunt, elit ac vestibulum faucibus, mi magna pharetra nisl, ac bibendum ipsum massa a purus. Duis pulvinar sem sit amet ultricies bibendum. Duis dignissim placerat diam eget sodales. Proin lobortis, nisl eget fringilla finibus, tellus mauris laoreet justo, sit amet aliquam dolor odio nec metus. Etiam consequat vel metus eu ornare. Quisque venenatis nisi sit amet arcu iaculis eleifend.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Integer id nulla eget leo sagittis eleifend sed ut urna. Cras tincidunt faucibus massa ac hendrerit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc fermentum eget orci a bibendum. In augue magna, sodales eu tincidunt non, placerat vitae risus. Aliquam sit amet convallis odio. Sed lobortis feugiat urna tempor accumsan. Nulla maximus nisl non leo pharetra congue. Donec eu accumsan velit, in congue neque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quisque a dapibus quam. Donec in augue posuere elit porta ullamcorper. Duis ornare lorem in condimentum venenatis. Donec id iaculis lorem. Sed id dictum risus, in mollis metus. Nullam porta ultrices libero, sit amet tristique nulla suscipit sed. Nullam pulvinar varius arcu, nec fringilla neque gravida at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In tempus euismod est, nec malesuada est semper at. Fusce sed commodo sapien.</p>\n<!-- /wp:paragraph -->', 'Que la plantation commence!', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2019-04-26 21:14:26', '2019-04-26 19:14:26', '', 29, 'http://localhost/croque-ton-quartier-master/2019/04/26/29-revision-v1/', 0, 'revision', '', 0),
(33, 3, '2019-04-25 21:15:34', '2019-04-25 19:15:34', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tortor ex, ornare nec convallis malesuada, sodales placerat velit. Fusce facilisis mauris nec aliquet finibus. Ut ut tempor metus. Phasellus ullamcorper eros id lectus tincidunt, quis semper ligula lacinia. Cras ut justo malesuada, scelerisque nulla non, aliquet nunc. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vivamus sagittis ultrices neque, mollis pellentesque tortor pretium et. Phasellus sollicitudin nunc ac eros luctus, sed facilisis purus aliquam. Nulla facilisi. Integer id mi in metus mollis luctus. Aenean convallis, arcu vitae maximus laoreet, felis eros semper metus, ut pretium nisl ligula ut turpis. Etiam convallis at nibh sit amet elementum. Nunc ultricies ultricies neque ut rhoncus. Morbi semper enim ac augue laoreet commodo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Praesent tortor urna, porttitor a feugiat a, egestas quis risus. Suspendisse nec varius justo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel imperdiet ex, id blandit nisi. Curabitur mattis ipsum at magna euismod, in rutrum nisl sagittis. Ut ultrices ipsum in tortor aliquam, sed aliquet risus ultricies. Vestibulum est massa, lobortis a massa a, sollicitudin dictum justo. Mauris faucibus nunc urna, eu tempor quam dapibus nec. In hac habitasse platea dictumst. Integer id pulvinar elit. Aliquam enim leo, porttitor ac velit ut, cursus laoreet ligula. Ut sollicitudin suscipit risus sit amet eleifend. Etiam vulputate, lacus sit amet volutpat interdum, leo eros feugiat ante, vel dapibus nibh mi eu velit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam elementum eu enim eu sodales. Praesent feugiat fringilla ipsum. Nulla tincidunt, elit ac vestibulum faucibus, mi magna pharetra nisl, ac bibendum ipsum massa a purus. Duis pulvinar sem sit amet ultricies bibendum. Duis dignissim placerat diam eget sodales. Proin lobortis, nisl eget fringilla finibus, tellus mauris laoreet justo, sit amet aliquam dolor odio nec metus. Etiam consequat vel metus eu ornare. Quisque venenatis nisi sit amet arcu iaculis eleifend.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Integer id nulla eget leo sagittis eleifend sed ut urna. Cras tincidunt faucibus massa ac hendrerit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc fermentum eget orci a bibendum. In augue magna, sodales eu tincidunt non, placerat vitae risus. Aliquam sit amet convallis odio. Sed lobortis feugiat urna tempor accumsan. Nulla maximus nisl non leo pharetra congue. Donec eu accumsan velit, in congue neque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quisque a dapibus quam. Donec in augue posuere elit porta ullamcorper. Duis ornare lorem in condimentum venenatis. Donec id iaculis lorem. Sed id dictum risus, in mollis metus. Nullam porta ultrices libero, sit amet tristique nulla suscipit sed. Nullam pulvinar varius arcu, nec fringilla neque gravida at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In tempus euismod est, nec malesuada est semper at. Fusce sed commodo sapien.</p>\n<!-- /wp:paragraph -->', 'Un 4e article', '', 'publish', 'open', 'open', '', 'un-4e-article', '', '', '2019-04-26 21:15:57', '2019-04-26 19:15:57', '', 0, 'http://localhost/croque-ton-quartier-master/?p=33', 0, 'post', '', 0),
(34, 3, '2019-04-26 21:15:34', '2019-04-26 19:15:34', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tortor ex, ornare nec convallis malesuada, sodales placerat velit. Fusce facilisis mauris nec aliquet finibus. Ut ut tempor metus. Phasellus ullamcorper eros id lectus tincidunt, quis semper ligula lacinia. Cras ut justo malesuada, scelerisque nulla non, aliquet nunc. </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Vivamus sagittis ultrices neque, mollis pellentesque tortor pretium et. Phasellus sollicitudin nunc ac eros luctus, sed facilisis purus aliquam. Nulla facilisi. Integer id mi in metus mollis luctus. Aenean convallis, arcu vitae maximus laoreet, felis eros semper metus, ut pretium nisl ligula ut turpis. Etiam convallis at nibh sit amet elementum. Nunc ultricies ultricies neque ut rhoncus. Morbi semper enim ac augue laoreet commodo.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Praesent tortor urna, porttitor a feugiat a, egestas quis risus. Suspendisse nec varius justo. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis vel imperdiet ex, id blandit nisi. Curabitur mattis ipsum at magna euismod, in rutrum nisl sagittis. Ut ultrices ipsum in tortor aliquam, sed aliquet risus ultricies. Vestibulum est massa, lobortis a massa a, sollicitudin dictum justo. Mauris faucibus nunc urna, eu tempor quam dapibus nec. In hac habitasse platea dictumst. Integer id pulvinar elit. Aliquam enim leo, porttitor ac velit ut, cursus laoreet ligula. Ut sollicitudin suscipit risus sit amet eleifend. Etiam vulputate, lacus sit amet volutpat interdum, leo eros feugiat ante, vel dapibus nibh mi eu velit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Etiam elementum eu enim eu sodales. Praesent feugiat fringilla ipsum. Nulla tincidunt, elit ac vestibulum faucibus, mi magna pharetra nisl, ac bibendum ipsum massa a purus. Duis pulvinar sem sit amet ultricies bibendum. Duis dignissim placerat diam eget sodales. Proin lobortis, nisl eget fringilla finibus, tellus mauris laoreet justo, sit amet aliquam dolor odio nec metus. Etiam consequat vel metus eu ornare. Quisque venenatis nisi sit amet arcu iaculis eleifend.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Integer id nulla eget leo sagittis eleifend sed ut urna. Cras tincidunt faucibus massa ac hendrerit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc fermentum eget orci a bibendum. In augue magna, sodales eu tincidunt non, placerat vitae risus. Aliquam sit amet convallis odio. Sed lobortis feugiat urna tempor accumsan. Nulla maximus nisl non leo pharetra congue. Donec eu accumsan velit, in congue neque.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Quisque a dapibus quam. Donec in augue posuere elit porta ullamcorper. Duis ornare lorem in condimentum venenatis. Donec id iaculis lorem. Sed id dictum risus, in mollis metus. Nullam porta ultrices libero, sit amet tristique nulla suscipit sed. Nullam pulvinar varius arcu, nec fringilla neque gravida at. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In tempus euismod est, nec malesuada est semper at. Fusce sed commodo sapien.</p>\n<!-- /wp:paragraph -->', 'Un 4e article', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2019-04-26 21:15:34', '2019-04-26 19:15:34', '', 33, 'http://localhost/croque-ton-quartier-master/2019/04/26/33-revision-v1/', 0, 'revision', '', 0),
(35, 2, '2019-04-28 18:16:01', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-04-28 18:16:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?p=35', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(40, 2, '2019-04-28 20:02:38', '2019-04-28 18:02:38', '<!-- wp:heading --><h2>Qui sommes-nous ?</h2><!-- /wp:heading --><!-- wp:paragraph --><p>L’adresse de notre site Web est : http://localhost/TP4.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Utilisation des données personnelles collectées</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Commentaires</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Quand vous laissez un commentaire sur notre site web, les données inscrites dans le formulaire de commentaire, mais aussi votre adresse IP et l’agent utilisateur de votre navigateur sont collectés pour nous aider à la détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Une chaîne anonymisée créée à partir de votre adresse de messagerie (également appelée hash) peut être envoyée au service Gravatar pour vérifier si vous utilisez ce dernier. Les clauses de confidentialité du service Gravatar sont disponibles ici : https://automattic.com/privacy/. Après validation de votre commentaire, votre photo de profil sera visible publiquement à coté de votre commentaire.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Médias</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous êtes un utilisateur ou une utilisatrice enregistré·e et que vous téléversez des images sur le site web, nous vous conseillons d’éviter de téléverser des images contenant des données EXIF de coordonnées GPS. Les visiteurs de votre site web peuvent télécharger et extraire des données de localisation depuis ces images.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Formulaires de contact</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous déposez un commentaire sur notre site, il vous sera proposé d’enregistrer votre nom, adresse de messagerie et site web dans des cookies. C’est uniquement pour votre confort afin de ne pas avoir à saisir ces informations si vous déposez un autre commentaire plus tard. Ces cookies expirent au bout d’un an.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si vous avez un compte et que vous vous connectez sur ce site, un cookie temporaire sera créé afin de déterminer si votre navigateur accepte les cookies. Il ne contient pas de données personnelles et sera supprimé automatiquement à la fermeture de votre navigateur.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Lorsque vous vous connecterez, nous mettrons en place un certain nombre de cookies pour enregistrer vos informations de connexion et vos préférences d’écran. La durée de vie d’un cookie de connexion est de deux jours, celle d’un cookie d’option d’écran est d’un an. Si vous cochez « Se souvenir de moi », votre cookie de connexion sera conservé pendant deux semaines. Si vous vous déconnectez de votre compte, le cookie de connexion sera effacé.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>En modifiant ou en publiant une publication, un cookie supplémentaire sera enregistré dans votre navigateur. Ce cookie ne comprend aucune donnée personnelle. Il indique simplement l’ID de la publication que vous venez de modifier. Il expire au bout d’un jour.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Contenu embarqué depuis d’autres sites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Les articles de ce site peuvent inclure des contenus intégrés (par exemple des vidéos, images, articles…). Le contenu intégré depuis d’autres sites se comporte de la même manière que si le visiteur se rendait sur cet autre site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Ces sites web pourraient collecter des données sur vous, utiliser des cookies, embarquer des outils de suivis tiers, suivre vos interactions avec ces contenus embarqués si vous disposez d’un compte connecté sur leur site web.</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>Statistiques et mesures d’audience</h3><!-- /wp:heading --><!-- wp:heading --><h2>Utilisation et transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:heading --><h2>Durées de stockage de vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous laissez un commentaire, le commentaire et ses métadonnées sont conservés indéfiniment. Cela permet de reconnaître et approuver automatiquement les commentaires suivants au lieu de les laisser dans la file de modération.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Pour les utilisateurs et utilisatrices qui s’enregistrent sur notre site (si cela est possible), nous stockons également les données personnelles indiquées dans leur profil. Tous les utilisateurs et utilisatrices peuvent voir, modifier ou supprimer leurs informations personnelles à tout moment (à l’exception de leur nom d’utilisateur·ice). Les gestionnaires du site peuvent aussi voir et modifier ces informations.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Les droits que vous avez sur vos données</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si vous avez un compte ou si vous avez laissé des commentaires sur le site, vous pouvez demander à recevoir un fichier contenant toutes les données personnelles que nous possédons à votre sujet, incluant celles que vous nous avez fournies. Vous pouvez également demander la suppression des données personnelles vous concernant. Cela ne prend pas en compte les données stockées à des fins administratives, légales ou pour des raisons de sécurité.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Transmission de vos données personnelles</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Les commentaires des visiteurs peuvent être vérifiés à l’aide d’un service automatisé de détection des commentaires indésirables.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Informations de contact</h2><!-- /wp:heading --><!-- wp:heading --><h2>Informations supplémentaires</h2><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Comment nous protégeons vos données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Procédures mises en œuvre en cas de fuite de données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Les services tiers qui nous transmettent des données</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Opérations de marketing automatisé et/ou de profilage réalisées à l’aide des données personnelles</h3><!-- /wp:heading --><!-- wp:heading {"level":3} --><h3>Affichage des informations liées aux secteurs soumis à des régulations spécifiques</h3><!-- /wp:heading -->', 'Politique de confidentialité', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2019-04-28 20:02:38', '2019-04-28 18:02:38', '', 3, 'http://localhost/wordpress/2019/04/28/3-revision-v1/', 0, 'revision', '', 0),
(41, 2, '2019-04-28 20:02:40', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-04-28 20:02:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=41', 0, 'page', '', 0),
(42, 2, '2019-04-28 20:02:53', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-04-28 20:02:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/?page_id=42', 0, 'page', '', 0),
(43, 2, '2019-04-28 20:05:07', '2019-04-28 18:05:07', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tortor ex, ornare nec convallis malesuada, sodales placerat velit. Fusce facilisis mauris nec aliquet finibus. Ut ut tempor metus. Phasellus ullamcorper eros id lectus tincidunt, quis semper ligula lacinia. Cras ut justo malesuada, scelerisque nulla non, aliquet nunc. Vivamus sagittis ultrices neque, mollis pellentesque tortor pretium et. Phasellus sollicitudin nunc ac eros luctus, sed facilisis purus aliquam. Nulla facilisi. Integer id mi in metus mollis luctus. Aenean convallis, arcu vitae maximus laoreet, felis eros semper metus, ut pretium nisl ligula ut turpis. Etiam convallis at nibh sit amet elementum. Nunc ultricies ultricies neque ut rhoncus. Morbi semper enim ac augue laoreet commodo.', 'Accueil', '', 'publish', 'closed', 'closed', '', 'accueil', '', '', '2019-05-02 04:06:53', '2019-05-02 02:06:53', '', 0, 'http://localhost/wordpress/?page_id=43', 0, 'page', '', 0),
(44, 2, '2019-04-28 20:05:07', '2019-04-28 18:05:07', ' ', '', '', 'publish', 'closed', 'closed', '', '44', '', '', '2019-04-28 20:06:02', '2019-04-28 18:06:02', '', 0, 'http://localhost/wordpress/2019/04/28/44/', 1, 'nav_menu_item', '', 0),
(45, 2, '2019-04-28 20:05:07', '2019-04-28 18:05:07', '', 'Accueil', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-04-28 20:05:07', '2019-04-28 18:05:07', '', 43, 'http://localhost/wordpress/2019/04/28/43-revision-v1/', 0, 'revision', '', 0),
(46, 2, '2019-04-28 20:05:21', '2019-04-28 18:05:21', '', 'Activités', '', 'publish', 'closed', 'closed', '', 'activites', '', '', '2019-04-28 20:05:21', '2019-04-28 18:05:21', '', 0, 'http://localhost/wordpress/?page_id=46', 0, 'page', '', 0),
(47, 2, '2019-04-28 20:05:21', '2019-04-28 18:05:21', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2019-04-28 20:06:02', '2019-04-28 18:06:02', '', 0, 'http://localhost/wordpress/2019/04/28/47/', 2, 'nav_menu_item', '', 0),
(48, 2, '2019-04-28 20:05:21', '2019-04-28 18:05:21', '', 'Activités', '', 'inherit', 'closed', 'closed', '', '46-revision-v1', '', '', '2019-04-28 20:05:21', '2019-04-28 18:05:21', '', 46, 'http://localhost/wordpress/2019/04/28/46-revision-v1/', 0, 'revision', '', 0),
(49, 2, '2019-04-28 20:05:29', '2019-04-28 18:05:29', '', 'Histoire', '', 'publish', 'closed', 'closed', '', 'histoire', '', '', '2019-04-28 20:05:29', '2019-04-28 18:05:29', '', 0, 'http://localhost/wordpress/?page_id=49', 0, 'page', '', 0),
(50, 2, '2019-04-28 20:05:29', '2019-04-28 18:05:29', ' ', '', '', 'publish', 'closed', 'closed', '', '50', '', '', '2019-04-28 20:06:02', '2019-04-28 18:06:02', '', 0, 'http://localhost/wordpress/2019/04/28/50/', 3, 'nav_menu_item', '', 0),
(51, 2, '2019-04-28 20:05:29', '2019-04-28 18:05:29', '', 'Histoire', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2019-04-28 20:05:29', '2019-04-28 18:05:29', '', 49, 'http://localhost/wordpress/2019/04/28/49-revision-v1/', 0, 'revision', '', 0),
(52, 2, '2019-04-28 20:05:36', '2019-04-28 18:05:36', '', 'Blogue', '', 'publish', 'closed', 'closed', '', 'blogue', '', '', '2019-05-01 22:44:34', '2019-05-02 02:44:34', '', 0, 'http://localhost/wordpress/?page_id=52', 0, 'page', '', 0),
(53, 2, '2019-04-28 20:05:36', '2019-04-28 18:05:36', ' ', '', '', 'publish', 'closed', 'closed', '', '53', '', '', '2019-04-28 20:06:02', '2019-04-28 18:06:02', '', 0, 'http://localhost/wordpress/2019/04/28/53/', 4, 'nav_menu_item', '', 0),
(54, 2, '2019-04-28 20:05:36', '2019-04-28 18:05:36', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2019-04-28 20:05:36', '2019-04-28 18:05:36', '', 52, 'http://localhost/wordpress/2019/04/28/52-revision-v1/', 0, 'revision', '', 0),
(55, 2, '2019-04-28 20:05:43', '2019-04-28 18:05:43', '', 'Nous joindre', '', 'publish', 'closed', 'closed', '', 'nous-joindre', '', '', '2019-04-28 20:05:43', '2019-04-28 18:05:43', '', 0, 'http://localhost/wordpress/?page_id=55', 0, 'page', '', 0),
(56, 2, '2019-04-28 20:05:43', '2019-04-28 18:05:43', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2019-04-28 20:06:02', '2019-04-28 18:06:02', '', 0, 'http://localhost/wordpress/2019/04/28/56/', 5, 'nav_menu_item', '', 0),
(57, 2, '2019-04-28 20:05:43', '2019-04-28 18:05:43', '', 'Nous joindre', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2019-04-28 20:05:43', '2019-04-28 18:05:43', '', 55, 'http://localhost/wordpress/2019/04/28/55-revision-v1/', 0, 'revision', '', 0),
(58, 2, '2019-04-29 14:46:43', '2019-04-29 12:46:43', '{\n    "croque-ton-quartier::header_textcolor": {\n        "value": "blank",\n        "type": "theme_mod",\n        "user_id": 2,\n        "date_modified_gmt": "2019-04-29 12:46:43"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '14c8fae1-ec3a-4eae-b3b5-558dea5efdd0', '', '', '2019-04-29 14:46:43', '2019-04-29 12:46:43', '', 0, 'http://localhost/wordpress/2019/04/29/14c8fae1-ec3a-4eae-b3b5-558dea5efdd0/', 0, 'customize_changeset', '', 0),
(59, 2, '2019-04-29 14:47:06', '2019-04-29 12:47:06', '{\n    "nav_menu[2]": {\n        "value": {\n            "name": "Menu_principal",\n            "description": "",\n            "parent": 0,\n            "auto_add": false\n        },\n        "type": "nav_menu",\n        "user_id": 2,\n        "date_modified_gmt": "2019-04-29 12:47:06"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '45cf0423-cf4a-4c43-ba34-9e87a396cc3e', '', '', '2019-04-29 14:47:06', '2019-04-29 12:47:06', '', 0, 'http://localhost/wordpress/2019/04/29/45cf0423-cf4a-4c43-ba34-9e87a396cc3e/', 0, 'customize_changeset', '', 0),
(60, 2, '2019-04-29 14:47:31', '2019-04-29 12:47:31', '{\n    "sidebars_widgets[sidebar-1]": {\n        "value": [],\n        "type": "option",\n        "user_id": 2,\n        "date_modified_gmt": "2019-04-29 12:47:31"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e9e803d0-5e88-49b7-93a7-60e234e650ed', '', '', '2019-04-29 14:47:31', '2019-04-29 12:47:31', '', 0, 'http://localhost/wordpress/2019/04/29/e9e803d0-5e88-49b7-93a7-60e234e650ed/', 0, 'customize_changeset', '', 0),
(61, 2, '2019-04-29 15:51:49', '2019-04-29 13:51:49', '{\n    "sidebars_widgets[footer-3]": {\n        "value": [\n            "nav_menu-3"\n        ],\n        "type": "option",\n        "user_id": 2,\n        "date_modified_gmt": "2019-04-29 13:51:49"\n    },\n    "widget_nav_menu[3]": {\n        "value": {\n            "encoded_serialized_instance": "YToyOntzOjU6InRpdGxlIjtzOjEyOiJQbGFuIGR1IHNpdGUiO3M6ODoibmF2X21lbnUiO2k6Mjt9",\n            "title": "Plan du site",\n            "is_widget_customizer_js_value": true,\n            "instance_hash_key": "36fdf956506b49e3e5b2605727482366"\n        },\n        "type": "option",\n        "user_id": 2,\n        "date_modified_gmt": "2019-04-29 13:51:49"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'a1efc9c3-4cf7-44e9-aa07-317e0e831995', '', '', '2019-04-29 15:51:49', '2019-04-29 13:51:49', '', 0, 'http://localhost/wordpress/2019/04/29/a1efc9c3-4cf7-44e9-aa07-317e0e831995/', 0, 'customize_changeset', '', 0),
(62, 2, '2019-04-29 19:28:27', '2019-04-29 19:28:27', '', 'uploads', '', 'publish', 'closed', 'closed', '', 'uploads', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads', 0, 'mgmlp_media_folder', '', 0),
(63, 2, '2019-04-29 19:28:27', '2019-04-29 19:28:27', '', '2019', '', 'publish', 'closed', 'closed', '', '2019', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019', 0, 'mgmlp_media_folder', '', 0),
(64, 2, '2019-04-29 19:28:27', '2019-04-29 19:28:27', '', '04', '', 'publish', 'closed', 'closed', '', '04', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/04', 0, 'mgmlp_media_folder', '', 0),
(65, 2, '2019-04-29 19:28:27', '2019-04-29 19:28:27', '', '2015', '', 'publish', 'closed', 'closed', '', '2015', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2015', 0, 'mgmlp_media_folder', '', 0),
(66, 2, '2019-04-29 19:28:27', '2019-04-29 19:28:27', '', '07', '', 'publish', 'closed', 'closed', '', '07', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2015/07', 0, 'mgmlp_media_folder', '', 0),
(67, 2, '2019-04-29 19:28:27', '2019-04-29 19:28:27', '', '08', '', 'publish', 'closed', 'closed', '', '08', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2015/08', 0, 'mgmlp_media_folder', '', 0),
(68, 2, '2019-04-29 19:28:27', '2019-04-29 19:28:27', '', '2017', '', 'publish', 'closed', 'closed', '', '2017', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017', 0, 'mgmlp_media_folder', '', 0),
(69, 2, '2019-04-29 19:28:27', '2019-04-29 19:28:27', '', '05', '', 'publish', 'closed', 'closed', '', '05', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/05', 0, 'mgmlp_media_folder', '', 0),
(70, 2, '2019-04-29 19:28:27', '2019-04-29 19:28:27', '', '06', '', 'publish', 'closed', 'closed', '', '06', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/06', 0, 'mgmlp_media_folder', '', 0),
(71, 2, '2019-04-29 19:28:27', '2019-04-29 19:28:27', '', '08', '', 'publish', 'closed', 'closed', '', '08', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/08', 0, 'mgmlp_media_folder', '', 0),
(72, 2, '2019-04-29 19:28:27', '2019-04-29 19:28:27', '', '09', '', 'publish', 'closed', 'closed', '', '09', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2017/09', 0, 'mgmlp_media_folder', '', 0),
(73, 2, '2019-04-29 19:28:27', '2019-04-29 19:28:27', '', '2018', '', 'publish', 'closed', 'closed', '', '2018', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018', 0, 'mgmlp_media_folder', '', 0),
(74, 2, '2019-04-29 19:28:27', '2019-04-29 19:28:27', '', '04', '', 'publish', 'closed', 'closed', '', '04', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/04', 0, 'mgmlp_media_folder', '', 0),
(75, 2, '2019-04-29 19:28:27', '2019-04-29 19:28:27', '', '06', '', 'publish', 'closed', 'closed', '', '06', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2018/06', 0, 'mgmlp_media_folder', '', 0),
(76, 2, '2019-04-29 19:28:27', '2019-04-29 19:28:27', '', '03', '', 'publish', 'closed', 'closed', '', '03', '', '', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/03', 0, 'mgmlp_media_folder', '', 0),
(77, 2, '2019-04-29 19:31:32', '2019-04-29 17:31:32', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2019-04-29 19:31:32', '2019-04-29 17:31:32', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/04/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(78, 2, '2019-04-29 19:33:41', '2019-04-29 17:33:41', '', 'logo-footer', '', 'inherit', 'open', 'closed', '', 'logo-footer', '', '', '2019-04-29 19:33:41', '2019-04-29 17:33:41', '', 0, 'http://localhost/wordpress/wp-content/uploads/2019/04/logo-footer.png', 0, 'attachment', 'image/png', 0),
(79, 1, '2019-05-01 20:45:49', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-05-01 20:45:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpress/croque-ton-cartier/?p=79', 0, 'post', '', 0),
(80, 3, '2019-05-02 04:06:53', '2019-05-02 02:06:53', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus tortor ex, ornare nec convallis malesuada, sodales placerat velit. Fusce facilisis mauris nec aliquet finibus. Ut ut tempor metus. Phasellus ullamcorper eros id lectus tincidunt, quis semper ligula lacinia. Cras ut justo malesuada, scelerisque nulla non, aliquet nunc. Vivamus sagittis ultrices neque, mollis pellentesque tortor pretium et. Phasellus sollicitudin nunc ac eros luctus, sed facilisis purus aliquam. Nulla facilisi. Integer id mi in metus mollis luctus. Aenean convallis, arcu vitae maximus laoreet, felis eros semper metus, ut pretium nisl ligula ut turpis. Etiam convallis at nibh sit amet elementum. Nunc ultricies ultricies neque ut rhoncus. Morbi semper enim ac augue laoreet commodo.', 'Accueil', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2019-05-02 04:06:53', '2019-05-02 02:06:53', '', 43, 'http://localhost/wordpress/croque-ton-cartier/2019/05/02/43-revision-v1/', 0, 'revision', '', 0),
(81, 3, '2019-05-01 22:20:30', '2019-05-02 02:20:30', '', 'Blogue', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2019-05-01 22:20:30', '2019-05-02 02:20:30', '', 52, 'http://localhost/wordpress/croque-ton-cartier/2019/05/01/52-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Non classé', 'non-classe', 0),
(2, 'Menu_principal', 'menu_principal', 0),
(3, 'simple', 'simple', 0),
(4, 'grouped', 'grouped', 0),
(5, 'variable', 'variable', 0),
(6, 'external', 'external', 0),
(7, 'exclude-from-search', 'exclude-from-search', 0),
(8, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(9, 'featured', 'featured', 0),
(10, 'outofstock', 'outofstock', 0),
(11, 'rated-1', 'rated-1', 0),
(12, 'rated-2', 'rated-2', 0),
(13, 'rated-3', 'rated-3', 0),
(14, 'rated-4', 'rated-4', 0),
(15, 'rated-5', 'rated-5', 0),
(16, 'Non classé', 'non-classe', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(18, 1, 0),
(27, 1, 0),
(29, 1, 0),
(33, 1, 0),
(44, 2, 0),
(47, 2, 0),
(50, 2, 0),
(53, 2, 0),
(56, 2, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_type', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_cat', '', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'dupe23'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:2:{s:64:"d9024af92914ce4c919e33ca9696ed2687fe756d262bd9c51bbaa4e7c0f0b226";a:4:{s:10:"expiration";i:1556909148;s:2:"ip";s:3:"::1";s:2:"ua";s:78:"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0";s:5:"login";i:1556736348;}s:64:"949f0e420b6b89702a29a280ae2f00ce00689c0303556e20436ae75381fbcd82";a:4:{s:10:"expiration";i:1556919692;s:2:"ip";s:3:"::1";s:2:"ua";s:78:"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:65.0) Gecko/20100101 Firefox/65.0";s:5:"login";i:1556746892;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '79'),
(18, 2, 'nickname', 'user'),
(19, 2, 'first_name', ''),
(20, 2, 'last_name', ''),
(21, 2, 'description', ''),
(22, 2, 'rich_editing', 'true'),
(23, 2, 'syntax_highlighting', 'true'),
(24, 2, 'comment_shortcuts', 'false'),
(25, 2, 'admin_color', 'fresh'),
(26, 2, 'use_ssl', '0'),
(27, 2, 'show_admin_bar_front', 'false'),
(28, 2, 'locale', ''),
(29, 2, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(30, 2, 'wp_user_level', '10'),
(31, 2, 'dismissed_wp_pointers', 'wp496_privacy'),
(32, 3, 'nickname', 'jmcTP2'),
(33, 3, 'first_name', ''),
(34, 3, 'last_name', ''),
(35, 3, 'description', ''),
(36, 3, 'rich_editing', 'true'),
(37, 3, 'syntax_highlighting', 'true'),
(38, 3, 'comment_shortcuts', 'false'),
(39, 3, 'admin_color', 'fresh'),
(40, 3, 'use_ssl', '0'),
(41, 3, 'show_admin_bar_front', 'true'),
(42, 3, 'locale', ''),
(43, 3, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(44, 3, 'wp_user_level', '10'),
(45, 3, 'dismissed_wp_pointers', 'wp496_privacy'),
(46, 4, 'nickname', 'jfpepin'),
(47, 4, 'first_name', ''),
(48, 4, 'last_name', ''),
(49, 4, 'description', ''),
(50, 4, 'rich_editing', 'true'),
(51, 4, 'syntax_highlighting', 'true'),
(52, 4, 'comment_shortcuts', 'false'),
(53, 4, 'admin_color', 'fresh'),
(54, 4, 'use_ssl', '0'),
(55, 4, 'show_admin_bar_front', 'true'),
(56, 4, 'locale', ''),
(57, 4, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(58, 4, 'wp_user_level', '10'),
(59, 4, 'dismissed_wp_pointers', 'wp496_privacy'),
(62, 2, 'wp_dashboard_quick_press_last_post_id', '35'),
(63, 3, 'session_tokens', 'a:1:{s:64:"588ea932e4cd1c99f7349bf851a3e75b03b7f58b0cb5b5a48d438d6592c952ad";a:4:{s:10:"expiration";i:1556935316;s:2:"ip";s:3:"::1";s:2:"ua";s:114:"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36";s:5:"login";i:1556762516;}}'),
(64, 3, 'wp_dashboard_quick_press_last_post_id', '7'),
(65, 3, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(66, 3, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(67, 3, 'nav_menu_recently_edited', '2'),
(68, 3, 'wp_user-settings', 'libraryContent=browse'),
(69, 3, 'wp_user-settings-time', '1556305261'),
(71, 2, 'nav_menu_recently_edited', '2'),
(72, 2, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(73, 2, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(74, 2, '_woocommerce_persistent_cart_1', 'a:1:{s:4:"cart";a:0:{}}'),
(75, 2, 'dismissed_install_notice', '1'),
(76, 2, 'dismissed_no_secure_connection_notice', '1'),
(77, 2, 'dismissed_wootenberg_notice', '1'),
(78, 2, 'wc_last_active', '1556668800'),
(80, 2, 'wp_user-settings', 'libraryContent=browse'),
(81, 2, 'wp_user-settings-time', '1556558860'),
(82, 2, 'maxgalleria_mlp_review_notice', '2019-04-30'),
(83, 2, '_woocommerce_tracks_anon_id', 'woo:zsiuOHbO8dzYlF2jA8OPFfXb'),
(85, 1, 'wp_user-settings', 'mfold=o&editor=tinymce&libraryContent=browse'),
(86, 1, 'wp_user-settings-time', '1556736343'),
(87, 1, 'nav_menu_recently_edited', '2'),
(88, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(89, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(90, 3, 'community-events-location', 'a:4:{s:11:"description";s:7:"Québec";s:8:"latitude";s:10:"46.8122800";s:9:"longitude";s:11:"-71.2145400";s:7:"country";s:2:"CA";}'),
(91, 3, 'closedpostboxes_page', 'a:1:{i:0;s:12:"postimagediv";}'),
(92, 3, 'metaboxhidden_page', 'a:6:{i:0;s:12:"revisionsdiv";i:1;s:10:"postcustom";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}');

-- --------------------------------------------------------

--
-- Structure de la table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Contenu de la table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'dupe23', '$P$BHA.Q8j1FcojID.aiwCd5ViFdZPYf11', 'dupe23', 'alexandredupont23@gmail.com', '', '2019-04-12 16:11:22', '', 0, 'dupe23'),
(2, 'user', '$P$BDcW80IrSEWk1GJJvbNt2qvhkAMN8y/', 'user', 'gabrielnadoncanada@gmail.com', '', '2019-04-12 17:37:59', '1555090680:$P$Bm4Aqg27X0OuJQ/xLnyrwnhs3LQgER0', 0, 'user'),
(3, 'jmcTP2', '$P$B9uziydFokO8TdRO59VRpceCjxKTxJ1', 'jmctp2', 'jeanmariecoen@gmail.com', '', '2019-04-12 17:40:01', '1555090802:$P$BD7UFzAvo1lfHkN/Ax94vlFLNOnEVc0', 0, 'jmcTP2'),
(4, 'jfpepin', '$P$ByDGGDVd/cFMFRcVmFel/pMBS7Fs9y.', 'jfpepin', 'exemple@hotmail.com', '', '2019-04-12 17:41:39', '1555090900:$P$BA7VeoW4qpbZyqHtFn03I1keaIJ2yX1', 0, 'jfpepin');

-- --------------------------------------------------------

--
-- Structure de la table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(10,2) DEFAULT NULL,
  `max_price` decimal(10,2) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(30, '2', 'a:7:{s:4:"cart";s:6:"a:0:{}";s:11:"cart_totals";s:367:"a:15:{s:8:"subtotal";i:0;s:12:"subtotal_tax";i:0;s:14:"shipping_total";i:0;s:12:"shipping_tax";i:0;s:14:"shipping_taxes";a:0:{}s:14:"discount_total";i:0;s:12:"discount_tax";i:0;s:19:"cart_contents_total";i:0;s:17:"cart_contents_tax";i:0;s:19:"cart_contents_taxes";a:0:{}s:9:"fee_total";i:0;s:7:"fee_tax";i:0;s:9:"fee_taxes";a:0:{}s:5:"total";i:0;s:9:"total_tax";i:0;}";s:15:"applied_coupons";s:6:"a:0:{}";s:22:"coupon_discount_totals";s:6:"a:0:{}";s:26:"coupon_discount_tax_totals";s:6:"a:0:{}";s:21:"removed_cart_contents";s:6:"a:0:{}";s:8:"customer";s:716:"a:26:{s:2:"id";s:1:"2";s:13:"date_modified";s:0:"";s:8:"postcode";s:0:"";s:4:"city";s:0:"";s:9:"address_1";s:0:"";s:7:"address";s:0:"";s:9:"address_2";s:0:"";s:5:"state";s:0:"";s:7:"country";s:2:"CA";s:17:"shipping_postcode";s:0:"";s:13:"shipping_city";s:0:"";s:18:"shipping_address_1";s:0:"";s:16:"shipping_address";s:0:"";s:18:"shipping_address_2";s:0:"";s:14:"shipping_state";s:0:"";s:16:"shipping_country";s:2:"CA";s:13:"is_vat_exempt";s:0:"";s:19:"calculated_shipping";s:0:"";s:10:"first_name";s:0:"";s:9:"last_name";s:0:"";s:7:"company";s:0:"";s:5:"phone";s:0:"";s:5:"email";s:28:"gabrielnadoncanada@gmail.com";s:19:"shipping_first_name";s:0:"";s:18:"shipping_last_name";s:0:"";s:16:"shipping_company";s:0:"";}";}', 1556908299);

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'Canada', 0);

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'CA:QC', 'state');

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Contenu de la table `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'free_shipping', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Index pour la table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Index pour la table `wp_mgmlp_folders`
--
ALTER TABLE `wp_mgmlp_folders`
  ADD PRIMARY KEY (`post_id`);

--
-- Index pour la table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Index pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Index pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Index pour la table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Index pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Index pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Index pour la table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Index pour la table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Index pour la table `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Index pour la table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Index pour la table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Index pour la table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Index pour la table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Index pour la table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Index pour la table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Index pour la table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Index pour la table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Index pour la table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Index pour la table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Index pour la table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Index pour la table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Index pour la table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Index pour la table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=798;
--
-- AUTO_INCREMENT pour la table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;
--
-- AUTO_INCREMENT pour la table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;
--
-- AUTO_INCREMENT pour la table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT pour la table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
--
-- AUTO_INCREMENT pour la table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
