Cocos2dSwift
============

Getting started with Cocos2d with Swift

Change Log
-----------

1. All places where we used the handly MACRO to create CGPoint

```[objc]
backButton.position = ccp(0.85, 0.95);
```

is replaced with the full function. For some reasons this was throwing linking errors

```
backButton.position = CGPointMake(0.85, 0.95)
```

2. The position type which is again a C MACRO isn't working anymore

```[objc]
label.positionType = CCPositionTypeNormalized;
```

the replacement is to use the full form.

```
label.positionType = CCPositionTypeMake(CCPositionUnit.Normalized, CCPositionUnit.Normalized, CCPositionReferenceCorner.BottomLeft)
```

3. Using class methods to create Scenes seems rather awkward with Swift

```[objc]
+ (IntroScene *)scene
{
    return [[self alloc] init];
}
```

```[objc]
[[CCDirector sharedDirector] replaceScene:[IntroScene scene] withTransition:[CCTransition transitionPushWithDirection:CCTransitionDirectionRight duration:1.0f]];
```

I guess using the initializer would look better. 

```
CCDirector.sharedDirector().replaceScene(IntroScene.scene(), withTransition: CCTransition(pushWithDirection: CCTransitionDirection.Right, duration: 1.0))
```

```
CCDirector.sharedDirector().replaceScene(IntroScene(), withTransition: CCTransition(pushWithDirection: CCTransitionDirection.Right, duration: 1.0))
```