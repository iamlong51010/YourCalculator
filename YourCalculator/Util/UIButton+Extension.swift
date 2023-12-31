//
//  UIButtonExtension.swift
//  iOS-Calculator
//
//  Created by Brais Moure on 12/01/2019.
//  Copyright © 2019 MoureDev. All rights reserved.
//

import Foundation
import UIKit

private let orange = UIColor(red: 254/255, green: 148/255, blue: 0/255, alpha: 1)

extension UIButton : UIExtensionProtocol {
    
    // UIExtensionProtocol
    func getWithAddToSuperView(_ superView: UIView?) -> UIButton {
        superView?.addSubview(self)
        return self
    }
    func getWithBindClickEventWith(target: Any?, action: Selector, tag: Int?) -> UIButton {
        if tag != nil {
            self.tag = tag!
        }
        self.addTarget(target, action: action, for: .touchUpInside)
        return self
    }
    
    // Borde redondo
    func round() {
        layer.cornerRadius = bounds.height / 2
        clipsToBounds = true
    }
    
    // Brilla
    func shine() {
        UIView.animate(withDuration: 0.1, delay: 0.0, options: .allowUserInteraction, animations: {
            self.alpha = 0.5
        }) { (completion) in
            UIView.animate(withDuration: 0.1, animations: {
                self.alpha = 1
            })
        }
    }
    
    // Apariencia selección botón de operación
    func selectOperation(_ selected: Bool) {
        backgroundColor = selected ? .white : orange
        setTitleColor(selected ? orange : .white, for: .normal)
    }
}
