//
//  main.swift
//  프로그래머스_키패드누르기_Swift
//
//  Created by J_Min on 2022/05/21.
//

import Foundation

func askNearHand(number: Int, left: Int, right: Int) -> String {
    var leftDistance = abs(number - left)
    leftDistance = (leftDistance / 3) + (leftDistance % 3)
    var rightDistance = abs(number - right)
    rightDistance = (rightDistance / 3) + (rightDistance % 3)
    
    if leftDistance < rightDistance {
        return "l"
    } else if leftDistance > rightDistance {
        return "r"
    } else {
        return "s"
    }
}

func solution(_ numbers:[Int], _ hand:String) -> String {
    var result = ""
    var currentLeftHandLocation = 10
    var currentRightHandLocation = 12
    
    for number in numbers {
        
        let n = number == 0 ? 11 : number
        
        switch n {
        case 1, 4, 7:
            result.append("L")
            currentLeftHandLocation = n
        case 3, 6, 9:
            result.append("R")
            currentRightHandLocation = n
        case 2, 5, 8, 11:
            let nearHand = askNearHand(number: n, left: currentLeftHandLocation, right: currentRightHandLocation)
            switch nearHand {
            case "s":
                if hand == "left" {
                    result.append("L")
                    currentLeftHandLocation = n
                } else {
                    result.append("R")
                    currentRightHandLocation = n
                }
            case "l":
                result.append("L")
                currentLeftHandLocation = n
            case "r":
                result.append("R")
                currentRightHandLocation = n
            default:
                break
            }
        default:
            break
        }
    }
    return result
}

//print(solution([1, 3, 4, 5, 8, 2, 1, 4, 5, 9, 5], "right"))
//print(solution([7, 0, 8, 2, 8, 3, 1, 5, 7, 6, 2], "left"))
print(solution([1,2,3,4,5,6,7,8,9,0], "right"))

/*
 맨해튼 거리 공식
 출발지점 좌표 (x1, y1)
 도착지점 좌표 (x2, y2)
 
 거리 = |x1 - x2| + |y1 - y2|
 */
