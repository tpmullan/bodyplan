jQuery ->
  $.ajax
    url: 'https://apis.google.com/js/api:client:plus.js?onload=gpAsyncInit'
    dataType: 'script'
    cache: true

window.gpAsyncInit = ->
  gapi.load 'auth2', ->
    # Retrieve the singleton for the GoogleAuth library and set up the client.
    auth2 = gapi.auth2.init
      client_id: '351051946399-vvfllt29p25rglbs594dmm9dv26l3o9s.apps.googleusercontent.com'
      cookiepolicy: 'single_host_origin'

    gapi.signin2.render 'googleplus-login',
      'scope': 'https://www.googleapis.com/auth/plus.login'
      'width': 200
      'height': 50
      'longtitle': true
      'theme': 'dark'
      'onsuccess': (response) ->
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
      'onfailure': ->
        errorNotice("google authentication failed")
        return
    return
  return
