<?php
/*
Plugin Name: Hero State
Description: Modifications de WordPress (ex: ajout de statut custom pour le hero-banner) pour le site de Croque ton cartier.
Version: 1.0
Author: Gabriel Nadon
*/

function ajout_post_hero(){
	// On ajoute ici le code des prochaines étapes
	$labelsServices = array(
		'name' => "heroes",
		'singular_name' => "hero",
		'add_new' => "Ajouter un hero",
		'add_new_item' => "Ajouter un hero",
		'edit_item' => "Modifier un hero",
		'new_item' => "Nouveau hero",
		'all_items' => "Tous les heroes",
		'view_item' => "Voir le hero",
		'search_items' => "Chercher un hero",
		'not_found' =>  "Aucun hero trouvé",
		'menu_name' => "Mes heros"
	);
	
	$argService = array(
		'labels' => $labelsServices,
		'public' => true,
		'has_archive' => true,
		'hierarchical' => true,
		'menu_position' => 20,
		'menu_icon' => 'dashicons-images-alt2',
		'supports' => array('title', 'thumbnail', 'editor', 'revisions', 'page-attributes')
	);
	
	register_post_type('forfaits', $argService);
}

add_action( 'init', 'ajout_post_hero');

?>

