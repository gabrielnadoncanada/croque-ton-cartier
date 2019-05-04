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
            get_template_part( 'template-parts/excerpt', 'page' );
          endwhile; // End of the loop.
        ?>

			</div><!-- second-border -->		
    </main><!-- #main -->
    

    
	</div><!-- #primary -->
</div><!-- container -->

<!-- Troisième partie: les bénévoles  -->

<section class="grille_benevoles">
	<?php 
		$args1 = array(
			'post_type' => 'benevole',
			'posts_per_page' => 4
		);
		$benevoles = new WP_Query( $args1 );
			
		if ( $benevoles->have_posts() ) :
			?>
			<section id="grille-menu">
				<div class="grid-container">
				<!-- /* Start the Loop */ -->
					<?php
						while ( $benevoles->have_posts() ) :
							$benevoles->the_post();

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
