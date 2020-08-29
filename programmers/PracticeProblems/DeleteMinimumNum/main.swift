//
//  main.swift
//  DeleteMinimumNum
//
//  Created by Yongwoo Marco on 2020/08/29.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

func solution(_ arr:[Int]) -> [Int] {
    let min = arr.min()!
    return arr.count == 1 ? [-1] : arr.compactMap({ return $0 != min ? $0 : nil })
}

let arr = readLine()!.components(separatedBy: " ").map({ Int($0)!})

print(solution(arr))


/*
 
 func solution(_ arr:[Int]) -> [Int] {
     var result = arr
     result.remove(at: result.firstIndex(of: arr.sorted()[0])!)
     return result.count == 0 ? [-1] : result
 }

 */
