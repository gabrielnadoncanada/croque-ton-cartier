<div class="card ">
  <a href="<?php echo get_permalink();?>">
    <div class="card-image">
          <?php
        the_post_thumbnail('');?>
    </div>
  </a>
  <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
    <!-- Contenu d'une card ici : photo, titre, extrait, etc -->
    <a href="<?php echo get_permalink();?>">
      <h4><?php the_title();?></h4>
    </a>
    <?php the_excerpt();?>
    <a class="suite" href="<?php echo get_permalink();?>">Lire la suite</a>
    <div class="card-date">
        Publié le <?php echo get_the_date()?> par <?php echo get_the_author()?>
    </div>
  </article>
</div> <!-- fin card -->
