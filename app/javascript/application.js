// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
import "custom/menu"

$(document).on('click', '.title', function() {
$('#book_title').val($(this).data('title'));
});
