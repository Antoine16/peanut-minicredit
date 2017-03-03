$(document).ready(function(){
  $("#CTA").hide();
  $(window).scroll(function() {
      var scroll = $(window).scrollTop();

      if (scroll >= 700) {
          $("#CTA").show();
          $(".navbar-wagon").addClass("navbar-wagon-color");
      } else {
          $("#CTA").hide();
          $(".navbar-wagon").removeClass("navbar-wagon-color");
      }
  });
});
