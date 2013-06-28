$(document).ready(function(){
    $('div').on('click', function(){
      setTimeout(function(){
        $('div.classy').css('background-color', 'green');
    }, 100);
  });
});