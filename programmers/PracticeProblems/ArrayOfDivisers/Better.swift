//
//  Better.swift
//  PracticeProblems
//
//  Created by Yongwoo Marco on 2020/08/20.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    let array = arr.sorted().filter{ $0 % divisor == 0 }
    
    return  array == [] ? [-1] : array
}

func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
    let result = arr.filter{ $0 % divisor == 0}.sorted()
    
    return result.count == 0 ? [-1] : result
}
