<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>" />
<meta name="viewport" content="width=device-width" />
<?php wp_head(); ?>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<style>
</style>
<style>

</style>
</head>
<body <?php body_class(); ?>>
<div id="wrapper" class="hfeed" class="container" style="background-color: #420E73;">
<header id="header" style="background-color: #280557;">
    <div class="container d-flex justify-content-between pt-3 pb-3">
        <div id="branding" class="d-inline-block ">
            <div id="site-title">
            <?php if ( is_front_page() || is_home() || is_front_page() && is_home() ) { echo '<h1>'; } ?>
            <a class="text-white text-decoration-none" href="<?php echo esc_url( home_url( '/' ) ); ?>" title="<?php echo esc_html( get_bloginfo( 'name' ) ); ?>" rel="home"><?php echo esc_html( get_bloginfo( 'name' ) ); ?></a>
            <?php if ( is_front_page() || is_home() || is_front_page() && is_home() ) { echo '</h1>'; } ?>
            </div>
        </div>
        <nav id="menu" class="d-flex align-items-center">
            <a href="/" class="text-white mr-3">Home</a>
            <a href="" class="text-white">Our Category</a>
        </nav>
    </div>
</header>
<div id="content" class="container pb-3 text-white" >