//
//  Better.swift
//  PracticeProblems
//
//  Created by Yongwoo Marco on 2020/08/29.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    return zip(arr1, arr2).map{ zip($0,$1).map{$0+$1} }
}

