
$('#loan_capital').keypress(function(){
  setTimeout(function(){
    $('#tranquilité').empty();
    $('#tranquilité').append(Math.round($('#loan_capital').val() * 1.05, -2));
    $('#sécurité').empty();
    $('#sécurité').append(Math.round($('#loan_capital').val() * 1.02, -2));
    $('#dynamique').empty();
    $('#dynamique').append(Math.round($('#loan_capital').val() * 1.08, -2));
  }, 200);
})
