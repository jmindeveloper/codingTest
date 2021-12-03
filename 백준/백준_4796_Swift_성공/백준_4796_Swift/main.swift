//
//  main.swift
//  백준_4796_Swift
//
//  Created by J_Min on 2021/12/03.
//

import Foundation

var count = 0

while true {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let l = input[0]
    let p = input[1]
    let v = input[2]
    
    if l == 0 && p == 0 && v == 0 {
        break
    }
    
    count += 1
    let result = min(v % p, l)
    print("Case \(count): \(result + v / p * l)")
    
}



