//
//  main.swift
//  MaxAndMin
//
//  Created by Yongwoo Marco on 2020/09/05.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

func solution(_ s:String) -> String {
    let arr = s.components(separatedBy: " ").map({ Int($0)! })
    return String(arr.min()!)+" "+String(arr.max()!)
}

let str = readLine()!

print(solution(str))
