//
//  main.swift
//  FindPrime
//
//  Created by Yongwoo Marco on 2021/04/01.
//

// 소수찾기

// https://programmers.co.kr/learn/courses/30/lessons/42839
// 

import Foundation

func solution(_ numbers:String) -> Int {
    var numStrs = [String]()
    var numSet = Set<Int>()
    
    func permuteWirth(_ a: [String], _ n: Int) {
        if n == 0 {
            numSet.update(with: Int(a.joined())!)
        } else {
            var a = a
            permuteWirth(a, n - 1)
            for i in 0..<n {
                a.swapAt(i, n)
                permuteWirth(a, n - 1)
                a.swapAt(i, n)
            }
        }
    }
    func combination(total: [String], shouldSelect: Int, current index: Int, selected: [String]) {
        if shouldSelect == 0 {
            permuteWirth(selected, selected.count-1)
        } else if index == total.count {
            return
        } else {
            var newSelected = selected
            newSelected.append(total[index])
            combination(total: total, shouldSelect: shouldSelect-1, current: index+1, selected: newSelected)
            combination(total: total, shouldSelect: shouldSelect, current: index+1, selected: selected)
        }
    }
    
    numStrs = numbers.map({ String($0) })
        
    for i in 1...numStrs.count {
        combination(total: numStrs, shouldSelect: i, current: 0, selected: [])
    }
    
    print(numSet)

    return numSet.filter({ isPrime(num: $0) }).count
}


func isPrime(num: Int) -> Bool {
    var result: Bool = true
    
    if num < 2 {
        result = false
    }else if num > 2 {
        for i in 2..<num {
            if num%i == 0 {
                result = false
            }
        }
    }
    return result
}



let numbers = "17"    // 3
//let numbers = "011"   // 2

print(solution(numbers))
