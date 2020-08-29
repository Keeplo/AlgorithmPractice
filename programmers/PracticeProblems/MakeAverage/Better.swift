//
//  Better.swift
//  PracticeProblems
//
//  Created by Yongwoo Marco on 2020/08/17.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

func solution(_ arr:[Int]) -> Double {
    return Double(arr.reduce(0,+))/Double(arr.count)
}

func solution(_ arr:[Int]) -> Double {
    return Double(arr.reduce(0, { $0 + $1 })) / Double(arr.count)
}
