$(function(){
  $('a[href^="#"]:not([href^="#Modal"])').on('click', function() {
    var speed = 500;
    var href= $(this).attr("href");
    var target = $(href == "#" || href == "" ? 'html' : href);
    var position = target.offset().top;
    $('body,html').animate({scrollTop:position}, speed, 'swing');
      return false;
  });

  $(".js-scroll-trigger").on('click', function () {
    $('.navbar-collapse').removeClass('show');
  });


  $(window).on('scroll', function() {
    if ($(this).scrollTop() > 0) {
      $("#mainNav").addClass("navbar-shrink");
    } else {
      $("#mainNav").removeClass("navbar-shrink");
    }
  });
});

$(function(){
  setTimeout("$('.alert').fadeOut('slow')", 1000);
});