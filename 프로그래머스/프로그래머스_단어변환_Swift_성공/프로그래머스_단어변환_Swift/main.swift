//
//  main.swift
//  프로그래머스_단어변환_Swift
//
//  Created by J_Min on 2022/05/30.
//

import Foundation

extension String {
    subscript(idx: Int) -> String {
        let target = index(startIndex, offsetBy: idx)
        return String(self[target])
    }
}

func compareWord(_ first: String, _ second: String) -> Bool {
    var count = 0
    
    for i in 0..<first.count {
        if first[i] != second[i] {
            count += 1
        }
    }
    
    if count == 1 {
        return true
    } else {
        return false
    }
}

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    
    var result = Int.max
    var visited = [begin]
    
    func dfs(x: Int, currentWord: String) {
        
        if currentWord == target {
            result = min(x, result)
        } else {
            for word in words {
                if visited.contains(word) { continue }
                if compareWord(currentWord, word) {
                    visited.append(word)
                    dfs(x: x + 1, currentWord: word)
                    let index = visited.firstIndex(of: word)!
                    visited.remove(at: index)
                }
            }
        }
    }
    
    dfs(x: 0, currentWord: begin)
    
    if result == Int.max {
        return 0
    } else {
        return result
    }
}

print(solution("hit", "cog", ["hot", "dot", "dog", "lot", "log", "cog"]))
