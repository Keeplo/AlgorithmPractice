//
//  main.swift
//  NLCMs
//
//  Created by Yongwoo Marco on 2020/09/17.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

func solution(_ arr:[Int]) -> Int {
    var muArr = arr.sorted(by: <)
    var divisor = 2
    var GCD = 1
    
    while(divisor < muArr[muArr.count-1] ) {
        if(muArr.filter({ $0%divisor==0 }).count == arr.count ) {
            GCD *= divisor
            muArr = muArr.map({ $0/divisor })
            divisor = 2
        } else {
            divisor += 1
        }
    }
    
    print("GCD : \(GCD) / muArr[last] : \(muArr[muArr.count-1]) / divisor : \(divisor)")
    print("muArr : \(muArr)")
    
    return muArr.reduce(1, {$0*$1}) * GCD
}


let arr = [1, 2,3,4,5,6,7,8,9,10,11,12,13,14,15]
print(solution(arr))
