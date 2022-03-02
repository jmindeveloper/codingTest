//
//  main.swift
//  백준_1744_수묶기_Swift
//
//  Created by J_Min on 2022/03/02.
//
// 와 이거 어렵네;;

import Foundation

var arr = [Int]()

for _ in 0..<Int(readLine()!)! {
    arr.append(Int(readLine()!)!)
}

var negative = [Int]()
var positive = [Int]()

// 음수랑 양수로 나누기
for i in arr {
    if i <= 0 {
        negative.append(i)
    } else {
        positive.append(i)
    }
}

negative.sort(by: >)
positive.sort(by: <)

var result = 0

// 양수
while !positive.isEmpty {
    let a = positive.removeLast()
    var b = 0
    // positive에 값이 하나밖에 없으면 b는 안받음
    if !positive.isEmpty {
        b = positive.removeLast()
    }
    
    // 숫자가 둘중 하나만 1 혹은 0이면 곱하는것보다 더하는게 더 큼
    if (a == 1 || b == 1) || (a == 0 || b == 0) {
        result += a + b
    } else {
        result += a * b
    }
}

// 음수
while !negative.isEmpty {
    let a = negative.removeLast()
    var b = 0
    // negative일때 값을 안받아서 b가 0인거랑 값을 받아서 0인거랑 구별하는 변수
    // 변수이름짓기 귀찮...
    var isklsflksdkd = false
    // negative에 값이 하나밖에 없으면 b는 안받음
    if !negative.isEmpty {
        b = negative.removeLast()
    } else {
        isklsflksdkd = true
    }
    
    // 음수일때는 무조건 곱하는게 더 큼ㅋ
    // 단 b가 값을 안받아서 0일때는 더해줘야함
    if !isklsflksdkd {
        result += a * b
    } else {
        result += a + b
    }
}

print(result)
