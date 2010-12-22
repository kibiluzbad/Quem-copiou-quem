// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(document).ready(function() {
    $(".objeto").click(function(){
        var id = $(this).attr("data-objetoid");
        var parent = $(this).parent();
        $.get('/votar/' + id, function(data) {
          $('#a .votos').html(data.a);
          $('#b .votos').html(data.b);
          $('#total_votos span').html(data.total);
          $.growlUI('Atenção:', 'Seu voto foi enviado!');
        });
    });
});
