<?php
/*
Plugin Name: Hero State
Description: Ajout d'un hero banner permettant de diffuser plusieurs états pour le site de Croque mon Cartier.
Version: 1.0
Author: Gabriel Nadon
*/




add_action( 'admin_menu', 'my_plugin_menu' );


function my_plugin_menu() {
	add_menu_page( 'My Plugin Options', 'Hero State', 'manage_options', 'my-unique-identifier', 'my_plugin_options' );
}


function my_plugin_options() {
	if ( !current_user_can( 'manage_options' ) )  {
		wp_die( __( 'You do not have sufficient permissions to access this page.' ) );
	}
	echo '<div class="wrap">';
	echo '<p>Here is where the form would go if I actually had options.</p>';
	echo '</div>';
}

?>
