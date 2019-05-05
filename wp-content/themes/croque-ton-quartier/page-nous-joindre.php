<?php 
/* Template Name: Nous-Joindre Template */ 

get_header();
?>

<div class="container">
	<div id="primary" class="content-area">
		<main id="main" class="site-main">
			<div class="second-border">
			<div class="row">
			<div class="col">
			<?php
				while ( have_posts() ) :
					the_post();
					get_template_part( 'template-parts/content', 'page' );
						
					
				endwhile; // End of the loop.	
				?>
			</div>
			</div>
				
				<div class="row">
					<div class="col w50">
					<?php echo do_shortcode( '[contact-form-7 id="178" title="Contact form 1"]' ); ?>
					</div>
					
					<div class="col w50">
					<?php $location = get_field('map');
					if( !empty($location) ):
					?>
					<div class="acf-map">
						<div class="marker" data-lat="<?php echo $location['lat']; ?>" data-lng="<?php echo $location['lng']; ?>"></div>
					</div>
					<?php endif; ?>
					</div>
				</div>
		
		

			</div><!-- second-border -->		
		</main><!-- #main -->
		
		
		
	</div><!-- #primary -->
</div><!-- container -->

<?php
get_sidebar();
get_footer();
