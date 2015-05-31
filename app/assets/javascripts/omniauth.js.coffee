jQuery ->
  $.ajax
    url: 'https://apis.google.com/js/client:plus.js?onload=gpAsyncInit'
    dataType: 'script'
    cache: true

window.gpAsyncInit = ->
  $('.googleplus-login').click (e) ->
    e.preventDefault()
    gapi.auth.authorize {
      immediate: true
      response_type: 'code'
      cookie_policy: 'single_host_origin'
      client_id: '351051946399-vvfllt29p25rglbs594dmm9dv26l3o9s.apps.googleusercontent.com'
      scope: 'email profile'
    }, (response) ->
      if response and !response.error
        # google authentication succeed, now post data to server and handle data securely
        jQuery.ajax
          type: 'POST'
          url: '/users/auth/google_oauth2/callback'
          dataType: 'json'
          data: response
          success: (json) ->
            # response from server
            return
      else
        # google authentication failed
        errorNotice("google authentication failed")
      return
    return
  return
