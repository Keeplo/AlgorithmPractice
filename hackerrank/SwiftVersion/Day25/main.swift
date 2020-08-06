//
//  main.swift
//  Day25
//
//  Created by Yongwoo Marco on 2020/08/04.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

func isPrime(num: Int) -> Bool {
    if(num<4) {
        if(num==1) { return false }
        else { return true }
    }
    for i in 2...Int(sqrt(Double(num))) {
        if(num % i == 0) { return false }
    }
    return true
}

let t = Int(readLine()!)!
var numberArr = [Int](repeating: 0, count: t)

for i in 0..<t {
    numberArr[i] = Int(readLine()!)!
    if(numberArr[i]>=2 && isPrime(num: numberArr[i])) { print("Prime") }
    else { print( "Not prime ") }
}
