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
