theToggle = document.querySelector('.mobile-menu-toggler')
# based on Todd Motto functions
# http://toddmotto.com/labs/reusable-js/
# hasClass

hasClass = (elem, className) ->
  new RegExp(' ' + className + ' ').test ' ' + elem.className + ' '

# addClass

addClass = (elem, className) ->
  if !hasClass(elem, className)
    elem.className += ' ' + className
  return

# removeClass

removeClass = (elem, className) ->
  newClass = ' ' + elem.className.replace(/[\t\r\n]/g, ' ') + ' '
  if hasClass(elem, className)
    while newClass.indexOf(' ' + className + ' ') >= 0
      newClass = newClass.replace(' ' + className + ' ', ' ')
    elem.className = newClass.replace(/^\s+|\s+$/g, '')
  return

# toggleClass

toggleClass = (elem, className) ->
  newClass = ' ' + elem.className.replace(/[\t\r\n]/g, ' ') + ' '
  if hasClass(elem, className)
    while newClass.indexOf(' ' + className + ' ') >= 0
      newClass = newClass.replace(' ' + className + ' ', ' ')
    elem.className = newClass.replace(/^\s+|\s+$/g, '')
  else
    elem.className += ' ' + className
  return

theToggle.onclick = ->
  toggleClass this, 'on'
  $('.top-menu-wrapper').toggle(400)
  false
