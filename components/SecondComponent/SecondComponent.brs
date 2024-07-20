function init()
    m.top.setFocus(true)
    m.myLabel = m.top.findNode("myLabel2")
    
    'Set the font size
    m.myLabel.font.size=92

    'Set the color to light blue
    m.myLabel.color="0x72D7EEFF"
    m.myLabel.text="This is my second componenet"
    positionLabel()
  end function

  sub positionLabel()
    boundigrect = m.myLabel.boundingRect()
    posX = (1920-boundigrect.width) / 2
    posY = (1080-boundigrect.height) / 2
    m.myLabel.translation= [posX,posY]
  end sub