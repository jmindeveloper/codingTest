//
//  main.swift
//  프로그래머스_주차요금계산_Swift
//
//  Created by J_Min on 2022/01/23.
//

import Foundation

struct Records {
    let inTime: Int
    let outTime: Int
    let carNumber: String
    let isIn: Bool
    
    init(inTime: Int = 0, outTime: Int = 1439, carNumber: String, isIn: Bool) {
        self.inTime = inTime
        self.outTime = outTime
        self.carNumber = carNumber
        self.isIn = isIn
    }
}

func solution(_ fees:[Int], _ records:[String]) -> [Int] {

    var inOutRecords = [Records]()
    var result = [Int]()
    
    for i in records {
        let arr = i.split(separator: " ").map { $0 }
        var time = arr[0].split(separator: ":").map { Int($0)! }
        time.append(time[0] * 60 + time[1])
        if i.contains("IN") {
            inOutRecords.append(Records(inTime: time[2], carNumber: String(arr[1]), isIn: true))
        } else {
            inOutRecords.append(Records(outTime: time[2], carNumber: String(arr[1]), isIn: false))
        }
    }
    
    inOutRecords.sort { $0.carNumber < $1.carNumber }
    // outOfRange를 막기위한 더미데이터
    inOutRecords.append(Records(inTime: 0, outTime: 1439, carNumber: "더미", isIn: false))
    
    var sum = 0
    var time = [Int]()
    var beforeCarNumber = ""
    
    for i in 0..<inOutRecords.count {
        
        if inOutRecords[i].isIn == false {
            if i == inOutRecords.count - 1 {
                time.append(sum)
            }
            continue
        }
        
        if beforeCarNumber != inOutRecords[i].carNumber {
            time.append(sum)
            beforeCarNumber = inOutRecords[i].carNumber
            sum = 0
        }
        
        if inOutRecords[i].carNumber == inOutRecords[i + 1].carNumber {
            sum += inOutRecords[i + 1].outTime - inOutRecords[i].inTime
        } else {
            sum += 1439 - inOutRecords[i].inTime
        }
    }
    time.removeFirst()
    
    for i in time {
        var calcTime = i - fees[0]
        var sum = fees[1]
        
        if calcTime <= 0 {
            result.append(sum); continue
        }
        
        var isRoundingOff = true
        if calcTime % fees[2] == 0 {
            isRoundingOff = false
        }
        
        calcTime /= fees[2]
        if isRoundingOff {
            sum += (calcTime + 1) * fees[3]
            result.append(sum); continue
        } else {
            sum += calcTime * fees[3]
            result.append(sum); continue
        }
    }
    
    return result
}

print(solution([1, 461, 1, 10], ["00:00 1234 IN"]))
