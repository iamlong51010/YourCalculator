//
//  TimeMgr.swift
//  YourCalculator
//
//  Created by mac on 2023/12/7.
//

import Foundation

final class TimeMgr {
    static var currentTimeStamp: Int64 {
        return Int64(Date().timeIntervalSince1970 * 1000)
    }
}
