//
//  UIView+Extension.swift
//  YourCalculator
//
//  Created by mac on 2023/12/3.
//

import UIKit

extension UIView {
    var left: CGFloat {
        return self.frame.minX
    }
    var right: CGFloat {
        return self.frame.maxX
    }
    var top: CGFloat {
        return self.frame.minY
    }
    var bottom: CGFloat {
        return self.frame.maxY
    }
}
