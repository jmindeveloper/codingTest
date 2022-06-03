//
//  main.swift
//  프로그래머스_문자열업축_Swift
//
//  Created by J_Min on 2022/06/03.
//

import Foundation

func sliceString(_ s: String, _ sliceCount: Int) -> [String] {
    var s = s
    var stack: String = ""
    var arr = [String]()
    for _ in 1...s.count {
        stack.append(String(s.removeFirst()))
        if stack.count == sliceCount {
            arr.append(stack)
            stack.removeAll()
        }
    }
    
    if !stack.isEmpty {
        arr.append(stack)
    }

    return arr
}

func compressString(_ s: String, _ cutCount: Int) -> Int {
    
    var arr = sliceString(s, cutCount)
    
    var first = ""
    var second = ""
    var count = 1
    var compressStr = ""
    
    while !arr.isEmpty {
        if first.isEmpty {
            first = arr.removeFirst()
            continue
        } else {
            second = arr.removeFirst()
        }
        
        if first == second {
            count += 1
            continue
        } else {
            if count == 1 {
                compressStr += first
            } else {
                compressStr += "\(count)\(first)"
            }
            first = second
            count = 1
        }
    }
    
    if first == second {
        if count == 1 {
            compressStr += first
        } else {
            compressStr += "\(count)\(first)"
        }
    }
    
    return compressStr.count
}

func solution(_ s:String) -> Int {
    
    var result = Int.max
    
    if s.count == 1 {
        return 1
    }
    
    for i in 1...s.count / 2 {
        result = min(compressString(s, i), result)
    }
    
    return result
}

