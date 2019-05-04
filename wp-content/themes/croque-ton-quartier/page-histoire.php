<?php
/**
 * Template Name: Page Histoire
 * 
 * The template for displaying the page Histoire of Croque ton Quartier.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package croque-ton-quartier
 */

get_header();
?>

<!-- Première partie : encadré du résumé (titre et excerpt - only):  -->

<div class="container">
	<div id="primary" class="content-area">
		<main id="main" class="site-main">
			<div class="second-border">

		<?php
		while ( have_posts() ) :
			the_post();

			get_template_part( 'template-parts/content', 'page' );

			// If comments are open or we have at least one comment, load up the comment template.
			// if ( comments_open() || get_comments_number() ) :
			// 	comments_template();
			// endif;

		endwhile; // End of the loop.
		?>

			</div><!-- second-border -->		
		</main><!-- #main -->
	</div><!-- #primary -->
</div><!-- container -->

<!-- Deuxième partie : grille-menu de la page d'accueil:  -->

<section class="grille_de_menu">
	<?php 
		$args1 = array(
			'post_type' => 'menuGrid',
			'posts_per_page' => 4
		);
		$grilleDeMenu = new WP_Query( $args1 );
			
		if ( $grilleDeMenu->have_posts() ) :
			?>
			<section id="grille-menu">
				<div class="grid-container">
				<!-- /* Start the Loop */ -->
					<?php
						while ( $grilleDeMenu->have_posts() ) :
							$grilleDeMenu->the_post();

							get_template_part( 'template-parts/excerpt', get_post_type() );

						endwhile; // End of the loop.
					?>
				</div>
			</section>

		<?php
		else :        
			get_template_part( 'template-parts/content', 'none' );
		endif;
		wp_reset_postdata();
	?>
</section>


<!-- Troisème partie : lien Facebook de la page d'accueil:  -->


<?php
get_sidebar();
get_footer();
