//
//  main.swift
//  백준_20933_겹치는건싫어_Swift
//
//  Created by J_Min on 2022/08/08.
//

import Foundation

let nk = readLine()!.split(separator: " ").map { Int($0)! }
var arr = readLine()!.split(separator: " ").map { Int($0)! }

var dic = [Int: Int]()

arr.forEach {
    dic[$0] = 0
}

var result = 0

var left = 0
var right = 0

while `right` < arr.count {
    if dic[arr[`right`]]! < nk[1] {
        dic[arr[`right`]]! = dic[arr[`right`]]! + 1
        `right` += 1
    } else {
        dic[arr[`left`]]! = dic[arr[`left`]]! - 1
        `left` += 1
    }
    result = max(result, `right` - `left`)
}

print(result)
