//
//  main.swift
//  백준_1912_연속합_Swift
//
//  Created by J_Min on 2022/06/05.
//

import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map { Int($0)! }
arr.insert(0, at: 0)

for i in 1...n {
    if arr[i - 1] > 0, arr[i - 1] + arr[i] > 0 {
        arr[i] = arr[i - 1] + arr[i]
    }
}
print(arr)
arr.removeFirst()
print(arr.max()!)


