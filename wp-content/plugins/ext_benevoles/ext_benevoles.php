<?php
/*
Plugin Name: extension bénévoles
Description: Modifications de WordPress (ajout d'un post_type "benevoles") pour afficher les fiches de bénévoles sur la page histoire.
Version: 1.0
Author: Jean-Marie Coen (sur base d'un code de Jean-François Pépin)
*/

function ajout_post_benevoles()
{
    $labelsBenevoles = array(
        'name' => "Bénévoles (histoire)",
        'singular_name' => "benevole",
        'add_new' => "Ajouter un bénévole",
        'add_new_item' => "Ajouter un bénévole",
        'edit_item' => "Modifier un bénévole",
        'new_item' => "Nouveau bénévole",
        'all_items' => "Tous les bénévoles",
        'view_item' => "Voir le bénévole",
        'search_items' => "Chercher un bénévole",
        'not_found' =>  "Aucun bénévole trouvé",
        'menu_name' => "Nos bénévoles"
    );

    $argBenevoles = array(
        'labels' => $labelsBenevoles,
        'public' => true,
        'has_archive' => false,
        'hierarchical' => true,
        'menu_position' => 20,
        'menu_icon' => 'dashicons-universal-access',
        'supports' => array('title', 'thumbnail', 'editor', 'revisions', 'page-attributes')
    );

    register_post_type('benevole', $argBenevoles);
}

add_action('init', 'ajout_post_benevoles'); // ceci est un "hook" pour Wordpress
?>