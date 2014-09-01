$(document).ready(function() {
  $(".list-group-item").on("click", AjaxDisplayAnswers)

})

var AjaxDisplayAnswers = function(event){
  event.preventDefault();
  // var path = $(".list-group-item a").attr('href')
  var clicked_event = $(event.target)
  var path = $(event.target).attr('href')
  console.log(path)
  $.ajax({
    url: path,
    type: 'GET'
  }).done(function(data) {
    $(clicked_event).append(data)
  }).fail(function() {
    console.log("error");
  })
}

// ////VIEW////

// var renderTemplate = function(answers){
//   // console.log(answers)
//   console.log(this)
//   $(".list-group-item a").append(answers)
// }