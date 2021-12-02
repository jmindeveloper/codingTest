//
//  main.swift
//  백준_14235_Swift
//
//  Created by J_Min on 2021/12/02.
//

import Foundation

let input = Int(readLine()!)!
var gift = [Int]()

for _ in 0..<input {
    let input2 = readLine()!.split(separator: " ").map { Int($0)! }
    if input2.count == 1 {
        if gift.isEmpty {
            print("-1")
        } else {
            let maxGift = gift.max()!
            print(maxGift)
            let index = gift.firstIndex(of: maxGift)!
            gift.remove(at: index)
        }
    } else {
        for i in 1..<input2.count {
            gift.append(input2[i])
        }
    }
}

