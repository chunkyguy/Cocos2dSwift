//
//  IntroScene.swift
//  TapSoccer
//
//  Created by Sid on 24/06/14.
//  Copyright (c) 2014 whackylabs. All rights reserved.
//

import Foundation

/**
*  The intro scene
*  Note, that scenes should now be based on CCScene, and not CCLayer, as previous versions
*  Main usage for CCLayer now, is to make colored backgrounds (rectangles)
*
*/
class IntroScene : CCScene {
    
    init()
    {
        super.init()
        
        // Create a colored background (Dark Grey)
        let background:CCNodeColor = CCNodeColor(color: CCColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0))
        addChild(background)
        
        
        // Hello world
        let label:CCLabelTTF = CCLabelTTF(string: "Hello World", fontName: "Chalkduster", fontSize: 36.0)
        label.positionType = CCPositionType.Normalized
        label.color = CCColor.redColor()
        label.position = CGPoint(x: 0.5, y: 0.5) // Middle of screen
        addChild(label)
        
        // Helloworld scene button
        let helloWorldButton:CCButton = CCButton(title: "[ Start ]", fontName: "Verdana-Bold", fontSize: 18.0)
        helloWorldButton.positionType = CCPositionType.Normalized
        helloWorldButton.position = CGPoint(x: 0.5, y: 0.35)
        helloWorldButton.setTarget(self, selector: "onSpinningClicked:")
        addChild(helloWorldButton)
        
    }
    
    func onSpinningClicked(sender:AnyObject)
    {
        // start spinning scene with transition
        CCDirector.sharedDirector().replaceScene(HelloWorldScene(), withTransition: CCTransition(pushWithDirection: CCTransitionDirection.Left, duration: 1.0))
    }
}
