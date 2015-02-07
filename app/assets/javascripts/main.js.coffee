$ ->
  console.log 'Main Coffee'
  active_filters = $('.filter:not(.disabled)')
  active_filters.on('click', ->
    active_filters.removeClass('active')
    $(this).addClass('active')
  )

  datasets = $('.dataset a')
  datasets.on('click', (event) ->
    event.preventDefault()
    $('.dataset').removeClass('active')
    $(this).parent().toggleClass('active')

    if $(this).parent().hasClass('active')
      category = $(this).parent().data('category')
      $('.dot').addClass('passive')
      $('.dot[data-category='+category+']').removeClass('passive')
    else
      category = $(this).parent().data('category')
      $('.dot').removeClass('passive')
      $('.dot[data-category='+category+']').removeClass('passive')
  )



