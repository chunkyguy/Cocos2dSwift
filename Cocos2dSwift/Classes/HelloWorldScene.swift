
//
//  HelloWorldScene.swift
//  TapSoccer
//
//  Created by Sid on 24/06/14.
//  Copyright (c) 2014 whackylabs. All rights reserved.
//

import Foundation

/**
*  The main scene
*/
class HelloWorldScene : CCScene {
    
    let _sprite:CCSprite?
        
    init()
    {
        super.init()
        
        // Enable touch handling on scene node
        userInteractionEnabled = true
        
        // Create a colored background (Dark Grey)
        var background:CCNodeColor = CCNodeColor(color: CCColor(red: 0.2, green: 0.2, blue: 0.2, alpha: 1.0))
        addChild(background)
        
        // Add a sprite
        _sprite = CCSprite(imageNamed: "Icon-72.png")

        _sprite!.position = CGPoint(x: self.contentSize.width/2, y: self.contentSize.height/2)
        addChild(_sprite)
        
        // Animate sprite with action
        let actionSpin:CCActionRotateBy = CCActionRotateBy(duration: 1.5, angle: 360)
        _sprite?.runAction(actionSpin)
        
        // Create a back button
        let backButton:CCButton = CCButton(title: "[ Menu ]", fontName: "Verdana-Bold", fontSize: 18.0)
        backButton.positionType = CCPositionType.Normalized
//            CCPositionTypeMake(CCPositionUnit.Normalized, CCPositionUnit.Normalized, CCPositionReferenceCorner.BottomLeft)
        backButton.position = CGPoint(x: 0.85, y: 0.95) // Top Right of screen
        backButton.setTarget(self, selector: "onBackClicked:")
        addChild(backButton)
        
    }
    
    deinit
    {
        // clean up code goes here
    }
    
    override func onEnter()
    {
        // always call super onEnter first
        super.onEnter()
        
        // In pre-v3, touch enable and scheduleUpdate was called here
        // In v3, touch is enabled by setting userInterActionEnabled for the individual nodes
        // Per frame update is automatically enabled, if update is overridden
    }
    
    override func onExit()
    {
        // always call super onExit last
        super.onExit()
    }
    
    override func touchBegan(touch: UITouch!, withEvent event: UIEvent!)
    {
        let touchLoc:CGPoint = touch.locationInNode(self)
        
        // Log touch location
        println("Move sprite to \(NSStringFromCGPoint(touchLoc))")
        
        // Move our sprite to touch location
        let actionMove:CCActionMoveTo = CCActionMoveTo(duration: 1.0, position: touchLoc)
        _sprite!.runAction(actionMove)
    }
    
    func onBackClicked(sender:AnyObject)
    {
        // back to intro scene with transition
        CCDirector.sharedDirector().replaceScene(IntroScene(), withTransition: CCTransition(pushWithDirection: CCTransitionDirection.Right, duration: 1.0))
        
    }
}