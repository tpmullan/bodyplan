@noticeMessage = (text, type) ->
  $.notify({
    message: text
  },{
    type: type
  })

@successNotice = (text) ->
  notice = @noticeMessage(text, 'success')

@errorNotice = (text) ->
  notice = @noticeMessage(text, 'danger')

