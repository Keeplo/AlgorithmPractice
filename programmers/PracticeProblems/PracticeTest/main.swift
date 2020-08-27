//
//  main.swift
//  PracticeTest
//
//  Created by Yongwoo Marco on 2020/08/27.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// 모의고사
 
// https://programmers.co.kr/learn/courses/30/lessons/42840

import Foundation

func solution(_ answers:[Int]) -> [Int] {
    var students = [1:0, 2:0, 3:0]
    let firstStudent = [1, 2, 3, 4, 5]
    let secondStudent = [2, 1, 2, 3, 2, 4, 2, 5]
    let thirdStudent = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    answers.enumerated().forEach { (index, element) in
        if( element == firstStudent[index%5]) {
            students[1]! += 1
        }
        if( element == secondStudent[index%8]) {
            students[2]! += 1
        }
        if( element == thirdStudent[index%10]) {
            students[3]! += 1
        }
    }
        
    var result = [Int]()
    let max = students.values.max()!
            
    for i in 0..<3 {
        if(students[i+1] == max) {
            result.append(i+1)
        }
    }
    
    return result
}

let arr = readLine()!.components(separatedBy: " ").map( {Int($0)!} )

print(solution(arr))
