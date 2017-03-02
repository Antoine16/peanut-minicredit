$(window).scroll(function() {
    var scroll = $(window).scrollTop();

    if (scroll >= 700) {
        $(".navbar-wagon").addClass("navbar-wagon-color");
    } else {
        $(".navbar-wagon").removeClass("navbar-wagon-color");
    }
});
