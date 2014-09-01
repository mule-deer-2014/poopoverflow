$(document).ready(function() {
    $(".list-group-item").on("click", AjaxDisplayAnswers)
})

var AjaxDisplayAnswers = function(event){
  event.preventDefault();
  var clicked_event = $(event.target.parentElement)
  var path = $(event.target).attr('href')
  console.log(path)
  $.ajax({
    url: path,
    type: 'GET'
  }).done(function(data) {
    $(clicked_event).append(data),
    $(clicked_event).off('click')
  }).fail(function() {
    console.log("error");
}