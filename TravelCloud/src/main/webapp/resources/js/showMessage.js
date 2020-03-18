$(document).ready(function(){
    $("#response-message").hide();
    
    $("#response-button").click(function(){
        $("#response-message").show();
    });
    $("#send-button").click(function(){
        $("#response-message").hide();
    });
    $("#cancel-button").click(function(){
        $("#response-message").hide();
    });
})