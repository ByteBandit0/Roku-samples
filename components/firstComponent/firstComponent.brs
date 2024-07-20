function init()
    m.top.setFocus(true)
    myLabel = m.top.findNode("myLabel") 'findNode is a method to find a node in xml files
    print "Into the first component"
    
    myLabel.font.size=92
    myLabel.color="0x72D7EEFF"
    myLabel.text="This is my first component."

  end function