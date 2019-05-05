<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package croque-ton-quartier
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">
	
	<!-- Google fonts -->
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,800" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Berkshire+Swash" rel="stylesheet">
	<!-- Font Awesome -->
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.2/css/all.css" integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr" crossorigin="anonymous">

	<style type="text/css">
		.acf-map {
			width: 100%;
			height: 400px;
			border: #ccc solid 1px;
			margin: 20px 0;
		}
		
		/* fixes potential theme css conflict */
		.acf-map img {
		max-width: inherit !important;
		}  

		.bar {
			height: 50px;
			background-color: rgba(0,0,0,0.4);
		}
		.progress {
			height: 100%;
			width: <?php the_field('progress',43); ?>%;
			background-color: rgba(0,0,0,0.8);
		}

		.links__left__skew::before {
			content: "";
			background: url('http://localhost/wordpress/croque-ton-cartier/wp-content/uploads/2019/05/croque_pattern.png') repeat, rgba(189, 105, 130,0.3);
			top: 0;
			left: 0;
			bottom: 0;
			right: 0;
			position: absolute;
			z-index: 2;
    		
    	
  		}
	</style>

	<?php wp_head(); ?>
</head>

<body <?php body_class(get_field('main_color',43));?> >
	<div id="page" class="site">
		<a class="skip-link screen-reader-text" href="#content"><?php esc_html_e( 'Skip to content', 'croque-ton-quartier' ); ?></a>

		<header id="masthead" class="site-header">
			
			<div class="nav-container row">

				<div class="site-branding col">
					<?php
					the_custom_logo();
					if ( is_front_page() && is_home() ) :
						?>
						<h1 class="site-title"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a></h1>
						<?php
					else :
						?>
						<p class="site-title"><a href="<?php echo esc_url( home_url( '/' ) ); ?>" rel="home"><?php bloginfo( 'name' ); ?></a></p>
						<?php
					endif;
					$croque_ton_quartier_description = get_bloginfo( 'description', 'display' );
					if ( $croque_ton_quartier_description || is_customize_preview() ) :
						?>
						<p class="site-description"><?php echo $croque_ton_quartier_description; /* WPCS: xss ok. */ ?></p>
					<?php endif; ?>
				</div><!-- .site-branding -->

				<nav id="site-navigation" class="main-navigation col">
					<button class="menu-toggle" aria-controls="primary-menu" aria-expanded="false"><?php esc_html_e( 'Menu', 'croque-ton-quartier' ); ?></button>
					<?php
					wp_nav_menu( array(
						'theme_location' => 'menu-1',
						'menu_id'        => 'primary-menu',
					) );
					?>
				</nav><!-- #site-navigation -->
				
			</div><!-- nav-container -->
					
			<div class="links" id="hero">
				<div class="row">
					<div class="links__left">
						<div class="slogan">
							<h4><?php the_field('slogan',43); ?></h4>
							<div class="bar">
								<div class="progress"></div>
							</div>
							<p><?php the_field('progress',43); ?>%</p>
						</div>	
						<div class="links__left__skew">
							<div class="links__left__skew__img"></div>
						</div>
					</div> 
					<div class="links__right">
						<div class="links__right__skew">
								<div class="links__right__skew__img secondary_box_background" "></div>
						</div>
					</div> 
				</div>
			</div>
		</header><!-- #masthead -->

		<div id="content" class="site-content">
		