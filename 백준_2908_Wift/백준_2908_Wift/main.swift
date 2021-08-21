//
//  main.swift
//  백준_2908_Wift
//
//  Created by J_Min on 2021/08/21.
//

// https://www.acmicpc.net/problem/2908

import Foundation

let input = readLine()!.split(separator: " ").map { Int(String($0.reversed()))! }

print(max(input[0], input[1]))

/*

 max(_ x:_ y:)
 
 x: A value to compare
 y: Another value to compare
 
 The greather of x and y. If x is equal to y, return y
 
*/

