change = ->
  for player in $('.video-js')
    $(player).on 'contextmenu', (e) ->
      e.preventDefault()
    video = videojs(player)

before_change = ->
  for player in $('.video-js')
     video = videojs(player)
     video.dispose()

$(document).on('page:before-change', before_change)
$(document).on('page:change', change)
