$(document).ready(function(){

  $(window).scroll(function() {
      var scroll = $(window).scrollTop();

      if (scroll >= 60) {
          $(".arrow").hide();
      } else {
          $(".arrow").show();
      }
  });
});
