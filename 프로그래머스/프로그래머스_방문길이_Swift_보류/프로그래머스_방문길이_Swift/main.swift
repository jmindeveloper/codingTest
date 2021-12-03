//
//  main.swift
//  프로그래머스_방문길이_Swift
//
//  Created by J_Min on 2021/12/03.
//

import Foundation

func solution(_ dirs: String) -> Int {
    let dirsArray = Array(dirs)
    var locationCount: [[Int]] = [[0, 0]]
    var realLocation: [[Int]] = [[0, 0]]
    var count = 0
    var skip = false
    
    for i in 0..<dirsArray.count {
        
        if skip == true {
            skip = false
            continue
        }
        
        count += 1
        let direction = String(dirsArray[i])
        let lastLocation = realLocation.last!
        var nextLocation = [Int]()
        
        func next(_ direction: String, lastLocation: [Int]) -> [Int] {
            switch direction {
            case "U":
                nextLocation = [lastLocation[0], lastLocation[1] + 1]
            case "D":
                nextLocation = [lastLocation[0], lastLocation[1] - 1]
            case "L":
                nextLocation = [lastLocation[0] - 1, lastLocation[1]]
            case "R":
                nextLocation = [lastLocation[0] + 1, lastLocation[1]]
            default:
                break
            }
            return nextLocation
        }
        
        nextLocation = next(direction, lastLocation: lastLocation)
        
        print(nextLocation)
        if nextLocation[0] > 5 || nextLocation[0] < -5 || nextLocation[1] > 5 || nextLocation[1] < -5 {
            continue
        }
        
        if !realLocation.contains(nextLocation) {
            locationCount.append(nextLocation)
            realLocation.append(nextLocation)
        } else {
            var arr = realLocation
            let lastLoca = arr.removeLast()
            if !arr.contains(lastLoca) {
                locationCount.append(nextLocation)
                realLocation.append(nextLocation)
            } else {
                realLocation.append(nextLocation)
            }
            
        }
//        print("realLocation --> \(realLocation)")
//        print("rocationCount --> \(locationCount)")
        realLocation.append(nextLocation)
        
        if realLocation.contains(nextLocation) && !(i == dirsArray.count - 1) {
            let nextLoca = next(String(dirsArray[i + 1]), lastLocation: realLocation.last!)
            if locationCount.contains(nextLoca) {
                realLocation.append(nextLoca)
                skip = true
            }
        }
    }

    
    return locationCount.count - 1
}

//print(solution("LRLRL"))
print("-------")
print(solution("ULURRDLLU"))
