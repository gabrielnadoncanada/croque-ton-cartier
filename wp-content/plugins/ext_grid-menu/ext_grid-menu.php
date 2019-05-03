<?php
/*
Plugin Name: extension grille-de-menu
Description: Modifications de WordPress (ajout d'un post_type "grid-menu") pour afficher le contenu de la grille de menu sur la page d'accueil.
Version: 1.0
Author: Jean-Marie Coen (sur base d'un code de Jean-François Pépin)
*/

function ajout_post_menuGrid()
{
    $labelsMenuGrid = array(
        'name' => "Grille de menu (accueil)",
        'singular_name' => "menuGrid",
        'add_new' => "Ajouter une grille de menu",
        'add_new_item' => "Ajouter une grille de menu",
        'edit_item' => "Modifier une grille de menu",
        'new_item' => "Nouvelle grille de menu",
        'all_items' => "Toutes les grilles de menu",
        'view_item' => "Voir la grille de menu",
        'search_items' => "Chercher une grille de menu",
        'not_found' =>  "Aucune grille de menu trouvée",
        'menu_name' => "Grille de menu"
    );

    $argMenuGrid = array(
        'labels' => $labelsMenuGrid,
        'public' => true,
        'has_archive' => false,
        'hierarchical' => true,
        'menu_position' => 20,
        'menu_icon' => 'dashicons-grid-view',
        'supports' => array('title', 'thumbnail', 'editor', 'revisions', 'page-attributes')
    );

    register_post_type('menuGrid', $argMenuGrid);
}

add_action('init', 'ajout_post_menuGrid'); // ceci est un "hook" pour Wordpress
?>