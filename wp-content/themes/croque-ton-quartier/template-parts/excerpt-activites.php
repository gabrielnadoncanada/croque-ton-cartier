<div class="card ">
  <div class="card-image">
    <a href="<?php echo get_permalink();?>">
        <?php
       the_post_thumbnail('large');?></a>
  </div>
  <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
      <!-- Contenu d'une card ici : photo, titre, extrait, etc -->
      <div class="card-info">
        <h2><?php the_field("date_de_levenement_");?></h2>
        <h4><?php the_title();?></h4>
        <?php the_excerpt();?>
        <div class="card-date">
          <ul>
            <li>Début: <?php the_field("heure_de_debut_de_levenement_");?></li>
   			    <li>Lieu: <?php the_field("lieu");?></li>
        </ul>
      </div>
      </div>
  </article>
</div> <!-- fin card -->
