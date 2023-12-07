//
//  UIMgr.swift
//  YourCalculator
//
//  Created by mac on 2023/12/3.
//

import Foundation
import UIKit

final class UIMgr: InstanceProtocol {
    internal static var s_ins: UIMgr?
    static var instance: UIMgr {
        if (UIMgr.s_ins == nil) {
            UIMgr.s_ins = UIMgr()
        }
        return UIMgr.s_ins!
    }
    
    private var textFontSize : CGFloat = -1.0
    var standardfontSize : CGFloat {
        if textFontSize < 0 {
            let (widthB, _) = UIMgr.realScreenSize
            textFontSize = widthB / 22.0
        }
        return textFontSize
    }
    
    class var realScreenSize : (width: CGFloat, height: CGFloat) {
        let scrW = UIScreen.main.bounds.width
        let scrH = UIScreen.main.bounds.height
        
        if scrW > scrH {
            return (scrH, scrW)
        } else {
            return (scrW, scrH)
        }
    }
}

