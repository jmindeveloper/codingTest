//
//  main.swift
//  프로그래머스_뉴스클러스링_Swift
//
//  Created by J_Min on 2022/06/22.
//

import Foundation

extension String {
    subscript(idx: Int) -> String {
        let target = index(startIndex, offsetBy: idx)
        return String(self[target])
    }
}

func sliceStr(_ str: String) -> [String] {
    var arr = [String]()
    
    for i in 1..<str.count {
        let first = str[i - 1]
        let second = str[i]
        
        if Character(first).isLetter, Character(second).isLetter {
            arr.append(first.lowercased() + second.lowercased())
        }
    }
    
    return arr
}

func getSimilarity(_ str1: [String], _ str2: [String]) -> Int {
    let str1Set = Set(str1)
    let str2Set = Set(str2)
    let gyo = str1Set.intersection(str2Set)
    let hab = str1Set.union(str2Set)
    
    var gyoCount = gyo.count
    var habCount = hab.count
    
    if gyoCount == 0, habCount == 0 {
        return 65536
    }
    
    for i in hab {
        let str1FilterCount = str1.filter { $0 == i }.count
        let str2FilterCount = str2.filter { $0 == i }.count
        
        habCount += max(str1FilterCount, str2FilterCount) - 1
        if gyo.contains(i) {
            gyoCount += min(str1FilterCount, str2FilterCount) - 1
        }
    }
    return Int((Double(gyoCount) / Double(habCount)) * 65536)
}


func solution(_ str1:String, _ str2:String) -> Int {
    
    let str1 = sliceStr(str1)
    let str2 = sliceStr(str2)
    
    return getSimilarity(str1, str2)
}

print(solution("FRANCE", "french"))
