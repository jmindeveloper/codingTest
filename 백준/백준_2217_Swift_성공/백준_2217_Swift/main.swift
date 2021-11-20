//
//  main.swift
//  백준_2217_Swift
//
//  Created by J_Min on 2021/11/20.
//

import Foundation

var numberOfRope = Int(readLine()!)!
var arr = [Int]()

for _ in 0..<numberOfRope {
    arr.append(Int(readLine()!)!)
}

arr = arr.sorted(by: >)

var result = arr[0] * 1
for i in 1..<arr.count {
    let x = arr[i] * (i + 1)
    print(x)
    if result < x {
        result = x
    }
}
print(result)

