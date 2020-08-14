//
//  main.swift
//  TwoStrings
//
//  Created by Yongwoo Marco on 2020/08/12.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

// Complete the twoStrings function below.
func twoStrings(s1: String, s2: String) -> String {
    var checkChar = [String.Element]()
    if(s1.count > s2.count) {
        for c in s2 {
            if(checkChar.contains(c)) {
                continue
            } else {
                if(s1.range(of: String(c)) != nil) {
                    return "YES"
                }
                checkChar.append(c)
            }
        }
    } else {
        for c in s1 {
            if(checkChar.contains(c)) {
                continue
            } else {
                if(s2.range(of: String(c)) != nil) {
                    return "YES"
                }
                checkChar.append(c)
            }
        }
    }
    
    return "NO"
}

/*
let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!
*/

guard let q = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

for _ in 1...q {
    guard let s1 = readLine() else { fatalError("Bad input") }

    guard let s2 = readLine() else { fatalError("Bad input") }

    let result = twoStrings(s1: s1, s2: s2)
    
    print(result)
/*
    fileHandle.write(result.data(using: .utf8)!)
    fileHandle.write("\n".data(using: .utf8)!)
*/
}
