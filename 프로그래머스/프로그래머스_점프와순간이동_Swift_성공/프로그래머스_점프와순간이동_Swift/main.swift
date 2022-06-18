//
//  main.swift
//  프로그래머스_점프와순간이동_Swift
//
//  Created by J_Min on 2022/06/18.
//

import Foundation

func solution(_ n:Int) -> Int
{
    var ans:Int = 0
    var n = n
    
    while n != 0 {
        if n % 2 == 1 {
            n -= 1
            ans += 1
            continue
        } else {
            n /= 2
        }
    }
    

    return ans
}
