//
//  UIExtensionProtocol.swift
//  YourCalculator
//
//  Created by mac on 2023/12/3.
//

import Foundation
import UIKit

protocol UIExtensionProtocol {
    associatedtype UIItem
    func getWithAddToSuperView(_ superView: UIView?) -> UIItem
    func getWithBindClickEventWith(target: Any?, action: Selector, tag: Int?) -> UIItem
}

