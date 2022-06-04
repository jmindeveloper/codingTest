//
//  main.swift
//  백준_1713_후보추천하기_Swift
//
//  Created by J_Min on 2022/06/02.
//

import Foundation

let n = Int(readLine()!)!
let m = Int(readLine()!)!
var arr = readLine()!.split(separator: " ").map { Int($0)! }
// 학생번호: (추천된 수, 등록된순서)
var dic = [Int: (Int, Int)]()

for i in 0..<arr.count {
    if dic[arr[i]] == nil {
        if dic.count == n {
            let sortedDic = dic.sorted { $0.value.0 != $1.value.0 ? $0.value.0 < $1.value.0 : $0.value.1 < $1.value.1
            }
            let key = sortedDic.first!.key
            dic[key] = nil
        }
        dic[arr[i]] = (1, i)
    } else {
        dic[arr[i]]!.0 += 1
    }
}

let result = dic.sorted { $0.key < $1.key }.map { $0.key }

for i in result {
    print(i, terminator: " ")
}



