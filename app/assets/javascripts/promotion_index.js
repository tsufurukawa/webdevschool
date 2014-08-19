// Display caption on hover over image
$(document).ready(function() {
  var $overlay = $('<div class="description-overlay"></div>');
  var $caption = $('<h2></h2>');
  $overlay.append($caption);

  // Show and hide overlay upon hovering in-and-out of image
  $('.thumbnail .img-container').hover(function() {
    $(this).append($overlay);
    $descriptionText = $(this).closest('.thumbnail').find('.caption p.description').text();
    $caption.text($descriptionText);
    $overlay.stop(true, true).slideDown(300);
  }, function() {
    $overlay.stop(true, true).slideUp(300);
  });
});