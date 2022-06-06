//
//  main.swift
//  백준_1052_물병_Swift
//
//  Created by J_Min on 2022/06/06.
//

import Foundation

let nk = readLine()!.split(separator: " ").map { Int($0)! }
var n = nk[0]
let k = nk[1]
var count = 1
var result = 0

while n > k {

    print("n: ", n)
//    print("needBottle: ", needBottle)
    print("result: ", result)
    print("-----------")
    
    if n % 2 == 0 {
        n = n / 2
    } else {
        n = n / 2 + 1
        result += count * 2
    }
    count += 1
}

print(result)
