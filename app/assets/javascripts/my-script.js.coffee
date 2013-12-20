 
$ ->
  $('.box').click ->
      alert 'click'
  
  $container = $('#container')

  $container.masonry({
      itemSelector: '.box',
      columnWidth :50
  })
  
  #画像を追加
  $('#img-button').click ->
      $url   = $('#img-input').val()
      $img_tag =  create_img $url
      box_prepend $img_tag
  
  #コメントを追加
  $('#comment-button').click ->
      $comment    = $('#comment-input').val()
      $comment_tag = create_comment $comment
      box_prepend $comment_tag

  #urlを追加
  $('#url-button').click -> 
     $url = $('#url-input').val();
     $tag = create_url $url
     box_prepend $tag
 
  box_prepend = (x) -> $container.prepend(x).masonry('prepended', x)
 
  #画像の表示タグを生成
  create_img = (img_url) -> 
      $('<div class="box col4"><img src="'+img_url+'"></img></div>')
  #コメントの表示タグを生成
  create_comment = (comment) ->
      $('<div class="box col2">'+comment+'</div>')

  create_url = (url) ->
      $('<div class="box col2">'+url+'</div>')