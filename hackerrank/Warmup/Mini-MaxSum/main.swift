//
//  main.swift
//  Mini-MaxSum
//
//  Created by Yongwoo Marco on 2020/08/07.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

// Complete the miniMaxSum function below.
func miniMaxSum(arr: [Int]) -> Void {
    var arrVar = arr
    arrVar.sort()
    
    var min = 0 , max = 0
    for i in 0..<4 {
        min += arrVar[i]
        max += arrVar[i+1]
    }

    print(min, max, separator: " ")
}

guard let arrTemp = readLine() else { fatalError("Bad input") }
let arr: [Int] = arrTemp.split(separator: " ").map {
    if let arrItem = Int($0.trimmingCharacters(in: .whitespacesAndNewlines)) {
        return arrItem
    } else { fatalError("Bad input") }
}

guard arr.count == 5 else { fatalError("Bad input") }

miniMaxSum(arr: arr)
