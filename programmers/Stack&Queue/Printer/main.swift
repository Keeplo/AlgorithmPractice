//
//  main.swift
//  Printer
//
//  Created by Yongwoo Marco on 2020/01/19.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// 프린터 (Level 2)

// https://programmers.co.kr/learn/courses/30/lessons/42587
//

import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var dics = [(Int, Int)](), queue = [(Int, Int)]()
    
    for i in 0..<priorities.count {
        dics.append((priorities[i], i))
    }
    
    while(!dics.isEmpty) {
        if dics[1..<dics.count].contains(where: { $0.0 > dics[0].0 }) {
            dics.append(dics[0])
            dics.remove(at: 0)
        } else {
            queue.append(dics[0])
            
            if dics[0].1 == location {
                return queue.count
            } else {
                dics.remove(at: 0)
            }
        }
    }
    
    return queue.count
}

//let p = [2, 1, 3, 2]
//let l = 2
//// 1

let p = [1, 1, 9, 1, 1, 1]
let l = 0
// 5

print(solution(p, l))

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
//    return count
//}

