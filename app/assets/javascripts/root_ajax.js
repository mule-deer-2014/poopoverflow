$(document).ready(function() {
    $(".list-group-item").on("click", AjaxDisplayAnswers)
    
})

var AjaxDisplayAnswers = function(event){
  event.preventDefault();
  var clicked_event = $(event.target.parentElement)
  var path = $(event.target).attr('href')
  $.ajax({
    url: path,
    type: 'GET'
  }).done(function(data) {
    $(clicked_event).append(data),
    $(clicked_event).off('click')
    $("form").on("submit", deleteAnswer)
  }).fail(function() {})
}

var deleteAnswer = function(e){
  e.preventDefault();
  var answer_delete_url = "/answers/" + e.target[3].value
  $.ajax({
    url: answer_delete_url,
    type: "post",
    data: {"_method":"delete"}  //This is a workaraound to getting type:"DELETE" to work
  }).done(function(){
    $(this).parent().attr("id",e.target[3].value).remove()
  }.bind(this))
}