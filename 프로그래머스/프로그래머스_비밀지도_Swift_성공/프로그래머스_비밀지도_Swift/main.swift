//
//  main.swift
//  프로그래머스_비밀지도_Swift
//
//  Created by J_Min on 2022/06/23.
//

import Foundation

func changeBinaryMap(_ n: Int, _ arr: [Int]) -> [String] {
    var binaryMap = [String]()
    for i in arr {
        var binaryStr = String(i, radix: 2)
        if binaryStr.count != n {
            for _ in 0..<n - binaryStr.count {
                binaryStr = "0" + binaryStr
            }
        }
        binaryMap.append(binaryStr)
    }
    return binaryMap
}

func createNewMap(_ arr1: [String], _ arr2: [String], _ n: Int) -> [String] {
    var newMap = [String]()
    for i in 0..<n {
        var str = ""
        for j in 0..<n {
            let first = arr1[i]
            let second = arr2[i]
            if String(first[first.index(first.startIndex, offsetBy: j)]) == "1" ||
            String(second[second.index(second.startIndex, offsetBy: j)]) == "1"{
                str += "#"
            } else {
                str += " "
            }
        }
        newMap.append(str)
        str = ""
    }
    
    return newMap
}

func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var map1 = [String]()
    var map2 = [String]()
    
    map1 = changeBinaryMap(n, arr1)
    map2 = changeBinaryMap(n, arr2)
    
    return createNewMap(map1, map2, n)
}

print(solution(6, [46, 33, 33 ,22, 31, 50], [27 ,56, 19, 14, 14, 10]))
