jQuery ->
  if $('.omb_login').size() > 0
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

    auth2.attachClickHandler $('.googleplus-login')[0], {}, ((googleUser) ->
      if googleUser
         # google authentication succeed, now post data to server and handle data securely
         jQuery.ajax
           type: 'POST'
           url: '/users/auth/google_oauth2/callback'
           dataType: 'json'
           data: googleUser.getAuthResponse()
           success: (json) ->
             successNotice "Logged in with google"
             # response from server
             return
       else
         # google authentication failed
         errorNotice("google authentication failed")
       return
    ), (error) ->
      errorNotice JSON.stringify(error, undefined, 2)
      return
    return
  return
