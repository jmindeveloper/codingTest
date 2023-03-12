//
//  main.swift
//  프로그래머스_행렬과연산_Swift_시간초과
//
//  Created by J_Min on 2023/03/12.
//

import Foundation

func solution(_ rc:[[Int]], _ operations:[String]) -> [[Int]] {
    var rc = rc
    
    
    func shiftRow() {
        rc = [rc.removeLast()] + rc
    }
    
    func rotate() {
        var xy: (x: Int, y: Int) = (0, 0)
        var tmp = rc[xy.x][xy.y]
        let lengthX = rc[0].count - 1
        let lengthY = rc.count - 1
        
        tmp = rc[xy.x][xy.y]
        for _ in 0..<lengthX {
            xy = (xy.x, xy.y + 1)
            swap(&tmp, &rc[xy.x][xy.y])
        }
        
        for _ in 0..<lengthY {
            xy = (xy.x + 1, xy.y)
            swap(&tmp, &rc[xy.x][xy.y])
        }
        
        for _ in 0..<lengthX {
            xy = (xy.x, xy.y - 1)
            swap(&tmp, &rc[xy.x][xy.y])
        }
        
        for _ in 0..<lengthY {
            xy = (xy.x - 1, xy.y)
            swap(&tmp, &rc[xy.x][xy.y])
        }
    }
    
    for i in operations {
        switch i {
        case "ShiftRow":
            shiftRow()
        case "Rotate":
            rotate()
        default:
            break
        }
    }
    
    return rc
}

