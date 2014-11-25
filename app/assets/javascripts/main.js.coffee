$ ->
  console.log 'Main Coffee'
  active_filters = $('.filter:not(.disabled)')
  active_filters.on('click', ->
    active_filters.removeClass('active')
    $(this).addClass('active')
  )
