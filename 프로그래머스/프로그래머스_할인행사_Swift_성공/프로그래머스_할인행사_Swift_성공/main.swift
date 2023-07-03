//
//  main.swift
//  프로그래머스_할인행사_Swift_성공
//
//  Created by J_Min on 2023/07/03.
//

import Foundation

func solution(_ want:[String], _ number:[Int], _ discount:[String]) -> Int {
    var result: Int = 0
    var wants: [String] = []
    
    for i in 0..<number.count {
        wants.append(contentsOf: Array(repeating: want[i], count: number[i]))
    }
    
    out: for i in 0..<discount.count {
        if discount.count - i < 10 {
            return result
        }
        
        var tenDiscount = discount[i..<i + 10]

        for w in wants {
            if let index = tenDiscount.firstIndex (where: {
                $0 == w
            }) {
                tenDiscount.remove(at: index)
            } else {
                continue
            }
            
            if tenDiscount.isEmpty {
                result += 1
            }
        }
    }
    
    return result
}

// 이게되네...............;;
