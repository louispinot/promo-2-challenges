/*
  *
  * TODO: add your code here!
  *
*/


// $('#message').hide()


$(document).ready(function(){
  $('#message').hide()
  displayBox();
})

function displayBox() {
  $('#message').slideDown(600, clickToHide());
}

function clickToHide() {
  $('#message').click(function(e) {
    $(this).slideUp(500, toggleTop);
  });
}

function toggleTop(){
 $('#message-wrapper').hover(
   function(e) { $('#message').slideDown() },
   function(e) { $('#message').slideUp() }
  );
}


