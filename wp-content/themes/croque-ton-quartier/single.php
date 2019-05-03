<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package croque-ton-quartier
 */

get_header();
?>
<div class="container">
	<div id="primary" class="content-area">
		<main id="main" class="site-main">
			<div class="second-border">

		<?php
		while ( have_posts() ) :
			the_post();

			get_template_part( 'template-parts/content', get_post_type() );

			the_post_navigation();

			// If comments are open or we have at least one comment, load up the comment template.

		endwhile; // End of the loop.
		?>

			</div><!-- second-border -->
		</main><!-- #main -->
	</div><!-- #primary -->
</div><!-- container -->

<?php
get_sidebar();
get_footer();
