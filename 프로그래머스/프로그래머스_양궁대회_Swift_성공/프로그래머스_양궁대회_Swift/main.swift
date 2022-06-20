//
//  main.swift
//  프로그래머스_양궁대회_Swift
//
//  Created by J_Min on 2022/06/20.
//

import Foundation

func findHighScore(_ l: [Int], _ a: [Int]) -> (Bool, Int) {
    var lScore = 0
    var aScore = 0
    
    for i in 0..<l.count {
        if l[i] != 0 || a[i] != 0 {
            if l[i] > a[i] {
                lScore += 10 - i
            } else {
                aScore += 10 - i
            }
        }
    }
    
    if lScore > aScore {
        return (true, lScore - aScore)
    } else {
        return (false, 0)
    }
}

func findLowScoreArray(_ first: [Int], _ second: [Int]) -> [Int] {
    for i in (0..<first.count).reversed() {
        if first[i] < second[i] {
            return second
        } else if first[i] > second[i] {
            return first
        }
    }
    return []
}

func solution(_ n:Int, _ info:[Int]) -> [Int] {
    var lionScore = Array(repeating: 0, count: 11)
    var result = [Int]()
    var highScore = 0
    
    func dfs(_ arrowCount: Int, _ index: Int) {
        if n == 0 || index == 10 {
            lionScore[10] = arrowCount
            let isHighScore = findHighScore(lionScore, info)
            
            if isHighScore.0 {
                if isHighScore.1 > highScore {
                    result = lionScore
                    highScore = isHighScore.1
                } else if highScore == isHighScore.1 {
                    result = findLowScoreArray(lionScore, result)
                }
            }
            return
        } else {
            for shotArrowCount in 0...arrowCount {
                lionScore[index] = shotArrowCount
                dfs(arrowCount - shotArrowCount, index + 1)
            }
        }
    }
    
    dfs(n, 0)
    
    if result.isEmpty {
        return [-1]
    } else {
        return result
    }
}


print(solution(10, [0,0,0,0,0,0,0,0,3,4,3]))
