<div class="card-activites">
  <div class="card-image">
        <?php
       the_post_thumbnail('large');?>
  </div>
  <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
      <!-- Contenu d'une card ici : photo, titre, extrait, etc -->
      <div class="card-info">
        <h3 class="date-title"><?php the_field("date_de_levenement_");?></h3>
        <h2><?php the_title();?></h2>
        <?php the_excerpt();?>
        <div class="card-date">
          <ul>
            <li><span class="bold">Début:</span> <?php the_field("heure_de_debut_de_levenement_");?></li>
   			    <li><span class="bold">Lieu:</span> <?php the_field("lieu");?></li>
        </ul>
      </div>
      </div>
  </article>
</div> <!-- fin card -->
