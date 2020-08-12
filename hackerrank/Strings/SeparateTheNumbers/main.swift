//
//  main.swift
//  SeparateTheNumbers
//
//  Created by Yongwoo Marco on 2020/08/12.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// https://www.hackerrank.com/challenges/separate-the-numbers/problem

// Separate the Numbers

/*
 
 // https://developer-fury.tistory.com/55     -> 문자열 나누기
  
 let phoneNumber = "01012345678"
 var firstIndex = phoneNumber.index(phoneNumber.startIndex, offsetBy: 0)
 var lastIndex = phoneNumber.index(phoneNumber.startIndex, offsetBy: 3)
 let mobCom = "\(phoneNumber[firstIndex..<lastIndex])"
 
 firstIndex = phoneNumber.index(phoneNumber.startIndex, offsetBy: 3)
 lastIndex = phoneNumber.index(phoneNumber.endIndex, offsetBy: -4)
 let mobNo1 = "\(phoneNumber[firstIndex..<lastIndex])"
 
 firstIndex = phoneNumber.index(phoneNumber.endIndex, offsetBy: -4)
 lastIndex = phoneNumber.index(phoneNumber.endIndex, offsetBy: 0)
 let mobNo2 = "\(phoneNumber[firstIndex..<lastIndex])"
 */

import Foundation

// var arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }
// Complete the separateNumbers function below.
func separateNumbers(s: String) -> Void {

}

func checkNumbers(arr: [Int]) -> Int {
    print(arr)
    return -1
}

guard let q = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

for qItr in 1...q {
    guard let s = readLine() else { fatalError("Bad input") }

    separateNumbers(s: s)
}

