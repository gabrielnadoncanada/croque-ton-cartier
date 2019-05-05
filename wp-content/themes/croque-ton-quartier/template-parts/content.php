<?php
/**
 * Template part for displaying posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package croque-ton-quartier
 */

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<header class="entry-header">
		<?php
		if ( is_singular() ) :
			the_title( '<h1 class="entry-title">', '</h1>' );
		else :
			the_title( '<h2 class="entry-title"><a href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h2>' );
		endif;
	 ?>
	</header><!-- .entry-header -->

	<div class="entry-content article-blog">
		<div class="photo">
			<div class="thumbnail">
				<?php
					the_post_thumbnail('large');
				?>
				<ul class="infos">
					<li> Date:
						<?php the_date();?>
					</li>
					<?php
						$categories = get_the_category();
						if($categories) : ?>
							<li>Catégorie(s) : 
								<ul class="no-style">
									<?php foreach($categories as $cat):?>
										<?php $url = get_category_link($cat->term_id);?>
										<li><a class="call-to-action" href="<?php $url; ?>">
												<?php echo $cat->name; ?>
											</a>
										</li>
									<?php endforeach;?>
								</ul>
							</li>
						<?php endif;?>
				</ul>
			</div>
		</div>

		<div class="article-content">
			<?php $blogUrl = get_permalink( get_option('page_for_posts') );?>
			<?php the_content();?>
			<a href="<?php echo $blogUrl;?>" class="call-to-action">Retour au blogue</a>
		</div>
	</div>

</article><!-- #post-
<?php the_ID(); ?> -->
