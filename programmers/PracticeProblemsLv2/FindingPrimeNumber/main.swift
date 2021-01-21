//
//  main.swift
//  FindingPrimeNumber
//
//  Created by Yongwoo Marco on 2021/01/21.
//  Copyright © 2021 Yongwoo Marco Kim. All rights reserved.
//

// 소수 찾기

// https://programmers.co.kr/learn/courses/30/lessons/42839
//

import Foundation

func solution(_ numbers:String) -> Int {
    var numSet = [String]()
    var comSet = Set<Int>()
    
    for i in numbers {
        numSet.append(String(i))
    }
    
    permuteWirth(numSet, numSet.count-1, &comSet)
    
    for i in 1..<numSet.count {
        let _ = combos(elements: numSet, k: i).map({ comSet.insert(Int($0.joined())!) })
    }
    print(comSet)
    return comSet.filter({ isPrime(num: $0) }).count
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

func permuteWirth(_ a: [String], _ n: Int, _ arr: inout Set<Int>) {
    if n == 0 {
        arr.insert( Int(a.joined())! )
    } else {
        var a = a
        permuteWirth(a, n - 1, &arr)
        for i in 0..<n {
            a.swapAt(i, n)
            permuteWirth(a, n - 1, &arr)
            a.swapAt(i, n)
        }
    }
}

func combos<T>(elements: ArraySlice<T>, k: Int) -> [[T]] {
    if k == 0 {
        return [[]]
    }

    guard let first = elements.first else {
        return []
    }

    let head = [first]
    let subcombos = combos(elements: elements, k: k - 1)
    var ret = subcombos.map { head + $0 }
    ret += combos(elements: elements.dropFirst(), k: k)

    return ret
}

func combos<T>(elements: Array<T>, k: Int) -> [[T]] {
    return combos(elements: ArraySlice(elements), k: k)
}

let numbers = "17"
//let numbers = "011"
    
print(solution(numbers))
