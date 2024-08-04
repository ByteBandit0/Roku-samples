function init()
    m.firstComponent =createObject("roSgNode","firstComponent")
    m.firstComponent.focusable = true
    m.firstComponent.setFocus(true)
    m.top.appendChild(m.firstComponent)
    ' secondComponent =createObject("roSgNode","secondComponent")
    ' m.top.appendChild(secondComponent)


    print m.top
  end function

  sub calculateSum(a as object)
   print a
  end sub

  function onKeyEvent(key as String, press as Boolean) as Boolean
    m.firstComponent.setFocus(true)
    print "First has focus: "m.firstComponent.hasFocus()
    handled = false
      if (key = "back")
        handled = false
      else if (key = "OK")
        handled = true
      end if
    return handled
  end function