// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$('#page-preview img').click(function() {

  var page = this.getAttribute('data-page');
  $('#full-page').html();

});
