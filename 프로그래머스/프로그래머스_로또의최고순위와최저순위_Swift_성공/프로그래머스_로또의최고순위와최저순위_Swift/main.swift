//
//  main.swift
//  프로그래머스_로또의최고순위와최저순위_Swift
//
//  Created by J_Min on 2021/11/19.
//

import Foundation

func solution(_ lottos: [Int], _ win_nums: [Int]) -> [Int] {
    
    var lotto = lottos
    var zeroNumCount = 0
    var prizeNumCount = 0
    var result = [Int]()
    
    for i in win_nums {
        for j in lotto {
            if j == 0 {
                zeroNumCount += 1
                let index = lotto.firstIndex(of: j)!
                lotto.remove(at: index)
                print(lotto)
                continue
            }
            if i == j {
                prizeNumCount += 1
                let index = lotto.firstIndex(of: j)!
                lotto.remove(at: index)
                print(lotto)
                break
            }
        }
    }
    
    print("zeroNumCount --> \(zeroNumCount)")
    print("prizeNumCount --> \(prizeNumCount)")
    
    if prizeNumCount == 0 {
        if zeroNumCount == 6 {
            result.append(1)
        } else {
            result.append(6)
        }
    } else {
        result.append(7 - (zeroNumCount + prizeNumCount))
    }
    
    if zeroNumCount == 6 {
        result.append(6)
    } else {
        result.append(7 - prizeNumCount)
    }
    
    return result
}

print(solution([1, 2, 3, 4, 5, 6], [7, 8 ,9 ,10, 11, 12]))
