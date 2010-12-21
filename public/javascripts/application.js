// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function() {
    $(".objeto").click(function(){
        var id = $(this).attr("data-objetoid");
        var parent = $(this).parent();
        $.get('/votar/' + id, function(data) {
          var parts = data.split('|')  
          $('#a .votos').html(parts[0]);
          $('#b .votos').html(parts[1]);
          $('#total_votos span').html(parts[2]);
          alert("Seu voto foi enviado!");
        });
    });
});
