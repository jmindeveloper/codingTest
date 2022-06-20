//
//  main.swift
//  프로그래머스_최댓값과최솟값_Swift
//
//  Created by J_Min on 2022/06/20.
//

func solution(_ s:String) -> String {
    let arr = s.split(separator: " ").map { Int(String($0))! }
    let result = "\(arr.min()!) \(arr.max()!)"
    return result
}

print(solution("1 2 3 4"))

