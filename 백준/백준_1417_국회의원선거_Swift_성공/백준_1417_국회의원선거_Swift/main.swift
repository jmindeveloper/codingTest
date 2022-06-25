//
//  main.swift
//  백준_1417_국회의원선거_Swift
//
//  Created by J_Min on 2022/06/25.
//

import Foundation

let n = Int(readLine()!)!
var arr = [Int]()
for _ in 0..<n {
    arr.append(Int(readLine()!)!)
}

func solution(_ arr: [Int]) {
    var arr = arr
    var result = 0
    var dasom = arr.removeFirst()
    if arr.isEmpty {
        print("0")
        return
    } else {
        while true {
            arr.sort(by: >)
            if dasom <= arr.first! {
                dasom += 1
                arr[0] -= 1
                result += 1
            } else {
                break
            }
        }
    }
    print(result)
}
solution(arr)


