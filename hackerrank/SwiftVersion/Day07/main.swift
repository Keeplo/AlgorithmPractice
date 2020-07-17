//
//  main.swift
//  Day07
//
//  Created by Yongwoo Marco on 2020/07/17.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation


guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let arrTemp = readLine() else { fatalError("Bad input") }

let arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == n else { fatalError("Bad input") }



var answer: String = ""

for item in arr {
    answer = String(item) + " " + answer
}

print(answer)

