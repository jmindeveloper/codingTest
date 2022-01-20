//
//  main.swift
//  백준_2839_Swift
//
//  Created by J_Min on 2022/01/20.
//

import Foundation

let sugarWeight = Int(readLine()!)!

var fiveKgNum = sugarWeight / 5
var RemainSugarWeight = sugarWeight % 5
//print("fiveKgNum --> \(fiveKgNum)")
var threeKgNum = RemainSugarWeight / 3
RemainSugarWeight = RemainSugarWeight % 3
//print("threeKgNum --> \(threeKgNum)")
//print("RemainSugarWeight --> \(RemainSugarWeight)")

if RemainSugarWeight > 0 {
    let saveFiveKgNum = fiveKgNum
    for i in 0...fiveKgNum {
        if fiveKgNum != 0 {
            fiveKgNum -= 1
            RemainSugarWeight = sugarWeight - fiveKgNum * 5
        }
        threeKgNum = RemainSugarWeight / 3
        RemainSugarWeight = RemainSugarWeight % 3
        if RemainSugarWeight > 0 {
            if i == saveFiveKgNum {
                print("-1")
                break
            } else {
                continue
            }
        } else {
            print(fiveKgNum + threeKgNum)
            break
        }
    }
} else if sugarWeight == 0 {
    print("-1")
} else {
    print(fiveKgNum + threeKgNum)
}
