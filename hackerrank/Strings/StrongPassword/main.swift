//
//  main.swift
//  StrongPassword
//
//  Created by Yongwoo Marco on 2020/08/12.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

//

// Strong Password

import Foundation

// Complete the minimumNumber function below.
func minimumNumber(n: Int, password: String) -> Int {
    let numbers = "0123456789"
    let lower_case = "abcdefghijklmnopqrstuvwxyz"
    let upper_case = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    let special_characters = "!@#$%^&*()-+"

    var check = [Bool](repeating: false, count: 4)
    for c in password {
        // 현재 문자가 숫자 또는 소문자 또는 대문자 또는 특수문자에 속하는지 확인
        if(numbers.range(of: String(c)) != nil) {
            check[0] = true
        } else if (lower_case.range(of: String(c)) != nil) {
            check[1] = true
        } else if (upper_case.range(of: String(c)) != nil) {
            check[2] = true
        } else if (special_characters.range(of: String(c)) != nil) {
            check[3] = true
        }

        if(check[0] && check[1] && check[2] && check[3]) {
            break
        }
    }
    var result = 0
    for count in check {
        if(!count) {
            result += 1
        }
    }

    if(password.count + result < 6) {
        result = 6-password.count
    }

    return result
}

let stdout = ProcessInfo.processInfo.environment["OUTPUT_PATH"]!
FileManager.default.createFile(atPath: stdout, contents: nil, attributes: nil)
let fileHandle = FileHandle(forWritingAtPath: stdout)!

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let password = readLine() else { fatalError("Bad input") }

let answer = minimumNumber(n: n, password: password)

fileHandle.write(String(answer).data(using: .utf8)!)
fileHandle.write("\n".data(using: .utf8)!)
