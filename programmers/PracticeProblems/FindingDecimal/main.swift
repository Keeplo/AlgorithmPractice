//
//  main.swift
//  FindingDecimal
//
//  Created by Yongwoo Marco on 2020/08/16.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// 소수 찾기

// https://programmers.co.kr/learn/courses/30/lessons/12921

//

import Foundation

/*
func solution(_ n:Int) -> Int {
    var check = [Bool](repeating: true, count: n+1)
    var result = 0

    for i in 2...n {
        var j = 2
        while(true) {
            if(i*j > n) { break }
            check[i*j] = false
            j += 1
        }
    }
    for i in 2...n {
        if(check[i]) {
            result += 1
        }
    }
    return result
}
*/
/*
func solution(_ n:Int) -> Int {
    var check = [Bool](repeatElement(false, count: n))
    return (2...n).filter({ (i: Int) -> Bool in
        return check[i] == true ? true : (2..<i).filter({ i%$0==0 }).isEmpty
        }).count
}
 */ 시간초과

let n = Int(readLine()!)

print(solution(n!))
