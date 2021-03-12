//
//  main.swift
//  SortStringOnMyOwn
//
//  Created by Yongwoo Marco on 2020/08/24.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// 문자열 내 마음대로 정렬하기

// https://programmers.co.kr/learn/courses/30/lessons/12915
// https://keeplo.tistory.com/111

import Foundation

/*
func solution(_ strings:[String], _ n:Int) -> [String] {
    let result = strings.sorted(by: { (l: String, f: String ) -> Bool in
        let first = f[f.index(f.startIndex, offsetBy: n)]
        let next = l[l.index(l.startIndex, offsetBy: n)]
        
        
        if(first < next) {
            return false
        } else {
            if(first == next) {
                if(f < l) {
                    return false
                } else {
                    return true
                }
            } else {
                return true
            }
        }
    })
    
    return result
}
*/
// sun bed car
// abce abcd cdx
func solution(_ strings:[String], _ n:Int) -> [String] {
    return strings.sorted(by: {
        print("$0 : \($0[$0.index($0.startIndex, offsetBy: n)])")
        print("$1 : \($1[$1.index($1.startIndex, offsetBy: n)])")
        if($0[$0.index($0.startIndex, offsetBy: n)] == $1[$1.index($1.startIndex, offsetBy: n)]) {
            print("/////$0 : \($0) / $1 : \($1)")
            return $0 < $1
        } else {
            print("다름")
            return $0[$0.index($0.startIndex, offsetBy: n)] < $1[$1.index($1.startIndex, offsetBy: n)]
        }
    })
}

let arr = readLine()?.components(separatedBy: " ")
let n = Int(readLine()!)

print(solution(arr!, n!))
