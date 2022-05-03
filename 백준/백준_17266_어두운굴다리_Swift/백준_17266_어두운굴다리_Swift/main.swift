//
//  main.swift
//  백준_17266_어두운굴다리_Swift
//
//  Created by J_Min on 2022/05/03.
//

import Foundation

let n = Int(readLine()!)!
let m = Int(readLine()!)!
var position = readLine()!.split(separator: " ").map { Int($0)! }

var s = 1
var e = n

while s <= e {
    
    let mid = (s + e) / 2
    var current = 0
    var c = true
    for p in position {
        if p - mid <= current {
            current = p + mid
        } else {
            c = false
            break
        }
    }
    
    if current < n {
        c = false
    }
    
    if c {
        e = mid - 1
    } else {
        s = mid + 1
    }
    
}

print(s)
