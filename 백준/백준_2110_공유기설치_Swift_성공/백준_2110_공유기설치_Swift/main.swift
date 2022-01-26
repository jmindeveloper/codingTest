//
//  main.swift
//  백준_2110_공유기설치_Swift
//
//  Created by J_Min on 2022/01/26.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let houseCount = input[0]
let modemCount = input[1]
var houseDistance = [Int]()
var result = 0

for _ in 0..<houseCount {
    let input1 = Int(readLine()!)!
    houseDistance.append(input1)
}
houseDistance.sort()

var min = 1
var max = houseDistance.last! - houseDistance.first!

while min <= max {
    let mid = (max + min) / 2
    var count = 1
    var modem = houseDistance[0]
    
    for i in 0..<houseDistance.count {
        if houseDistance[i] >= modem + mid {
            
            modem = houseDistance[i]
            count += 1
        }
    }
    
    if count >= modemCount {
        result = mid
        min = mid + 1
    } else {
        max = mid - 1
    }
}

print(result)
