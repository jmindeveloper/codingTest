//
//  main.swift
//  백준_2751_Swift
//
//  Created by J_Min on 2021/09/05.
//

import Foundation

let n = Int(readLine()!)!

var num = [Int]()

for _ in 1...n {
    num.append(Int(readLine()!)!)
}

let numSorted = num.sorted(by: <)

for i in numSorted {
    print(i)
}

