//
//  main.swift
//  백준_1052_물병_Swift
//
//  Created by J_Min on 2022/06/25.
//

import Foundation

var nk = readLine()!.split(separator: " ").map { Int($0)! }
var n = nk[0]
let k = nk[1]
var result = 0

while true {
    var count = 0
    while n != 0 {
        if n % 2 == 1 {
            count += 1
        }
        n /= 2
    }
    if count <= k {
        break
    }
    nk[0] += 1
    n = nk[0]
    result += 1
}

print(result)
