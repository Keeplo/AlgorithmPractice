//
//  main.swift
//  TwoCharacters
//
//  Created by Yongwoo Marco on 2020/08/10.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// https://www.hackerrank.com/challenges/two-characters/problem

// Strings / TwoCharacters

import Foundation

// Complete the alternate function below.
func alternate(s: String) -> Int {
    var represent = [Character]()
    var max = 0
    
    for c in s {
        if(represent.contains(where: { $0 == c })) {
            // represent 배열안에 존재
        } else {
            represent.append(c)
        }
    }
    print("represent: \(represent)")
    if(s.count>3) {
        if(represent.count < 2) {
            var str = s
            while(true) {
                if str.contains(represent[0]) {
                    str.removeSubrange(str.range(of: String(represent[0]))!)
                } else {
                    break
                }
            }
            print("a: \(represent[0]) / str: \(str)")
            var compare = str.count
            for index in str.indices {
                if(str.index(after: index) < str.endIndex) {
                    if(str[index] == str[str.index(after: index)]) {
                        print("consequtive str: \(str)")
                        compare = 0
                        break
                    }
                }
            }
            if(max<compare) {
                max = str.count
            }
        } else {
            for a in 0...represent.count-2 {
                for b in a+1...represent.count-1 {
                    var str = s
                    while(true) {
                        if str.contains(represent[a]) {
                            str.removeSubrange(str.range(of: String(represent[a]))!)
                        } else if str.contains(represent[b]) {
                            str.removeSubrange(str.range(of: String(represent[b]))!)
                        } else {
                            break
                        }
                    }
                    print("a: \(represent[a]) / b: \(represent[b]) / str: \(str)")
                    var compare = str.count
                    for index in str.indices {
                        if(str.index(after: index) < str.endIndex) {
                            if(str[index] == str[str.index(after: index)]) {
                                print("consequtive str: \(str)")
                                compare = 0
                                break
                            }
                        }
                    }
                    if(max<compare) {
                        max = str.count
                    }
                }
            }
        }
    } else {
        var compare = s.count
        for index in s.indices {
            if(s.index(after: index) < s.endIndex) {
                if(s[index] == s[s.index(after: index)]) {
                    print("consequtive str: \(s)")
                    compare = 0
                    break
                }
            }
        }
        if(max<compare) {
            max = s.count
        }
    }
    
    return max
}

/*
let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!
*/

guard let l = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let s = readLine() else { fatalError("Bad input") }

let result = alternate(s: s)

print(result)
/*
fileHandle.write(String(result).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
*/
