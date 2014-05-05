// INSTRUCTIONS - PLEASE READ!!
// Here are some challenges. Solve them from top to bottom

// **Each time** you complete a challenge, please commit and push!
// This is a good practise. Each time you make some progress in software
// development, you want to save a snapshot.

function run_challenges() {

  // Ex 1. Read the content of the email input

        // <div>
        //   <label for="email">Email:</label>
        //   <input type="text" name="email" id="email" value="boris@lewagon.org" autocomplete="off">
        //   <span id="email-hint">This is not my email!</span>
        // </div>
var email = $('input#email').val();


  // Ex 2. Fill the content of the email input with your email

        // $( "#greatphoto" ).attr( "alt", "Beijing Brush Seller" );

$('input#email').attr('value', 'lpvillechenon@gmail.com');



  // Ex 3. Replace the email hint (next to the input) with 'This is my email now'
  //       The text should be emphasized using a <strong> tag

          // <span id="email-hint">This is not my email!</span>
          // $('a').text('Text only! HTML will <b>not</b> be understood!');

$('span#email-hint').html('<strong>This is my email now</strong>')

  // Ex 4. Add the .blue CSS class to the table header cells (th elements)

        // <table class="table">
        //   <thead>
        //     <tr>
        //       <th>Rang</th>
        //       <th>Équipe</th>
        //       <th>Points</th>
        //       </th>
        //     </tr>
        //   </thead>

$('.table th').addClass('blue');  // alternative a .attr('class', 'blue')


  // Ex 5. Count the number of table body rows there are (team count!)
  var team_count = $('.table tbody tr').length;  // TODO: replace 0, keep the team_count variable.


  // Ex 6. Say there is a 15th team added to the table.
  //       Add a row at the bottom, this new team should have zero points.

          // Create a new <p> element with some text
          // var $newPar = $('<p>').text('Here is a new paragraph!');
          // // Create a new div and set its HTML content to the new <p>
          // var $newDiv = $('<div>').html($newPar);
          // // Add the new div to our document
          // $('body').append($newDiv);

          // <tr><td>1</td><td>Rugby Club Toulonnais</td><td>77</td></tr>

var $newRow = $('<tr>').html('<td>15</td><td>Le XV de la Choune</td><td>0</td>');
$('.table tbody').append($newRow);


  // Ex 7. Write some code to sum all points given to all teams

var sum = 0;
var $points = $('.table tbody td:nth-child(3)').each(function(i, el){
  var score = $(el).text();
  sum += parseInt(score);
});

  // Ex 8. Change the background color of all table header cells to #DDF4FF

$('.table th').css({background:
  '#DDF4FF'
});


  // Ex 9. Translate the #results list 20px downward (animation would be great ^_^)

$('#results').animate({bottom: '-=20px'});

  // Ex 10. Remove the "Email:" label from the DOM

$('label').remove();

  // Checking exercise answers. DO NOT MODIFY BELOW
  assert_equal(email, "boris@lewagon.org");
  assert_not_equal(document.getElementById("email").value, "boris@lewagon.org");
  assert_equal($('strong', document.getElementById("email-hint")).html(), "This is my email now");
  assert_equal($('th:eq(0)').css('color'), 'rgb(0, 0, 255)');
  assert_equal(team_count, 14);
  assert_equal($('tbody > tr').length, 15);
  assert_equal(sum, 859)
  assert_equal($('th:eq(0)').css('background-color'), 'rgb(221, 244, 255)');
  setTimeout(function() {
    assert_equal($('ul:eq(0)').position().top, 20);
    assert_equal(document.getElementsByTagName('label').length, 0);
  }, 1000);
}
