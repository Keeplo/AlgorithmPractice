//
//  main.swift
//  MakePrime
//
//  Created by Yongwoo Marco on 2021/02/19.
//  Copyright © 2021 Yongwoo Marco Kim. All rights reserved.
//

import Foundation


func solution(_ nums:[Int]) -> Int {
    var answer = 0

    func plusOne() {
        answer += 1
    }
    // 소수 판별
    func isPrime(num: Int) -> Bool {
        if(num<4) {
            return num == 1 ? false : true
        }
        for i in 2...Int(sqrt(Double(num))) {
            if(num % i == 0) { return false }
        }
        return true
    }

    func combination(total: [Int], shouldSelect: Int, current index: Int, selected: [Int]) {
        if shouldSelect == 0 {
            if isPrime(num: selected.reduce(0, +)) {
                plusOne()
            }
        } else if index == total.count {
            return
        } else {
            var newSelected = selected
            newSelected.append(total[index])
            combination(total: total, shouldSelect: shouldSelect-1, current: index+1, selected: newSelected)
            combination(total: total, shouldSelect: shouldSelect, current: index+1, selected: selected)
        }
    }
    
    combination(total: nums, shouldSelect: 3, current: 0, selected: [])
    
    return answer
}


//let nums = [1,2,3,4]
let nums = [1,2,7,6,4]

print(solution(nums))

