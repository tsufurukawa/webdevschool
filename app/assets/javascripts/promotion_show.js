$(document).ready(function() {
  var $overlay = $('<div id="overlay"></div>');
  var $content = $('<div class="content"></div>')
  var $button = $('<button class="btn btn-info">Buy Now!!</button>');
  var $line = $('<hr>')
  var $price = $('span.label-primary').text();
  var $caption = $('<h2 class="caption">/h2>').text($price);

  $content.append($button);
  $content.append($line);
  $content.append($caption);
  $overlay.append($content);
  $('.promotions-show .image-container').append($overlay);

  $('.image-container').hover(function() {
    $(overlay).show();
  }, function() {
    $(overlay).hide();
  });
});

