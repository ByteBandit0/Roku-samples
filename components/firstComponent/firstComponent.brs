function init()
    print "in firsat component"
    m.playButton = m.top.findNode("playButton")
    m.playButton2 = m.top.findNode("playButton2")
    m.top.focusable = true
    m.top.setFocus(true)
    m.playButton.setFocus(true)
    myLabel = m.top.findNode("myLabel1") 'findNode is a method to find a node in xml files
    m.testPoster = m.top.findNode("testPoster")

    ' 2nd methode wopuld have been: 
    ' testPoster = createObject("roSgNode","Poster")
    ' m.top.appendChild(testPoster)
    labelFields={
      color:"0x72D7EEFF",
      text:"This is my first component.",
      translation : [400,400],
    }
    myLabel.setFields(labelFields)
    myLabel.font.size = 92

    m.testPoster.uri = "pkg:/images/xite_logo.jpg"
    m.testPoster.height = 400
    m.testPoster.width = 400
    m.testPoster.translation = [400,0]

    m.playButton.observeField("buttonSelected","onButtonSelected")
    m.playButton2.observeField("buttonSelected","showVideo")



    createButton()
end function

sub createButton()
  button = CreateObject("roSgNode","Button")
  button.text="Dynamic Button"
  button.showFocusFootprint="true"
  button.height="100"
  button.focusediconUri="nil.png"
  button.IconUri="nil.png"
  button.textColor="0xFF00FF"

  m.top.appendChild(button)

end sub

sub onButtonSelected()
  print "Fake button selected!"
end sub



sub showVideo()
  print "showing video"
  m.video = CreateObject("roSgNode","video")
  m.video.height = 1080
  m.video.width = 1920
  videoContentNode = CreateObject("roSgNode","contentNode")
  videoContentNode.url = "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4"
  videoContentNode.streamformat = "mp4"
  m.video.content = videoContentNode
  m.video.control = "play"
  m.top.appendChild(m.video)
end sub



function onKeyEvent(key as String, press as Boolean) as Boolean
  handled = true
  if press then
    if (key = "up")
      if m.playButton2.hasFocus() then m.playButton.setFocus(true)
    else if (key = "down")
      if m.playButton.hasFocus() then m.playButton2.setFocus(true)
    end if
  end if
  return handled
end function