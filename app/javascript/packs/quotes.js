$(document.onload = function() {
  $("#start_date, #end_date").on('change', function(){
    let button = $("#currency").val();
    $("#" + button).trigger('click');
  });
});