//
//  main.swift
//  SuperReducedString
//
//  Created by Yongwoo Marco on 2020/08/11.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// https://www.hackerrank.com/challenges/reduced-string/problem

// Super Reduced String

import Foundation

enum FinishSignal: Error {
    case Exit
}

// Complete the superReducedString function below.
func superReducedString(s: String) throws -> String {
    var str = s
    
    do {
        while(true) {
            for i in str.indices {
                if(str.index(after: i)<str.endIndex) {
                    if(str[i] == str[str.index(after: i)]) {
                        str.remove(at: str.index(after: i))
                        str.remove(at: i)
                        break
                    }
                } else {
                    throw FinishSignal.Exit
                }
            }
            if(str.isEmpty) {
                throw FinishSignal.Exit
            }
        }
    } catch FinishSignal.Exit {
        if(str.isEmpty) {
            str = "Empty String"
        }
        return str
    }
}

/*
let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!
*/

guard let s = readLine() else { fatalError("Bad input") }

let result = try superReducedString(s: s)

print(result)
/*
fileHandle.write(result.data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
*/
