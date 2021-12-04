//
//  main.swift
//  프로그래머스_스킬트리_Swift
//
//  Created by J_Min on 2021/12/04.
//

import Foundation

func solution(_ skill: String, _ skillTree: [String]) -> Int {
    
    let skills = Array(skill)
    var result = 0
    
    for i in skillTree {
        let skillTreeElement = Array(i)
        var skillStack = skills
        for j in skillTreeElement {
            if skillStack.contains(j) {
                let nextSkill = skillStack.removeFirst()
                if nextSkill == j {
                    if j == skillTreeElement.last! {
                        result += 1
                    } else {
                        continue
                    }
                } else {
                    break
                }
            } else {
                if j == skillTreeElement.last! {
                    result += 1
                } else {
                    continue
                }
            }
        }
    }
    
    return result
}

print(solution("CBD", ["BACDE", "CBADF", "AECB", "BDA"]))
