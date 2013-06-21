var turn = true;


$(document).ready(function() {
  var square = $('.square');





  $(square).on("click", function(){
    if(turn === true) {
      $(this).removeClass("blue").removeClass("red").addClass("blue");
      // .css({'background-image': neymar_pic});
      turn = false;
    } else if (turn === false) {
      $(this).removeClass("blue").removeClass("red").addClass("red");
      // .css({'background-image': messi_pic});
      turn = true;
    }
  });
});


////////////////////////////////////////////////////////////////

// turn = true;

// $(document).ready(function() {
//   $('.square').on('click', function() {
//     // if statement representing the turn, true for Blue, false for Red.
//     // if (turn === true)
//     $(this).removeClass('blue').removeClass('red').addClass('blue');
//     // else
//     // add red class
//     //end if statement
//   });
// });  http://api.twitter.com/1/users/profile_image/:Njr92.bigger
// });  http://api.twitter.com/1/users/profile_image/:LioMessi_.bigger

  // $get('http://api.twitter.com/1/users/profile_image/:Njr92.bigger', function(){
  //   var neymar_pic = "";
  // });
  // $get('http://api.twitter.com/1/users/profile_image/:LioMessi_.bigger', function(){
  //   var messi_pic = "";
  // });
