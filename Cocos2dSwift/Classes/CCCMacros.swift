//
//  CCCMacros.swift
//  Cocos2dSwift
//
//  Created by Sid on 26/06/14.
//  Copyright (c) 2014 whackylabs. All rights reserved.
//

/* Common place for workaround for all the Cocos2d C MACROs */

import Foundation

extension CCPositionType {

    /**
    * #define CCPositionTypeNormalized CCPositionTypeMake(CCPositionUnitNormalized, CCPositionUnitNormalized, CCPositionReferenceCornerBottomLeft)
    */
    static var Normalized:CCPositionType { get {
        return CCPositionTypeMake(CCPositionUnit.Normalized, CCPositionUnit.Normalized, CCPositionReferenceCorner.BottomLeft)
    }}

}
