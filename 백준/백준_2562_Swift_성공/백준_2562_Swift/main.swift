//
//  main.swift
//  백준_2562_Swift
//
//  Created by J_Min on 2021/09/22.
//

import Foundation

var arr = [Int]()

for _ in 1...9 {
    arr.append(Int(readLine()!)!)
}

let max = arr.max()!
let maxIndex = arr.firstIndex(of: max)!

print(max)
print(maxIndex + 1)
