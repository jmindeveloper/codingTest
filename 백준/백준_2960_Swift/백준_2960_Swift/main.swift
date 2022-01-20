//
//  main.swift
//  백준_2960_Swift
//
//  Created by J_Min on 2022/01/20.
//

import Foundation

var arr = [Int]()
let aaa = readLine()!.split(separator: " ").map { Int($0)! }
let input = aaa[0]
var count = aaa[1]
var result = 0
var isDone = false

for i in 2...input {
    arr.append(i)
}

while count != 0 {
    var num = 0
    let arr2 = arr
    for i in 0..<arr2.count {
        num = arr2.first!
        if arr2[i] % num == 0 {
            result = arr2[i]
            let index = arr.firstIndex(of: result)!
            arr.remove(at: index)
            count -= 1
            if count == 0 {
//                isDone = true
                break
            }
        }
    }
//    if isDone == true {
//        break
//    }
    
}

print(result)
