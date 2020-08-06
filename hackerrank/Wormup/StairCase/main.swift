//
//  main.swift
//  StairCase
//
//  Created by Yongwoo Marco on 2020/08/06.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// https://www.hackerrank.com/challenges/staircase/problem

import Foundation

// Complete the staircase function below.
func staircase(n: Int) -> Void {
    var str = ""
    for i in 0..<n {
        for _ in 1..<n-i {
            str += " "
        }
        for _ in 1...i+1 {
            str += "#"
        }
        if(i != n-1) { str += "\n" }
    }
    print(str)
}

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

staircase(n: n)
