//
//  main.swift
//  KeepingPattern
//
//  Created by Yongwoo Marco on 2020/08/17.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// 수박수박수박수박수박수?

// https://programmers.co.kr/learn/courses/30/lessons/12922

// https://keeplo.tistory.com/105?category=930829

import Foundation

/*

func solution(_ n:Int) -> String {
    var result = ""
    let str = "수박"
    if(n<2) {
        result = str
        if(n==1) {
            result.remove(at: result.index(before: result.endIndex))
        } else {
            result.removeAll()
        }
    } else {
        if(n%2==0) {
            for _ in 1...n/2 {
                result += str
            }
        } else {
            for _ in 1...n/2+1 {
                result += str
            }
            result.remove(at: result.index(before: result.endIndex))
        }
    }
    
    return result
}


*/

func solution(_ n:Int) -> String {
    return [String](repeatElement("수박", count: n/2)).reduce("", +) + (n%2==1 ? "수" : "")
}

let n = Int(readLine()!)

print(solution(n!))
