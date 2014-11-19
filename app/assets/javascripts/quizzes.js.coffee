$ ->
  $('form').on 'click', '.remove_answer', (event) ->
    $(this).prev('input[type=hidden]').val('1')
    $(this).closest('fieldset').hide()
    event.preventDefault()

  $('form').on 'click', '.add_answer', (event) ->
    time = new Date().getTime()
    regexp = new RegExp($(this).data('id'), 'g')
    $(this).before($(this).data('fields').replace(regexp,time))
    event.preventDefault()

  $('form').on 'click', '.add_question', (event) ->
    time = new Date().getTime()


