//
//  Better.swift
//  PracticeProblems
//
//  Created by Yongwoo Marco on 2020/08/28.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

func solution(_ n:Int64) -> [Int] {
    return  "\(n)".compactMap { $0.hexDigitValue }.reversed()
}
