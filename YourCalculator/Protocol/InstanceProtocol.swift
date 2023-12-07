//
//  InstanceProtocol.swift
//  YourCalculator
//
//  Created by mac on 2023/12/3.
//

import Foundation

protocol InstanceProtocol {
    associatedtype Item
    static var s_ins: Item? {get set}
    static var instance: Item {get}
}

protocol InstanceNotCreateProtocol {
    associatedtype Item
    static var s_ins: Item? {get set}
    static var instanceNotCreate: Item? {get}
}
