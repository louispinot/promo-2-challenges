$(document).ready( function() {
  $('img').on('click', function(){

    var $overlay = $('<div>').addClass('overlay');
    $overlay.hide().appendTo($('body')).fadeIn('slow');

    var $photo = $('<img>').attr({
      src: "http://i.imgur.com/gDQij.jpg"
    }).addClass('photo');

    $photo.hide().appendTo($('body')).fadeIn('slow');

    $overlay.on('click',function(){
      // $photo.fadeOut('slow');
      // $overlay.fadeOut('slow');
      $($photo).add($overlay).fadeOut('slow', function() {
        $(tihs).remove();
      });

    })

  });
});