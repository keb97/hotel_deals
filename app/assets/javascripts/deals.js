$(document).ready(function(){

  $('form').on('click', ".great-value", function(){ 
    if($(this).is(':checked')){
      $('.low-val').fadeOut(200);
    } else {

      if($('.top-rated').is(':checked')){
        $('.high-star').fadeIn(200);
      } else {
        $('.low-val').fadeIn(200);
      }

    }
  });

  $('form').on('click', ".top-rated", function(){
    if($(this).is(':checked')){  
      $('.low-star').fadeOut(200);
    } else {

      if($('.great-value').is(':checked')){
        $('.high-val').fadeIn(200);
      } else {
        $('.low-star').fadeIn(200);
      }

    }
  });

});  
