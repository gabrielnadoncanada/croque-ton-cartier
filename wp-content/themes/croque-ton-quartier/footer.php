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
<script
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD-ehZGzI8PQyKWFfzq6Q4X2nzi61MuP7E&callback=initMap">
  </script>
</body>
</html>
