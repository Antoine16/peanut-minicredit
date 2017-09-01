$(document).ready(function(){
  $("#CTA").hide();
  $(window).scroll(function() {
      var scroll = $(window).scrollTop();

      if (scroll >= 690) {
          $("#CTA").show();
          $(".navbar-wagon").addClass("color");

      } else {
          $("#CTA").hide();

          $(".navbar-wagon").removeClass("color");
      }
  });
});


