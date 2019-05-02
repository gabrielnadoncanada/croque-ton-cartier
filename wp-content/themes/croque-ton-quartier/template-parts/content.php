<?php
/**
 * Template part for displaying posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package croque-ton-quartier
 */

?>
<div class="container">
	<div class="cadre">

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<header class="entry-header">
		<?php
		if ( is_singular() ) :
			the_title( '<h1 class="entry-title">', '</h1>' );
		else :
			the_title( '<h2 class="entry-title"><a href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h2>' );
		endif;

		if ( 'post' === get_post_type() ) :
			?>
			<div class="entry-meta">
				<?php
				croque_ton_quartier_posted_on();
				croque_ton_quartier_posted_by();
				?>
			</div><!-- .entry-meta -->
		<?php endif; ?>
	</header><!-- .entry-header -->

	<div class="entry-content article-blog">
		<div class="photo">
			<div class="thumbnail">
			<?php
		the_post_thumbnail('large');
		?>
			<ul class="infos">
				<li> Date:
					<?php the_date();?></li>
				<?php
					$categories = get_the_category();
				?>
				<?php if($categories) : ?>
				<li>Catégorie(s) : </li>
				<ul class="no-style">
					<?php foreach($categories as $cat):?>
					<?php $url = get_category_link($cat->term_id);?>
					<li><a class="call-to-action" href="<?php $url; ?>">
							<?php echo $cat->name; ?>
						</a></li>
					<?php endforeach;?>
				</ul>
				</ul>
				<?php endif;?>
			</div>
		</div>
		<div class="article-content">
			<?php $blogUrl = get_permalink( get_option('page_for_posts') );?>
			<h2>Par : <?php the_author();?></h2>
			<?php the_content();?>
			<a href="<?php echo $blogUrl;?>" class="call-to-action">Retour au blogue</a>
		</div>
	</div>

</article><!-- #post-<?php the_ID(); ?> -->
</div>
