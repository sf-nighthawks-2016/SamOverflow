$(document).ready(function() {

  $('.up').on('click', function(event){
    event.preventDefault();
    $thing = $(this)
    $path = $(this).parent().attr("action")
    $(this).css('color', 'green')

    $.ajax({
      method: 'post',
      url: $path
    }).done(function(response){
        var $article = $thing.closest("article");
        var $points = $article.find(".points");
        $points.html(response.points);
    })
  })

   $('.down').on('click', function(event){
    event.preventDefault();
    $thing = $(this)
    $path = $(this).parent().attr("action")
    $(this).css('color', 'red')

    $.ajax({
      method: 'delete',
      url: $path,
    }).done(function(response){
        var $article = $thing.closest("article");
        var $points = $article.find(".points");
        $points.html(response.points);
    })
  })

});
