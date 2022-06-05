//
//  main.swift
//  프로그래머스_피로도_Swift
//
//  Created by J_Min on 2022/06/05.
//

import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    
    var result = 0
    var visited = Array(repeating: false, count: dungeons.count)
    
    func dfs(_ x: Int, _ currentK: Int, _ clearCount: Int) {
        if x == dungeons.count {
            result = max(result, clearCount)
            return
        }
        
        for i in 0...dungeons.count {
            if i == dungeons.count {
                dfs(x + 1, currentK, clearCount)
                continue
            }
            if visited[i] == false {
                if currentK >= dungeons[i][0] {
                    visited[i] = true
                    dfs(x + 1, currentK - dungeons[i][1], clearCount + 1)
                    visited[i] = false
                }
            }
        }
    }
    
    dfs(0, k, 0)
    
    return result
}
