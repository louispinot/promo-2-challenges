$(document).ready(function(){

  $('game-body').hide();

  // $.ajax({
  //   type: "GET",
  //   url: "http://wagon-race-api.herokuapp.com/game/session/new",
  //   success: function(data) {
  //     var game_id = data.session_id
  //     var inSession = true
  //     $('.game-body').show()

  //     $('#submit-names').submit(function(data){
  //       alert("success")
  //       submitNames(game_id);
  //     }),
  //   error: function(data) {
  //     console.log('Un problème est survenu, rafraichissez la page');
  //   },
  // });

  $.get( "http://wagon-race-api.herokuapp.com/game/session/new",
    function(data) {
      var game_id = data.session_id
      var inSession = true
      $('.game-body').show()
      console.log(data);
      $('#submit-names').click(function(){
        submitNames(game_id);
      })
    }
  );


});


function submitNames(session) {
  var player1 = $('#player1').val();
  var player2 = $('#player2').val();

  var players_hash = { players: [
    { name: player1 },
    { name: player2 }
    ]
  };

  var api_url = "http://wagon-race-api.herokuapp.com/game/session/" + session + "/new";

  $.ajax({
    type: "POST",
    url: api_url,
    data:   JSON.stringify(players_hash),
    contentType: 'application/json',

    success: function(data) {
      console.log(data);
      alert("Alright! Let's race!!");
      race();

    },
    error: function(data) {
      console.log('Un problème est survenu, rafraichissez la page');
    }
  });
};

function submitResults(winner, elapsed_time) {

  var results_hash = {
    winner: winner,
    elapsed_time: elapsed_time
  };

  var api_url = "http://wagon-race-api.herokuapp.com//game/1/results";

  $.ajax({
    type: "POST",
    url: api_url,
    data:   JSON.stringify(players_hash),
    contentType: 'application/json',

    success: function(data) {
      alert("the result has been recorded")
    },
    error: function(data) {
      console.log('Un problème est survenu, rafraichissez la page');
    }
  });
}


