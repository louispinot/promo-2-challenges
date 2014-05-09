// $(document).ready(function(){ // changer le trigger et le mettre fonction de requete ajax

//  /// $('#play-new-game').click(race());

// });





function race() {
  var running = true
  var winner
  $(window).keyup(function(event) {
    // une première option:
    // var $line = $('tr.player1_race');
    // $line.find('td').last().prependTo($line);
    var start = new Date().getTime();

    if(!running)
    {
      return;
    }

    if(event.which == 65)
    {
      var $selector = $('.player1_race .active'),
      player = 1;
    }
    else if(event.which == 80)
    {
      var $selector = $('.player2_race .active'),
      player = 2;
    }
    else
    {
      return
    };

    $selector.next().addClass('active');
    $selector.removeClass('active');

    if($selector.next().hasClass('finish'))
    {
      $('<h3>').text("Player " + player + " has won the race!").appendTo('body');
      running = false;
      winner = player
      var end = new Date().getTime();
      var elapsed_time = end - start;
      submitResults(winner, elapsed_time)
      // $('#play-again').show()
    }

  });

  // $('#play-again').click(function(){
  //   $(this).hide();
  //   $('.active').removeClass('active');
  //   $('h3').remove();
  //   running = true;
  //   $('tr td:first-child').addClass('active');
  // });
};






