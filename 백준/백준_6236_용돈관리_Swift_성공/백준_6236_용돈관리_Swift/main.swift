//
//  main.swift
//  백준_6236_용돈관리_Swift
//
//  Created by J_Min on 2022/05/03.
//

import Foundation

let nm = readLine()!.split(separator: " ").map { Int($0)! }
let n = nm[0]
let m = nm[1]
var arr = [Int]()

for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

var s = arr.min()!
var e = arr.reduce(0) { $0 + $1 }

func checkCount(_ money: Int) -> Int {
    var cnt = 1
    var sum = money
    for i in 0..<arr.count {
        if sum < arr[i] {
            sum = money
            cnt += 1
        }
        sum -= arr[i]
    }
    return cnt
}

var result = 0
while s <= e {
    let mid = (s + e) / 2
    
    let cnt = checkCount(mid)
    
    if cnt > m || mid < arr.max()! {
        s = mid + 1
    } else {
        e = mid - 1
        result = mid
    }
}

print(result)
