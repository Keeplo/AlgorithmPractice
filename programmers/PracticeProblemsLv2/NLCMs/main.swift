//
//  main.swift
//  NLCMs
//
//  Created by Yongwoo Marco on 2020/09/17.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// N개의 최소공배수

// https://programmers.co.kr/learn/courses/30/lessons/12953
// https://keeplo.tistory.com/128?category=947131

import Foundation

/*
func solution(_ arr:[Int]) -> Int {
    var muArr = arr.sorted(by: <)
    var divisor = 2
    var GCD = 1
    
    while(divisor <= muArr[muArr.count-1] ) {
        print("GCD : \(GCD) / muArr[last] : \(muArr[muArr.count-1]) / divisor : \(divisor)")
        print("muArr : \(muArr)")
        if(muArr.filter({ $0%divisor==0 }).count == arr.count ) {
            print("Dividing complete")
            GCD *= divisor
            muArr = muArr.map({ $0/divisor })
            divisor = 2
        } else {
            divisor += 1
        }
    }
    print(muArr)
    
    return muArr.reduce(1, {$0*$1}) * GCD
}
*/
func solution(_ arr:[Int]) -> Int {
    return arr.reduce(1, {LCM($0, $1)})
}

// 최대공약수
func GCD(_ min: Int, _ max: Int) -> Int {
    return min % max == 0 ? max : GCD(max, min % max)
}
// 최소공배수
func LCM(_ a: Int, _ b:Int) -> Int {
    return a * b / GCD(a,b)
}


let arr = [2,6,8,14]
print(solution(arr))
