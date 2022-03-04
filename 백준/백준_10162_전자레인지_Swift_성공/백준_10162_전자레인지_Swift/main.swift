//
//  main.swift
//  백준_10162_전자레인지_Swift
//
//  Created by J_Min on 2022/03/04.
//

import Foundation

var t = Int(readLine()!)!
var pushCount = [Int]()
var buttonTime = [300, 60, 10]

for time in buttonTime {
    pushCount.append(t / time)
    t = t % time
}

if t > 0 {
    print("-1")
} else {
    print("\(pushCount[0]) \(pushCount[1]) \(pushCount[2])")
}

