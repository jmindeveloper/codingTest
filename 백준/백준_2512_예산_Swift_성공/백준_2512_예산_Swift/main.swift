//
//  main.swift
//  백준_2512_예산_Swift
//
//  Created by J_Min on 2022/05/03.
//

import Foundation

let n = Int(readLine()!)!
let arr = readLine()!.split(separator: " ").map { Int($0)! }
let m = Int(readLine()!)!

var s = 0
//var e = m --> 틀린코드
var e = arr.max()!

var result = 0
while s <= e {
    if arr.reduce(0, { $0 + $1 }) < m {
        result = arr.max()!
        break
    }
    
    let mid = (s + e) / 2
    
    var sum = 0
    for i in arr {
        if i <= mid {
            sum += i
        } else {
            sum += mid
        }
    }
    
    if sum <= m {
        result = mid
        s = mid + 1
    } else {
        e = mid - 1
    }
}

print(result)


/*
5
4 4 5 5 2
7
1
 */
