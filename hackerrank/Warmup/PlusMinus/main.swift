//
//  main.swift
//  PlusMinus
//
//  Created by Yongwoo Marco on 2020/08/06.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

// Complete the plusMinus function below.
func plusMinus(arr: [Int]) -> Void {
    var positive=0.0, negative=0.0

    for data in arr {
        if(data>0) {
            positive += 1
        } else if(data<0) {
            negative += 1
        }
    }
        print(String(format: "%.6f", positive/Double(arr.count)))
        print(String(format: "%.6f", negative/Double(arr.count)))
        print(String(format: "%.6f", (Double(arr.count) - positive - negative)/Double(arr.count)))
}

guard let n = Int((readLine()?.trimmingCharacters(in: .whitespacesAndNewlines))!)
else { fatalError("Bad input") }

guard let arrTemp = readLine() else { fatalError("Bad input") }
let arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == n else { fatalError("Bad input") }

plusMinus(arr: arr)
