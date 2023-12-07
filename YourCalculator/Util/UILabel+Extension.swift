//
//  UILabel.swift
//  YourCalculator
//
//  Created by mac on 2023/12/3.
//

import Foundation
import UIKit

extension UILabel : UIExtensionProtocol {
    
    // UIExtensionProtocol
    func getWithAddToSuperView(_ superView: UIView?) -> UILabel {
        superView?.addSubview(self)
        return self
    }
    
    func getWithBindClickEventWith(target: Any?, action: Selector, tag: Int?) -> UILabel {
        if tag != nil {
            self.tag = tag!
        }
        self.isUserInteractionEnabled = true
        let tap = UITapGestureRecognizer(target: target, action: action)
        self.addGestureRecognizer(tap)
        return self
    }
}
