//
//  main.swift
//  ProcessDevelop
//
//  Created by Yongwoo Marco on 2021/01/18.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// 기능개발 (Level 2)

// https://programmers.co.kr/learn/courses/30/lessons/42586
// https://keeplo.tistory.com/22

import Foundation

//let priorities = readLine()!.components(separatedBy: " ").map{ Int($0)! }
//let location = Int(readLine()!)!

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    var p = progresses, s = speeds
    var result = [Int]()
    
    while(!p.isEmpty) {
        for (index, value) in p.enumerated() {
            p[index] = value + s[index]
        }
        var tmp = 0
        for value in p {
            if value >= 100 {
                tmp += 1
                p.remove(at: 0)
                s.remove(at: 0)
            } else {
                break
            }
        }
        if tmp > 0 {
            result.append(tmp)
        }
    }
    
    return result
}

let priorities = [93, 30, 55]
let location = [1, 30, 5]
//  [2,1]
//let priorities = [95, 90, 99, 99, 80, 99]
//let location = [1, 1, 1, 1, 1, 1]
//  [1, 3, 2]

print(solution(priorities, location))

//func solution(_ priorities:[Int], _ location:Int) -> Int {
//    var count=0, checker = false
//    var arr = priorities, lo = location
//
//    while(true) {
//        for index in 0..<arr.count {
//            if(arr[0]<arr[index]) {
//                break
//            }
//            if(index==arr.count-1) {
//                checker = true
//            }
//        }
//        if(checker) {
//            count += 1
//            if(lo==0) {
//                return count
//            } else {
//                arr.remove(at: 0)
//                lo -= 1
//            }
//        } else {
//            arr.append(arr[0])
//            arr.remove(at: 0)
//            if(lo==0) { lo = arr.count-1 }
//            else { lo -= 1 }
//        }
//        checker = false
//    }
//}

