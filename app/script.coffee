###
Brunch with impress.js
======================

Copyright 2013 [Yu Inao][0] and distributed under [Public Domain][1]

[0]: http://github.com/japboy
[1]: http://creativecommons.org/licenses/publicdomain/
###


document.addEventListener 'DOMContentLoaded', ->

  impress().init()
  hljs.initHighlightingOnLoad()

  # Resize each slide to window size
  resize = ->
    elements = document.querySelectorAll '#impress .step'
    innerHeight = window.innerHeight
    innerWidth = window.innerWidth

    for element in elements
      element.style.height = "#{innerHeight}px"
      element.style.width = "#{innerWidth}px"

  # Highlight without <code> elements
  highlight = ->
    elements = document.querySelectorAll '#impress pre'

    for element in elements
      hljs.highlightBlock element


  window.addEventListener 'resize', resize, false

  resize()
  highlight()

, false
