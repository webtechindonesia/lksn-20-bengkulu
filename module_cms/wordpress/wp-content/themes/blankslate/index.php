<?php get_header(); ?>
<main id="content" style="background-color: #420E73;">
    <div class="container pb-5">
        <?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
        <?php get_template_part( 'entry' ); ?>
        <?php comments_template(); ?>
        <?php endwhile; endif; ?>
        <?php get_template_part( 'nav', 'below' ); ?>
    </div>
</main>
<?php get_footer(); ?>