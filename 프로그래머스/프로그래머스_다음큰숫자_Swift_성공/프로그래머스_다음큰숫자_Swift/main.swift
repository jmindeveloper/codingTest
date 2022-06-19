//
//  main.swift
//  프로그래머스_다음큰숫자_Swift
//
//  Created by J_Min on 2022/06/19.
//

import Foundation

func solution(_ n:Int) -> Int {
    var n = n
    let nRadixOneCount = String(n, radix: 2).filter { $0 == "1" }.count
    
    while true {
        n += 1
        let newNRadixOneCount = String(n, radix: 2).filter { $0 == "1" }.count
        if nRadixOneCount == newNRadixOneCount {
            return n
        }
    }
}

print(solution(1000000))
