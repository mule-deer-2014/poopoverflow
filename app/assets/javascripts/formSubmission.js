// $(document).on('page:change', function () {
//   $('form').on('ajax:success', function (e, data, status, xhr) {
//     debugger

//     "<li><%= link_to q.title, question_path(q) %></li>
//   <p>Vote Count: <%= q.vote_count %></p>
//   <p>Number of answers: <%= q.answers.count %></p>
//   <p>Number of comments: <%= q.comments.count %></p>"

//     $(".question-list").append()
//     console.log('whee!')
//     console.log('e: ' + e)
//     console.log('data: ' + data)
//     console.log('status: ' + status)
//     console.log('xhr: ' + xhr)
//   })
// });
$(document).ready(function(){
  $(".submit").on('click', submitNewQuestion)
})
  var submitNewQuestion = function(event) {
    event.preventDefault()
    $.ajax({
      url: '/questions',
      type: 'POST',
      data: $('form').serialize(),
      dataType: 'json'
    }).done(function(data){
      debugger
    }).fail(function() {
      debugger
    }).always(function(){
      debugger
    })
  }
// $(document).on('page:change', function () {
//   }

//   var addEventListeners = function() {
//     $('form').submit(submitNewQuestion)
//   }

// });

