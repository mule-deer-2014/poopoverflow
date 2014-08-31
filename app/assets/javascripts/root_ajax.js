$(document).ready(function() {
  $(".list-group-item").on("click", AjaxDisplayAnswers)

})

var AjaxDisplayAnswers = function(event){
  event.preventDefault();
  // var path = $(".list-group-item a").attr('href')
  var path = $(event.target).attr('href')
  console.log(path)
  $.ajax({
    url: path,
    type: 'GET'
  }).done(function(data) {
    renderTemplate(data);
  }).fail(function() {
    console.log("izz ok but error");
  })
}


////VIEW////

var renderTemplate = function(answers){
console.log(event.target)
}