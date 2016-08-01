# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  zeroPad = (num, size) ->
      str = num+""
      while (str.length < size)
        str = "0" + str
      return str

  left_seconds = $(".countdown").data("left_seconds")
  diffTime = parseInt(left_seconds);
  duration = moment.duration(diffTime * 1000);
  interval = 1000;

  setRemainTime = ->
    if(duration - interval > 0)
      duration = duration.subtract(interval);
      days_message = Math.floor(duration.asDays()) + "天"
      $('.countdown .days').text(days_message)

      message  = zeroPad(duration.hours(), 2) + ":"
      message += zeroPad(duration.minutes(),2) + ":"
      message += zeroPad(duration.seconds(), 2)
      $('.countdown .seconds').text(message)
    else
      duration = 0
      $('.countdown .days').text("0天")
      $('.countdown .seconds').text("00:00:00:")

  InterValObj = window.setInterval(setRemainTime, 1000)
