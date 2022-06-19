//
//  main.swift
//  프로그래머스_파일명정렬_Swift
//
//  Created by J_Min on 2022/06/19.
//

import Foundation

func solution(_ files:[String]) -> [String] {
    var filterArray = Array(repeating: Array(repeating: "", count: 3), count: files.count)
    
    for (i, file) in files.enumerated() {
        var str = ""
        var numStr = ""
        var count = 0
        var isHeaderFinish = false
        for j in file {
            if count == 5 {
                break
            }
            if (j.isLetter || [" ", ".", "-"].contains(j)) && !isHeaderFinish {
                str.append(String(j))
            } else if j.isNumber {
                isHeaderFinish = true
                numStr.append(String(j))
                count += 1
            } else {
                break
            }
        }
        filterArray[i][0] = file
        filterArray[i][1] = str
        filterArray[i][2] = numStr
    }
    
    let sortedArray = filterArray.sorted {
        $0[1].lowercased() != $1[1].lowercased() ?
        $0[1].lowercased() < $1[1].lowercased() :
        Int($0[2]) ?? 0 < Int($1[2]) ?? 0
    }
    
    let result = sortedArray.map { $0[0] }
    
    return result
}

print(solution(["img12.png", "img10.png", "img02.png", "img1.png", "IMG01.GIF", "img2.JPG"]))
