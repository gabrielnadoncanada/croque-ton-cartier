<div class="card ">
  <div class="card-image">
    <a href="<?php echo get_permalink();?>">
        <?php
       the_post_thumbnail('large');?></a>
  </div>
    <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
        <!-- Contenu d'une card ici : photo, titre, extrait, etc -->

        <h4><a href="<?php echo get_permalink();?>">
                <?php the_title();?></a></h4>
        <?php the_excerpt();?>
        <div class="suite">
          <a href="<?php echo get_permalink();?>">Lire la suite</a>
        </div>
        <div class="card-date">
              <?php echo get_the_date()?>
          </div>
    </article>
</div>
