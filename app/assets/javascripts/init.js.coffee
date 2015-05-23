# JS plugins initializations
$(document).ready ->

  $.ajaxSetup headers: 'X-CSRF-Token': $('meta[name="csrf-token"]').attr('content')


  # --------------------------------------------------------------------------------------------------------------------
  # setting up bootstrap popovers
  $("[data-toggle=popover]").popover
    trigger: "hover"
    html: true
    content: ->
      $("#" + @className).html()

  # --------------------------------------------------------------------------------------------------------------------
  # context right click menu init
  context.init
    preventDoubleContext: false
  
  # --------------------------------------------------------------------------------------------------------------------
    
  # --------------------------------------------------------------------------------------------------------------------
  # Bootstrap Notify defaults
  $.notifyDefaults
    type: 'success'
    placement:
      align: 'center'
  # --------------------------------------------------------------------------------------------------------------------
  
  # --------------------------------------------------------------------------------------------------------------------
# character counter
@setMaxLength = (selector = $(".char-max-length")) ->
  selector.maxlength() if jQuery().maxlength
# --------------------------------------------------------------------------------------------------------------------

# --------------------------------------------------------------------------------------------------------------------
# character counter
@setCharCounter = (selector = $(".char-counter")) ->
  if jQuery().charCount
    selector.charCount
      allowed: selector.attr('maxlength')
      warning: selector.data("char-warning")
      counterText: "Remaining Characters: "
      cssWarning: "text-warning"
      cssExceeded: "text-error"
# --------------------------------------------------------------------------------------------------------------------

# --------------------------------------------------------------------------------------------------------------------
# autosize feature for expanding textarea elements
@setAutoSize = (selector = $(".autosize")) ->
  selector.autosize() if jQuery().autosize
# --------------------------------------------------------------------------------------------------------------------

# --------------------------------------------------------------------------------------------------------------------
# timeago feature converts static time to dynamically refreshed
@setTimeAgo = (selector = $(".timeago")) ->
  if jQuery().timeago
    jQuery.timeago.settings.allowFuture = true
    jQuery.timeago.settings.refreshMillis = 60000
    selector.timeago();
    selector.addClass("in")
# --------------------------------------------------------------------------------------------------------------------

# --------------------------------------------------------------------------------------------------------------------
# scrollable boxes
@setScrollable = (selector = $(".scrollable")) ->
  if jQuery().slimScroll
    selector.each (i, elem) ->
      $(elem).slimScroll
        height: $(elem).data("scrollable-height")
        start: $(elem).data("scrollable-start") || "top"
# --------------------------------------------------------------------------------------------------------------------

# --------------------------------------------------------------------------------------------------------------------
# jquery-ui sortable
@setSortable = (selector = null) ->
  if selector
    selector.sortable
      axis: selector.data("sortable-axis")
      connectWith: selector.data("sortable-connect")
# --------------------------------------------------------------------------------------------------------------------

# --------------------------------------------------------------------------------------------------------------------
# select2
@setSelect2 = (selector = $(".select2")) ->
  if jQuery().select2
    selector.each (i, elem) ->
      $(elem).select2()
# --------------------------------------------------------------------------------------------------------------------

# --------------------------------------------------------------------------------------------------------------------
# form validation
@setValidateForm = (selector = $(".validate-form")) ->
  if jQuery().validate
    $.validator.setDefaults
      errorElement: "span"
      errorClass: "help-block with-errors"
      errorPlacement: (e, t) ->
        t.parents(".controls").first().append e

      highlight: (e) ->
        $(e).closest('.form-group').removeClass("has-error has-success").addClass('has-error');

      success: (e) ->
        e.closest(".form-group").removeClass("has-error")
    $.validator.addMethod 'afterMeetingStart', ((value,element) ->
        startDate = new Date($('date#meeting_start_date').html())
        new Date(value) > startDate
      ), 'You must enter a date after the beginning of the meeting'
    $.validator.addMethod 'beforeMeetingEnd', ((value,element) ->
        endDate = new Date($('date#meeting_end_date').html())
        new Date(value) <= endDate
      ), 'You must enter a date before the end of the meeting'

    $.validator.addMethod 'beforeStartDate', ((value,element) ->
        endDate = new Date($('#new-event-start-time').val())
        new Date(value) > endDate
      ), 'Start time must be before the End Time'
    $.validator.addMethod 'pdfattach', ((value,element) ->
        !(element.files[0] && element.files[0].size/1024/1024 > 20)
      ), 'The file size is larger than 20mb'

    selector.each (i, elem) ->
      $(elem).validate()
# --------------------------------------------------------------------------------------------------------------------
