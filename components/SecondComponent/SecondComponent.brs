function init()
  print "I am second component"
    m.top.setFocus(true)
    myLabel = m.top.findNode("myLabel2") 'findNode is a method to find a node in xml files
    myLabel.text="This is my Second component."
    mylabel.translation = [400,500]

  end function

  function onKeyEvent(key as String, press as Boolean) as Boolean
    print "in Second Component"; key
    handled = false
    if press then
      if (key = "back")
        handled = true
      else if (key = "OK")
        handled = false
      end if
    end if
    return handled
  end function