function init()
    baseComponent = m.top.findNode("baseComponent")
    baseComponent.setFocus(true)
  end function

  sub positionLabel()
    boundigrect = m.myLabel.boundingRect()
    posX = (1920-boundigrect.width) / 2
    posY = (1080-boundigrect.height) / 2
    m.myLabel.translation= [posX,posY]
  end sub

  function onKeyEvent(key as String, press as Boolean) as Boolean
    print "in Parent Component: ";  m.top.focusedChild
    handled = false
      if (key = "back")
        print "I am called to handle the back for my child."
        handled = true
      else if (key = "OK")
        handled = false
      end if
    return handled
  end function