$(document).ready(function(){
    $('.navbar li').each(function() {
      var url = $(this).find('a').attr('href');
      if (url === window.location.pathname) {
        $(this).addClass('active');
        $(this).parents('.dropdown').addClass('active');
      }
    });
});