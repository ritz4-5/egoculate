 
$ ->
  $('.box').click ->
      alert 'click'
  @
  $container = $('#container');

  $container.masonry({
      itemSelector: '.box',
      columnWidth :200
  }); 
  
  $('#button').click ->
      $url = $('#url-input').val();
      $boxes = $('<div class="box col4"><img src="'+$url+'"></img></div>');
      $container.prepend($boxes).masonry('prepended',$boxes);
  


 
  