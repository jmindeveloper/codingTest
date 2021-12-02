//
//  main.swift
//  프로그래머스_삼각달팽이_Swift
//
//  Created by J_Min on 2021/12/02.
//

import Foundation

import Foundation

func solution(_ n:Int) -> [Int] {
    
    var anotherTriangle = n - 3
    var count = n
    var num = 0
    var arr1 = [[Int]]()
    
    while anotherTriangle > -1 {
        var arr = [Int]()
        
        while !(count == n - 3) {
            for _ in 0..<count {
                num += 1
                arr.append(num)
            }
            count -= 1
        }
        arr1.append(arr)
        anotherTriangle -= 1
    }
    print(arr1)
    return []
}

func triangle(n: Int) -> [Int] {
    var anotherTriangle = n - 3
    var count = n
    var num = 0
    var arr1 = [[Int]]()
    
    while anotherTriangle > -1 {
        var arr = [Int]()
        
        while !(count == n - 3) {
            for _ in 0..<count {
                num += 1
                arr.append(num)
            }
            count -= 1
        }
        arr1.append(arr)
        anotherTriangle -= 1
    }
    
    print(arr1)
    return []
    
}

    

print(solution(3))
