//
//  main.swift
//  StringConstruction
//
//  Created by Yongwoo Marco on 2020/08/12.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// https://www.hackerrank.com/challenges/string-construction/problem?h_r=next-challenge&h_v=zen

// String Construction

import Foundation

// Complete the stringConstruction function below.
func stringConstruction(s: String) -> Int {
    for i in 1..<s.count {
        let preRange = s[s.startIndex...s.index(s.startIndex, offsetBy: i)]
        let forCheckStr = s[preRange]
        print(forCheckStr)
        
        let sufRange = s[s.index(s.startIndex, offsetBy: i)...s.endIndex]
        let removedStr = s[sufRange]
        print(removedStr)
    }
}

/*
let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!
*/

guard let q = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

for qItr in 1...q {
    guard let s = readLine() else { fatalError("Bad input") }

    let result = stringConstruction(s: s)

    print(result)
    /*
    fileHandle.write(String(result).data(using: .utf8)!)
    fileHandle.write("\n".data(using: .utf8)!)
     */
}
