//
//  main.swift
//  백준_5585_Swift
//
//  Created by J_Min on 2021/10/04.
//

import Foundation

let userMoney = 1000
let money = Int(readLine()!)!
var changeMoney = userMoney - money
var count = 0
let changeMoneyArr = [500, 100, 50, 10, 5, 1]
var index = 0


for i in changeMoneyArr {
    count += changeMoney / i
    changeMoney = changeMoney % i
}

//while(changeMoney != 0) {
//    count += changeMoney / changeMoneyArr[index]
//    changeMoney = changeMoney % changeMoneyArr[index]
//    index += 1
//}

print(count)

