$(document).ready(function(){

  $('form').on('click', ".great-value", function(){  
    $('.low-val').fadeOut(350);
  });

   $('form').on('click', ".top-rated", function(){  
    $('.low-star').fadeOut(350);
  });

});  
