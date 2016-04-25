<head>
  <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <?php if(get_field('favicon', 'option')['url']) { ?><link rel="icon" href="<?php echo get_field('favicon', 'option')['url']; ?>"><?php } ?>
  <?php wp_head(); ?>

  <?php if(get_field('ga_id', 'option')): ?>
    <!-- Google Analytics -->
    <script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
    (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

    ga('create', '<?php the_field('ga_id', 'option'); ?>', 'auto');
    ga('send', 'pageview');
    </script>
    <!-- End Google Analytics -->
  <?php endif; ?>
</head>
