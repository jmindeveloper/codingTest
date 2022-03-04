//
//  main.swift
//  백준_3020_개똥벌레_Swift
//
//  Created by J_Min on 2022/03/04.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let n = input[0]
let h = input[1]
var up = [Int]()
var down = [Int]()

for i in 1...n {
    if i % 2 == 1 {
        up.append(Int(readLine()!)!)
    } else {
        down.append(Int(readLine()!)!)
    }
}

up.sort()
down.sort()

func binarySearch(_ arr: [Int], )
