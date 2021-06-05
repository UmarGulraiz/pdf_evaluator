$(document).on("turbolinks:load", function () {
  $("tr.user-container").find('a.btn').addClass('hide-score-btn')

  $('tr.user-container').on('mouseenter', function () {
    $(this).find('a.btn').removeClass('hide-score-btn')
  })
  $('tr.user-container').on('mouseleave', function () {
    $(this).find('a.btn').addClass('hide-score-btn')
  })
})
