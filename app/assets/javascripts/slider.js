$(document).ready(function() {
  $("#slider").slider({
      animate: true,
      value:1,
      min: 50,
      max: 200,
      step: 10,
      slide: function(event, ui) {
          update(1,ui.value); //changed
      }
  });

  $("#slider2").slider({
      animate: true,
      value:0,
      min: 5,
      max: 21,
      step: 1,
      slide: function(event, ui) {
          update(2,ui.value); //changed
      }
  });

  //Added, set initial value.
  $("#amount").val(50);
  $("#duration").val(5);
  $("#amount-label").text(0);
  $("#duration-label").text(0);

  update();
});

//changed. now with parameter
function update(slider,val) {
  //changed. Now, directly take value from ui.value. if not set (initial, will use current value.)
  var $amount = slider == 1?val:$("#amount").val();
  var $duration = slider == 2?val:$("#duration").val();

  /* commented
  $amount = $( "#slider" ).slider( "value" );
  $duration = $( "#slider2" ).slider( "value" );
   */

   $total = $amount * $duration;
   $( "#amount" ).val($amount);
   $( "#amount-label" ).text($amount);
   $( "#duration" ).val($duration);
   $( "#duration-label" ).text($duration);
   $( "#total" ).val($total);

   $('#slider span').html('<label><span class="glyphicon glyphicon-chevron-left"></span> '+$amount+' <span class="glyphicon glyphicon-chevron-right"></span></label>');
   $('#slider2 span').html('<label><span class="glyphicon glyphicon-chevron-left"></span> '+$duration+' <span class="glyphicon glyphicon-chevron-right"></span></label>');


   $('.form-pricing').submit();
};

