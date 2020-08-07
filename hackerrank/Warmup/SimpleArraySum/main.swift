//
//  main.swift
//  SimpleArraySum
//
//  Created by Yongwoo Marco on 2020/08/07.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// https://www.hackerrank.com/challenges/simple-array-sum/problem

import Foundation

func simpleArraySum(ar: [Int]) -> Int {
    var result = 0
    
    for data in ar {
        result += data
    }
    return result
}

/*
let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!
*/

// 문자 입력 (정수)
guard let arCount = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }


// 문자열 받기
guard let arTemp = readLine() else { fatalError("Bad input") }

// 문자열 " " 로 나누어 배열로 만들기
let ar: [Int] = arTemp.split(separator: " ").map {
    if let arItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return arItem
    } else { fatalError("Bad input") }
}

// 문자열 갯수 확인
guard ar.count == arCount else { fatalError("Bad input") }

let result = simpleArraySum(ar: ar)

print(result)

/*
fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
*/
