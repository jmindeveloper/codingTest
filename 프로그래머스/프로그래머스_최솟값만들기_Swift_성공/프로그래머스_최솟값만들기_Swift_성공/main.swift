//
//  main.swift
//  프로그래머스_최솟값만들기_Swift_성공
//
//  Created by J_Min on 2022/03/20.
//

import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    var aSorted = A.sorted()
    var bSorted = B.sorted()
    var sum = 0
    
    while !aSorted.isEmpty {
        let aMin = aSorted.removeFirst()
        let bMax = bSorted.removeLast()
        sum += aMin * bMax
    }
    return sum
}
