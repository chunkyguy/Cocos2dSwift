//
//  Main.swift
//  TapSoccer
//
//  Created by Sid on 24/06/14.
//  Copyright (c) 2014 whackylabs. All rights reserved.
//

import Foundation

@UIApplicationMain class AppDelegate : CCAppDelegate, UIApplicationDelegate {

    override func application(application: UIApplication!, didFinishLaunchingWithOptions launchOptions: NSDictionary!) -> Bool
    {
        setupCocos2dWithOptions([CCSetupShowDebugStats: true])
        
        return true
    }
    
    override func startScene() -> (CCScene)
    {
        return HelloWorldScene.scene()
    }
}
