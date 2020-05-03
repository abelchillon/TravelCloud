$(document).ready(function(){

  $("#dialog").dialog({
     autoOpen: false,
     modal: true
   });

  $("#myButton").on("click", function(e) {
      e.preventDefault();
      $("#dialog").dialog("open");
  });

});