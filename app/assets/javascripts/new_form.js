$(document).on("page:change", function() {
  $('form').on('ajax:success', function(e, data, status, xhr) {
        $('.questions-list').append(data)
  })
})