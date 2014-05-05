

$(document).ready(function(){
  modal();

});

function modal() {
  $('img').click(function(e) {

    $img = $(this).addClass('center')
    caption = $(this).attr('alt');

    var $background = $('<div>').addClass('modal-background');
    $('body').append($background);

    var $frame = $('<div>').addClass('frame').addClass('center').addClass('container');

    $imgRow = $('<div>').addClass('row').append($img);

    rowHtml = "<p style='text-align: center'><strong>" + caption + "</p></strong>";
    $captionRow = $('<div>').addClass('row').html(rowHtml);
    $captionRow.addClass('center');

    $frame.append($imgRow);
    $frame.append($captionRow);

    $('body').append($frame);



  });
};


// <div class="container">
//   <div class="row">
//     &img
//   </div>
//   <div class="row">
//     <p>strong caption strong</p>
//   </div>
// </div>