				<div class="grid-card">
					<?php the_post_thumbnail('small'); ?>	
					<h2> <?php the_title();?></h2>
					<p><?php the_excerpt();?></p>
					<a href="<?php echo get_permalink();?>">&nbsp;ICI&nbsp;</a>
			</div>
