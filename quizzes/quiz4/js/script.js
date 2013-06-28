$(document).ready(function(){
  $('button').on('click', function(){
    $('.tweets').show();
    return false;
  });
  $('a.favorite').on('click', function(){
    $(this).hide();
    $(this).closest('.tweet').prependTo('.favorite_tweets');
  });
});