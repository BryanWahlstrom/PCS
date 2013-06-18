$(document).ready(function(){
  var square = $(".span4");
  square.addClass("grey");


// this is part 1
  $(square).on("click", function(){
    $(this).next().toggleClass("blue");
    $(this).prev().andSelf().toggleClass("blue");
    // this is how superstars do contextual searches!!!!!
    // $("p", this).text("Blue");
    if ($(".span4:not(.blue)").length === 0){
      $(".hidden").text("Congrats!");
    }
  });

  $("a").on("click", function(){
    if ($(".span4:not(.blue)").length === 0){
      $(".hidden").text("");
    }
    $(square).removeClass("blue");
  });

  // $(".row .span4:nthchild(1)").on("click", function(){
  //   $(this).next().toggleClass("blue");
  //   $("this").parent().filter(".span4:nthchild(1)").toggleClass("blue");
  // });



// this is part 2
  // $(square).on("click", function(){
  //   $(this).next().css("background-color", "green");
  // });
});
