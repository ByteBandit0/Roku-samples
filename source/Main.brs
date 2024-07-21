'*************************************************************
'** Hello World example 
'** Copyright (c) 2015 Roku, Inc.  All rights reserved.
'** Use of the Roku Platform is subject to the Roku SDK License Agreement:
'** https://docs.roku.com/doc/developersdk/en-us
'*************************************************************

sub Main()
    print "in showChannelSGScreen"
    'Indicate this is a Roku SceneGraph application'
    screen = CreateObject("roSGScreen") 'Creates a screen on which the app wil be rendered(A base screen)
    m.port = CreateObject("roMessagePort") 'A medium to listen any change on assigned component.
    screen.setMessagePort(m.port) ' setMessagePort is used to assign listener on given component. Here we are listening for any change in screen comopnent which is our base screen.
    'Create a scene and load /components/helloworld.xml'
    screen.CreateScene("mainScene") 'creates a scene which will be visible to user : CreateScene() is a method
    screen.show() 'show() is a method to render HellopwWorld on screen

    while(true)
        msg = wait(0, m.port)  'it will wait for specified time before listening to m.port everytime! and extracts the event 
        msgType = type(msg)
        if msgType = "roSGScreenEvent"
            if msg.isScreenClosed() then return
        end if
    end while
end sub
