<?php
/*
Plugin Name: ctqActivite
Description: Modifications de WordPress (ex: ajout d'activité) pour le site de croque ton quartier.
Version: 1.0
Author: Alexandre Dupont
*/



function ajout_post_activite(){
	$labelsActivites = array(
    'name' => "Activités",
    'singular_name' => "Activité",
    'add_new' => "Ajouter une activité",
    'add_new_item' => "Ajouter une activité",
    'edit_item' => "Modifier une activité",
    'new_item' => "Nouvelle activité",
    'all_items' => "Toutes les activités",
    'view_item' => "Voir l'activité",
    'search_items' => "Chercher une activité",
    'not_found' =>  "Aucune activité trouvé",
    'menu_name' => "Mes activités"
);

  $argActivite = array(
    'labels' => $labelsActivites,
    'public' => true,
    'has_archive' => true,
    'hierarchical' => true,
    'menu_position' => 20,
    'menu_icon' => 'dashicons-carrot',
    'supports' => array('title', 'thumbnail', 'editor', 'revisions', 'page-attributes')
);
  register_post_type('activites', $argActivite);

}

add_action('init', 'ajout_post_activite');
?>
