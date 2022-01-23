//
//  main.swift
//  백준_2212_센서_Swift
//
//  Created by J_Min on 2022/01/23.
//
// 44분

import Foundation

let numOfSensors = Int(readLine()!)!
let numOfBuilding = Int(readLine()!)!
let distance = readLine()!.split(separator: " ").map { Int($0)! }.sorted()
var divDistance = [Int]()

func solution() -> Int {
    if numOfSensors <= numOfBuilding {
        return 0
    }
    for i in 1..<distance.count {
        let div = distance[i] - distance[i - 1]
        divDistance.append(div)
    }
    divDistance = divDistance.sorted(by: >)

    for _ in 0..<numOfBuilding - 1 {
        divDistance.removeFirst()
    }
    
    var result = 0
    for i in divDistance {
        result += i
    }

//    let result = divDistance.reduce(into: 0) {
//        $0 += $1
//    }
    return result
}
print(solution())

