//
//  main.swift
//  프로그래머스_자물쇠와열쇠_Swift
//
//  Created by J_Min on 2022/01/29.
//

import Foundation

func solution(_ key:[[Int]], _ lock:[[Int]]) -> Bool {
    
    var key = key
    
    // MARK: lock배열의 3배크기 배열 만들기
    var bigLock = Array(repeating: Array(repeating: 0, count: lock.count * 3), count: lock.count * 3)
    
    // MARK: bigLock배열의 중심에 기존 lock배열 대입
    for i in 0..<lock.count {
        for j in 0..<lock[i].count {
            bigLock[i + lock.count][j + lock.count] = lock[i][j]
        }
    }
    
    for _ in 0..<4 {
        
        key = rotateDegree90(key)
        
        for i in 0..<lock.count * 2 {
            for j in 0..<lock.count * 2 {
                for x in 0..<key.count {
                    for y in 0..<key.count {
                        
                        bigLock[i + x][j + y] += key[x][y]
                        
                    }
                }
                if check(bigLock, lockCount: lock.count) == true {
                    return true
                } else {
                    for x in 0..<key.count {
                        for y in 0..<key.count {
                            bigLock[i + x][j + y] -= key[x][y]
                        }
                    }
                }
            }
        }
        
        
    }
    
    return false
}

// MARK: 90도 회전
func rotateDegree90(_ arr: [[Int]]) -> [[Int]] {
    
    let row = arr[0].count
    let line = arr.count
    var rotateArr = Array(repeating: Array(repeating: 0, count: line), count: row)
    
    for i in 0..<arr.count {
        for j in 0..<arr[i].count {
            rotateArr[j][arr.count - 1 - i] = arr[i][j]
        }
    }
    
    return rotateArr
}

// MARK: 열쇠체크
func check(_ arr: [[Int]], lockCount: Int) -> Bool {
    for i in arr.count / 3..<arr.count / 3 + lockCount {
        for j in arr.count / 3..<arr.count / 3 + lockCount {
            if arr[i][j] != 1 { return false }
        }
    }
    return true
}

print(solution([[0, 0, 0], [1, 0, 0], [0, 1, 1]], [[1, 1, 1], [1, 1, 0], [1, 0, 1]]))
