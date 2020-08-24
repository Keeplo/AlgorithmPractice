//
//  main.swift
//  SortStringOnMyOwn
//
//  Created by Yongwoo Marco on 2020/08/24.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

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

let arr = readLine()?.components(separatedBy: " ")
let n = Int(readLine()!)

print(solution(arr!, n!))
