//
//  main.swift
//  백준_2170_선긋기_Swift
//
//  Created by J_Min on 2022/08/05.
//

import Foundation

final class FileIO {
    private let buffer: Data
    private var index: Int = 0
    
    init(fileHandle: FileHandle = FileHandle.standardInput) {
        self.buffer = try! fileHandle.readToEnd()! // 인덱스 범위 넘어가는 것 방지
    }
    
    @inline(__always) private func read() -> UInt8 {
        defer {
            index += 1
        }
        guard index < buffer.count else { return 0 }
        
        return buffer[index]
    }
    
    @inline(__always) func readInt() -> Int {
    var sum = 0
    var now = read()
    var isPositive = true
        while now == 10
                || now == 32 { now = read() } // 공백과 줄바꿈 무시
        if now == 45 { isPositive.toggle(); now = read() } // 음수 처리
        while now >= 48, now <= 57 {
            sum = sum * 10 + Int(now-48)
            now = read()
        }
        return sum * (isPositive ? 1:-1)
    }

    @inline(__always) func readString() -> String {
            var str = ""
            var now = read()

            while now == 10
                    || now == 32 { now = read() } // 공백과 줄바꿈 무시

            while now != 10
                    && now != 32 && now != 0 {
                str += String(bytes: [now], encoding: .ascii)!
                now = read()
            }

            return str
        }
  }

typealias Range = (start: Int, end: Int)

let fileIO = FileIO()
let n = fileIO.readInt()
var lines = [Range]()

for _ in 0..<n {
    let range = (start: fileIO.readInt(), end: fileIO.readInt())
    lines.append(range)
}

lines.sort {
    $0.start == $1.start ?
    $0.end < $1.end :
    $0.start < $1.start
    
}

var lineRange: Range = (-Int.max, -Int.max)
var result = 0

for line in lines {
    if (lineRange.start...lineRange.end) ~= line.start {
        lineRange.end = max(lineRange.end, line.end)
    } else {
        let length = lineRange.end - lineRange.start
        result += length
        lineRange = (line.start, line.end)
    }
}

let length = lineRange.end - lineRange.start
result += length

print(result)
