//
//  main.swift
//  백준_2798_블랙잭_Swift
//
//  Created by J_Min on 2022/01/22.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let cards = readLine()!.split(separator: " ").map { Int($0)! }
var result = 0
func solution(_ n: Int, m: Int, cards: [Int])-> Int {
    var beforeNum = 0
    for i in 0..<n {
        for j in i + 1..<n {
            for k in j + 1..<n {
                let nowNum = cards[i] + cards[j] + cards [k]
                if nowNum == m {
                    return nowNum
                } else if nowNum > m {
                    continue
                } else if nowNum > beforeNum {
                    beforeNum = nowNum
                }
            }
        }
    }
    return beforeNum
}

print(solution(input[0], m: input[1], cards: cards))
