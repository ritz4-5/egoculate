 
$ ->
  $('.box').click ->
      alert 'click'

  $('#container').masonry({
      itemSelector: '.box',
      columnWidth :200
  }); 
 
  