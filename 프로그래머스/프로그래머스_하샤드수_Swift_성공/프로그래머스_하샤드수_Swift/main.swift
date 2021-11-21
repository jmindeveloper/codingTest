//
//  main.swift
//  프로그래머스_하샤드수_Swift
//
//  Created by J_Min on 2021/11/21.
//

import Foundation

func solution(_ x:Int) -> Bool {
    
    let arr = Array(String(x))
    var sum = 0
    print(arr)
    
    for i in 0..<arr.count {
        let a = String(arr[i])
        sum += Int(a)!
    }
    
    if x % sum == 0 {
        return true
    } else {
        return false
    }
}

solution(10)
