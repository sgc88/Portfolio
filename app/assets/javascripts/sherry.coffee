# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
acc = document.getElementsByClassName('accordion')
i = undefined
i = 0
while i < acc.length
  acc[i].addEventListener 'click', ->
    @classList.toggle 'active'
    panel = @nextElementSibling
    if panel.style.display == 'block'
      panel.style.display = 'none'
    else
      panel.style.display = 'block'
    return
  i++



  scaleVideoContainer = ->
  height = $(window).height() + 5
  unitHeight = parseInt(height) + 'px'
  $('.homepage-hero-module').css 'height', unitHeight
  return

initBannerVideoSize = (element) ->
  $(element).each ->
    $(this).data 'height', $(this).height()
    $(this).data 'width', $(this).width()
    return
  scaleBannerVideoSize element
  return

scaleBannerVideoSize = (element) ->
  windowWidth = $(window).width()
  windowHeight = $(window).height() + 5
  videoWidth = undefined
  videoHeight = undefined
  # console.log(windowHeight);
  $(element).each ->
    videoAspectRatio = $(this).data('height') / $(this).data('width')
    $(this).width windowWidth
    if windowWidth < 1000
      videoHeight = windowHeight
      videoWidth = videoHeight / videoAspectRatio
      $(this).css
        'margin-top': 0
        'margin-left': -(videoWidth - windowWidth) / 2 + 'px'
      $(this).width(videoWidth).height videoHeight
    $('.homepage-hero-module .video-container video').addClass 'fadeIn animated'
    return
  return

$(document).ready ->
  scaleVideoContainer()
  initBannerVideoSize '.video-container .poster img'
  initBannerVideoSize '.video-container .filter'
  initBannerVideoSize '.video-container video'
  $(window).on 'resize', ->
    scaleVideoContainer()
    scaleBannerVideoSize '.video-container .poster img'
    scaleBannerVideoSize '.video-container .filter'
    scaleBannerVideoSize '.video-container video'
    return
  return
