//
//  main.swift
//  백준_1092_배_Swift
//
//  Created by J_Min on 2022/01/23.
//
// 26분

import Foundation

let n = Int(readLine()!)!
let maxWeight = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: >)
let productCount = Int(readLine()!)!
var productWeight = readLine()!.split(separator: " ").map { Int($0)! }.sorted(by: >)

func solution(_ crainMaxWeight: [Int], _ productWeight: [Int]) -> Int {
    var productWeight = productWeight
    var count = 0
    if crainMaxWeight.first! < productWeight.first! {
        return -1
    } else {
        while true {
            if productWeight.isEmpty { break }
            for i in 0..<crainMaxWeight.count {
                for j in 0..<productWeight.count {
                    if crainMaxWeight[i] >= productWeight[j] {
                        productWeight.remove(at: j)
                        break
                    }
                }
            }
            count += 1
        }
    }
    
    return count
}

print(solution(maxWeight, productWeight))
