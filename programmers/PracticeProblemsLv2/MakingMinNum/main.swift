//
//  main.swift
//  MakingMinNum
//
//  Created by Yongwoo Marco on 2020/09/05.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// 최솟값 만들기

// https://programmers.co.kr/learn/courses/30/lessons/12941
// https://keeplo.tistory.com/137


import Foundation

func solution(_ A:[Int], _ B:[Int]) -> Int {
    let a = A.sorted(by: >)
    let b = B.sorted(by: <)
    
    return (0..<A.count).reduce(0, { $0 + (a[$1]*b[$1]) })
}

let arr1 = readLine()!.components(separatedBy: " ").map({ Int($0)! })
let arr2 = readLine()!.components(separatedBy: " ").map({ Int($0)! })
print(solution(arr1, arr2))
