$(document).ready(function() {

  var $container = $('.masonry-container');

  $container.imagesLoaded( function() {
    $container.masonry({
      itemSelector : '.thumbnail',
      columnWidth: 20,
      isAnimated: !Modernizr.csstransitions
    });
  });

});