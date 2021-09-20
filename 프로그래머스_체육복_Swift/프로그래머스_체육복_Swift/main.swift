//
//  main.swift
//  프로그래머스_체육복_Swift
//
//  Created by J_Min on 2021/09/10.
//

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
//    var allCount: Int = 0
    var num: Int = 0
    var list = [Int]()
    var reserve = reserve
    for i in lost {
        if let a = reserve.firstIndex(of: i) {
            reserve.remove(at: a)
            list.append(i)
        }
    }
    
    print(reserve)
    
    
    for i in 1...n {
        if (lost.firstIndex(of: i)) == nil {
            list.append(i)
        }
    }
    print("list --> \(list)")
    
    num = list.count
    
    print("num --> \(num)")
    for i in reserve {
        if (list.firstIndex(of: i - 1)) == nil {
            print("true1")
            list.append(i - 1)
            num += 1
            continue
        }
        if (list.firstIndex(of: i + 1)) == nil {
            print("true2")
            num += 1
            list.append(i + 1)
        }
        
    }
    
    if list.last! > n {
        num -= 1
    } else if list.min()! <= 0 {
        num -= 1
    }
    
    print("num --> \(num)")
    
    return num
}

solution(20, [1, 3, 5, 9, 13, 17], [2, 4, 5, 6, 9, 10, 14, 16, 18])
//solution(5, [1, 3, 5], [2, 4, 5])
