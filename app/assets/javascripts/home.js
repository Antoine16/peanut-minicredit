$(document).ready(function(){

  $(window).scroll(function() {
      var scroll = $(window).scrollTop();

      if (scroll >= 60) {
          $(".arrow").hide();
      } else {
          $(".arrow").show();
      }
  });

  $('.onoffswitch-checkbox').click(function(){
    if ($('.items-borrow ').hasClass("hidden")) {

      $('.items-borrow ').removeClass("hidden");
      $('.items-give ').addClass("hidden");

    }else{
      $('.items-give').removeClass("hidden");
      $('.items-borrow  ').addClass("hidden");
    }
  });
});


