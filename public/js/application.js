$(document).ready(function() {

  $('.up').on('click', function(event){
    event.preventDefault();
    $thing = $(this)
    $path = $(this).parent().attr("action")

    $.ajax({
      method: 'post',
      url: $path
    }).done(function(response){
        var $article = $thing.closest("article");
        var $points = $article.find(".points");
        $points.html(response.points);
    })
  })

});
