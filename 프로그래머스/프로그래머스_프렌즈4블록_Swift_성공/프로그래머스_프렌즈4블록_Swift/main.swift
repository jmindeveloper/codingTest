//
//  main.swift
//  프로그래머스_프렌즈4블록_Swift
//
//  Created by J_Min on 2022/06/21.
//

import Foundation

struct Index: Hashable {
    let x: Int
    let y: Int
}

func removeBlock(_ board: inout [[Character]], _ m: Int, _ n: Int) -> (Bool, Int) {
    var removeIndex = Set<Index>()
    for i in 0..<m - 1 {
        for j in 0..<n - 1 {
            if board[i][j] == "X" { continue }
            let currentBlock = board[i][j]
            let nextBlock1 = board[i + 1][j]
            let nextBlock2 = board[i + 1][j + 1]
            let nextBlock3 = board[i][j + 1]
            
            if currentBlock == nextBlock1, currentBlock == nextBlock2, currentBlock == nextBlock3{
                removeIndex.insert(Index(x: i, y: j))
                removeIndex.insert(Index(x: i + 1, y: j))
                removeIndex.insert(Index(x: i, y: j + 1))
                removeIndex.insert(Index(x: i + 1, y: j + 1))
            }
        }
    }
    if removeIndex.isEmpty {
        return (false, 0)
    } else {
        for i in removeIndex {
            board[i.x][i.y] = "X"
        }
        return (true, removeIndex.count)
    }
}

func downBlock(_ board: inout [[Character]], _ m: Int, _ n: Int) {
    for i in (0..<m).reversed() {
        for j in 0..<n {
            if board[i][j] == "X" {
                for k in (0..<i).reversed() {
                    if board[k][j] != "X" {
                        board[i][j] = board[k][j]
                        board[k][j] = "X"
                        break
                    }
                }
            }
        }
    }
}

func solution(_ m:Int, _ n:Int, _ arr:[String]) -> Int {
    var board = [[Character]]()
    var result = 0
    
    for i in 0..<m {
        let strArr = Array(arr[i])
        board.append(strArr)
    }
    
    while true {
        let removeResult = removeBlock(&board, m, n)
        if removeResult.0 == false {
            break
        }
        downBlock(&board, m, n)
        result += removeResult.1
    }
    
    return result
}

print(solution(6, 6, ["TTTANT", "RRFACC", "RRRFCC", "TRRRAA", "TTMMMF", "TMMTTJ"]))
