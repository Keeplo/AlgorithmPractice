//
//  main.swift
//  Day25
//
//  Created by Yongwoo Marco on 2020/08/04.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

let t = Int(readLine()!)!
var numberArr[t] = [Int64]()
var biggestNum = 0

for i in 0..<t {
    numberArr[i] = readLine()!
    if(numberArr[i]>biggestNum) numberArr[i] = biggestNum
}

var check[biggestNum] = false

for i in 0..<t {
    for j in i...biggestNum {
        if() {
            
        }
    }
}
