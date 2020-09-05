//
//  main.swift
//  AllocatingIntegers
//
//  Created by Yongwoo Marco on 2020/08/18.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// 정수 내림차순으로 배치하기

// https://programmers.co.kr/learn/courses/30/lessons/12933

// https://keeplo.tistory.com/97

import Foundation

/*
func solution(_ n:Int64) -> Int64 {
    var arr = [Int64]()
    var k = n
    
    while(k>0) {
        if(k/10>0) {
            arr.append(k%10)
            k /= 10
        } else {
            arr.append(k)
            break
        }
    }
    
    arr.sort(by: >)
    k = 0
    for i in 0..<arr.count {
        let tens = Int64(pow(Double(10), Double(arr.count-i-1)))
        k += arr[i] * tens
    }
    return k
}
 */
func solution(_ n:Int64) -> Int64 {
    return Int64( String(n).sorted(by: >).reduce("", { String($0)+String($1) }) )!
}

let n = Int64(readLine()!)

print(solution(n!))
