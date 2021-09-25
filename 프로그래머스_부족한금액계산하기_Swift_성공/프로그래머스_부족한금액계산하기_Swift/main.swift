//
//  main.swift
//  프로그래머스_부족한금액계산하기_Swift
//
//  Created by J_Min on 2021/09/25.
//

import Foundation


func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    var answer: Int64 = 0
    var needMoney: Int64 = 0
    
    for i in 1...count {
        needMoney = needMoney + Int64(price * i)
    }
    
    answer = needMoney - Int64(money)
    
    if needMoney < money {
        return 0
    } else {
        return answer
    }
    
}

print(solution(3, 20, 4))
