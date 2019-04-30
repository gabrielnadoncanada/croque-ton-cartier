<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package croque-ton-quartier
 */

?>

	</div><!-- #content -->

	<footer id="colophon" class="site-footer">
			<div class="row">
				<?php dynamic_sidebar( 'footer-1' ); ?>
				<?php dynamic_sidebar( 'footer-2' ); ?>
				<?php dynamic_sidebar( 'footer-3' ); ?>
				<?php dynamic_sidebar( 'footer-4' ); ?>
				<?php dynamic_sidebar( 'footer-5' ); ?>
			</div>
	</footer><!-- #colophon -->
</div><!-- #page -->

<?php wp_footer(); ?>

</body>
</html>
