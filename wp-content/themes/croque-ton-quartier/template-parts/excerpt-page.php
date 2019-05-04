<?php
/**
 * Template part for displaying the title and EXCERPT of a page in page.php
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

	<div class="entry-content">
		<?php
        the_excerpt();
        ?>
	</div>
</article>