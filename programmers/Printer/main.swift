//
//  main.swift
//  Printer
//
//  Created by Yongwoo Marco on 2020/08/14.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

let priorities = readLine()!.components(separatedBy: " ").map{ Int($0)! }
let location = Int(readLine()!)!

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var count=0, checker = false
    var arr = priorities, lo = location
    
    while(true) {
        for index in 0..<arr.count {
            if(arr[0]<arr[index]) {
                break
            }
            if(index==arr.count-1) {
                checker = true
            }
        }
        if(checker) {
            count += 1
            if(lo==0) {
                return count
            } else {
                arr.remove(at: 0)
                lo -= 1
            }
        } else {
            arr.append(arr[0])
            arr.remove(at: 0)
            if(lo==0) { lo = arr.count-1 }
            else { lo -= 1 }
        }
        checker = false
    }
}
print(solution(priorities, location))


