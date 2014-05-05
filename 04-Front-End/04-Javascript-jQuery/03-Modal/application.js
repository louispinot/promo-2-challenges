
$(document).ready(function(){
  modal();

});

function modal() {
  $('img').click(function(e) {

    // this creates a jquery object from the image
    var $img = $(this);
    $img.addClass('center').addClass('framed-picture');

    // this grabs the caption from the alt attribute
    var caption = $(this).attr('alt');

    //this creates a <p> for the caption
    var $captionTag = $('<p>').addClass('caption').text(caption);

    // this drops a dark background on the whole page
    var $background = $('<div>').addClass('modal-background');
    $('body').append($background);

    // this creates a white frame
    var $frame = $('<div>').addClass('frame').addClass('center');

    //this adds the caption and picture to the frame
    $frame.append($img);
    $frame.append($captionTag);

    //this drops the frame onto the background
    $('body').append($frame);

  });
};

var cancel = function() {$('img').die( "click" )};
$('.modal-background').click(cancel);


// $(document).ready(function(){
//   animate($('img'));
// });

// function animate(element) {
//   element.click( modal(element) );
// };


// var modal = function(element) {

//     // this creates a jquery object from the image
//     var $img = element;
//     $img.addClass('center').addClass('framed-picture');

//     // this grabs the caption from the alt attribute
//     var caption = $(this).attr('alt');

//     //this creates a <p> for the caption
//     var $captionTag = $('<p>').addClass('caption').text(caption);

//     // this drops a dark background on the whole page
//     var $background = $('<div>').addClass('modal-background');
//     $('body').append($background);

//     // this creates a white frame
//     var $frame = $('<div>').addClass('frame').addClass('center');

//     //this adds the caption and picture to the frame
//     $frame.append($img);
//     $frame.append($captionTag);

//     //this drops the frame onto the background
//     $('body').append($frame);

// };




// function clear() {
//   $('.modal-background').click(function(e) {

//   });
// };
