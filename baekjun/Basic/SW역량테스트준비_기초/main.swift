//
//  main.swift
//  SW역량테스트준비_기초
//
//  Created by Yongwoo Marco on 2021/05/10.
//

// 10430 나머지
//let nums = readLine()!.split(separator: " ").map({ Int($0)! })
//
//print( (nums[0]+nums[1])%nums[2] )
//print( ((nums[0]%nums[2]) + (nums[1]%nums[2]))%nums[2] )
//print( (nums[0]*nums[1])%nums[2] )
//print( ((nums[0]%nums[2]) * (nums[1]%nums[2]))%nums[2] )

// 2609 최대공약수와 최소공배수
//let nums = readLine()!.split(separator: " ").map({ Int($0)! })
//
//func gcd(_ a: Int, _ b: Int) -> Int {
//    let mod = a % b
//    return mod == 0 ? min(a, b) : gcd(b, mod)
//}
//func lcm(_ a: Int, _ b: Int) -> Int {
//    return a * b / gcd(a, b)
//}
//
//print(gcd(nums[0], nums[1]))
//print(lcm(nums[0], nums[1]))

// 1934 최소공배수
//let n = Int(readLine()!)!
//var nums = [[Int]]()
//
//for _ in 0..<n {
//    nums.append( readLine()!.split(separator: " ").map({ Int($0)! }) )
//}
//
//func gcd(_ a: Int, _ b: Int) -> Int {
//    let mod = a % b
//    return mod == 0 ? min(a, b) : gcd(b, mod)
//}
//func lcm(_ a: Int, _ b: Int) -> Int {
//    return a * b / gcd(a, b)
//}
//
//_ = nums.map({ print(lcm($0[0], $0[1])) })

// 9613 GCD합
//let n = Int(readLine()!)!
//var nums = [[Int]]()
//var result = 0
//for _ in 0..<n {
//    var arr = readLine()!.split(separator: " ").map({ Int($0)! })
//    arr.removeFirst()
//    nums.append( arr )
//}
//
//func gcd(_ a: Int, _ b: Int) -> Int {
//    let mod = a % b
//    return mod == 0 ? min(a, b) : gcd(b, mod)
//}
//
//func combination(total: [Int], shouldSelect: Int, current index: Int, selected: [Int]) {
//    if shouldSelect == 0 {
//        result += gcd(selected.first!, selected.last!)
//    } else if index == total.count {
//        return
//    } else {
//        var newSelected = selected
//        newSelected.append(total[index])
//        combination(total: total, shouldSelect: shouldSelect-1, current: index+1, selected: newSelected)
//        combination(total: total, shouldSelect: shouldSelect, current: index+1, selected: selected)
//    }
//}
//
//_ = nums.map({ arr in
//    combination(total: arr, shouldSelect: 2, current: 0, selected: [])
//    print(result)
//    result = 0
//})

// 1978 소수찾기
//import Foundation
//let n = Int(readLine()!)!
//var count = 0
//
//func isPrime(num: Int) -> Bool {
//    if(num<4) {
//        return num == 1 ? false : true
//    }
//    for i in 2...Int(sqrt(Double(num))) {
//        if(num % i == 0) { return false }
//    }
//    return true
//}
//
//let nums = readLine()!.split(separator: " ").map({ Int($0)! })
//print(nums.filter({ isPrime(num: $0) }).count)

// 6588 골드바흐의 추측
//import Foundation
//func isPrime(num: Int) -> Bool {
//    if(num<4) {
//        return num == 1 ? false : true
//    }
//    for i in 2...Int(sqrt(Double(num))) {
//        if(num % i == 0) { return false }
//    }
//    return true
//}
//
//while true {
//    if let input = Int(readLine()!), input != 0 {
//        for first in 2...input/2 {
//            if isPrime(num: first), isPrime(num: input - first) {
//                print("\(input) = \(first) + \(input - first)")
//                break
//            }
//            if first == input/2 {
//                print("Goldbach's conjecture is wrong.")
//            }
//        }
//    } else {
//        break
//    }
//}
