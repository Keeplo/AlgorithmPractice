//
//  Better.swift
//  PracticeProblems
//
//  Created by Yongwoo Marco on 2020/08/28.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

func solution(_ x:Int, _ n:Int) -> [Int64] {
    return Array(1...n).map { Int64($0 * x) }
}
