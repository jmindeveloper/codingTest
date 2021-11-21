//
//  main.swift
//  프로그래머스_크레인인형뽑기게임_Swift
//
//  Created by J_Min on 2021/11/21.
//

import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    
    var board = board
    var stack = [0]
    var count = 0
    
    for i in moves {
        let j = i - 1
        var k = 0
        while true {
            if k == board.count {
                break
            }
            if board[k][j] == 0 {
                k += 1
                continue
            } else {
                stack.append(board[k][j])
                board[k][j] = 0
                break
            }
        }
        if stack.count > 2 && stack[stack.count - 1] == stack[stack.count - 2] {
            stack.removeLast()
            stack.removeLast()
            count += 2
        }
    }
    return count
}

print(solution([[0,0,0,0,0],[0,0,0,0,0]], [1, 1, 3, 2, 4]))
