//
//  main.swift
//  이코테_떡볶이떡만들기_Swift
//
//  Created by J_Min on 2022/05/02.
//

import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let n = nm[0]
let m = nm[1]
let l = readLine()!.split(separator: " ").map { Int($0)! }

var s = 0
var e = l.max()!
var result = 0

while s <= e {
    let mid = (s + e) / 2
    
    var sum = 0
    for i in 0..<n {
        if l[i] > mid {
            sum += l[i] - mid
        }
    }
    
    if sum == m {
        result = mid
        break
    }

    if sum < m {
        e = mid - 1
    } else {
        s = mid + 1
    }
}

print(result)
