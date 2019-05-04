<?php
/**
 * Template part for displaying page content in page.php
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package croque-ton-quartier
 */

?>

<article id="post-<?php the_ID();?>" <?php post_class();?>>
	<header class="entry-header">
		<?php the_title('<h1 class="entry-title">', '</h1>');?>
	</header>

	<?php croque_ton_quartier_post_thumbnail();?>

	<div class="entry-content">
		<?php
the_post();

wp_link_pages(array(
    'before' => '<div class="page-links">' . esc_html__('Pages:', 'croque-ton-quartier'),
    'after' => '</div>',
));
?>
	</div>

	<?php if (get_edit_post_link()): ?>
		<footer class="entry-footer">
			<!-- <?php
edit_post_link(
    sprintf(
        wp_kses(
            __('Edit <span class="screen-reader-text">%s</span>', 'croque-ton-quartier'),
            array(
                'span' => array(
                    'class' => array(),
                ),
            )
        ),
        get_the_title()
    ),
    '<span class="edit-link">',
    '</span>'
);
?> -->
		</footer>
	<?php endif;?>
</article>