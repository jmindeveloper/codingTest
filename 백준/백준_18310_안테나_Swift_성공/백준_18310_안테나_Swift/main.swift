//
//  main.swift
//  백준_18310_안테나_Swift
//
//  Created by J_Min on 2022/06/06.
//

import Foundation

let n = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map { Int($0)! }
arr.sort(by: <)

var half: Int {
    get {
        if n % 2 == 0 {
            return n / 2
        } else {
            return n / 2 + 1
        }
    }
}

print(arr[half - 1])
