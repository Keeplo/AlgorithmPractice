//
//  Better.swift
//  PracticeProblems
//
//  Created by Yongwoo Marco on 2020/08/29.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

func solution(_ n:Int64) -> Int64 {
    let t = Int64(sqrt(Double(n)))
    return t * t == n ? (t+1)*(t+1) : -1
}
