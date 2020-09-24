//
//  main.swift
//  MaxNumber
//
//  Created by Yongwoo Marco on 2020/09/04.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

func solution(_ numbers:[Int]) -> String {
    var result:String = ""
    var nums = numbers.map({ String($0) })
    
    while(!numbers.isEmpty) {
        var extraArr = [String](repeating: result, count: numbers.count)
        if(nums.contains(nums.max()[0]) nums.max()[0])
    }
    
    
    return ""
}

let arr = readLine()!.components(separatedBy: " ").map({ Int($0)! })

print(solution(arr))
