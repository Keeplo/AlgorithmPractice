//
//  main.swift
//  HackerRankInAString
//
//  Created by Yongwoo Marco on 2020/08/10.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// https://www.hackerrank.com/challenges/hackerrank-in-a-string/problem

// HackerRank in a String!

import Foundation

// Complete the hackerrankInString function below.
func hackerrankInString(s: String) -> String {
    let hac = "hackerrank"
    var offset = 0
    
    for c in s {
        if(c == hac[hac.index(hac.startIndex, offsetBy: offset)]) {
            if(offset == hac.count-1) {
                //print("break!!")
                break
            } else {
                //print("---now Char : \(hac[hac.index(hac.startIndex, offsetBy: offset)]), offset : \(offset)")
                offset += 1
            }
        }
    }
    
    if(offset == hac.count-1) {
        return "YES"
    } else {
        return "NO"
    }
}

/*
let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!
*/

guard let q = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

for _ in 1...q {
    guard let s = readLine() else { fatalError("Bad input") }

    let result = hackerrankInString(s: s)
    
    print(result)

    /*
    fileHandle.write(result.data(using: .utf8)!)
    fileHandle.write("\n".data(using: .utf8)!)
     */
}
