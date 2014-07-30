// Display overlay and purchase button when hovering over image
$(document).ready(function() {
  var $overlay = $('<div id="overlay"></div>');
  var $content = $('<div class="content"></div>')
  var $button = $('<button class="btn btn-info">Buy Now!!</button>');
  var $line = $('<hr>')
  var $price = $('span.label-primary').text();
  var $caption = $('<h2 class="caption">/h2>').text($price);

  // Add classes and data-attributes to purchase button for interacting with StripePurchaser widget
  $button.addClass('btn webappcamp purchase');
  $button.attr('data-promotion-id', $('input#id').val());
  $button.attr('data-title', $('h2.title').text());
  $button.attr('data-amount', $('input#price').val());

  // Append content to overlay and overlay to the image container - overlay lies on top of image
  $content.append($button);
  $content.append($line);
  $content.append($caption);
  $overlay.append($content);
  $('.promotions-show .image-container').append($overlay);

  // Show and hide overlay upon hovering in-and-out of image
  $('.image-container').hover(function() {
    $(overlay).show();
  }, function() {
    $(overlay).hide();
  });
});