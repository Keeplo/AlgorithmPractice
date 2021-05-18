//
//  main.swift
//  ArrayNString
//
//  Created by Yongwoo Marco on 2021/05/18.
//

import Foundation

// MAKR: --- Introduction to Array
// Find Pivot Index
//func pivotIndex(_ nums: [Int]) -> Int {
//    var left = 0, right = nums.reduce(0, +) - nums[0]
//
//    for i in 0..<nums.count-1 {
//        if left == right {
//            return i
//        }
//        left += nums[i]
//        right -= nums[i+1]
//    }
//
//    return left == right ? nums.count - 1 : -1
//}
//print(pivotIndex([1,7,3,6,5,6]))    // 3
//print(pivotIndex([1,2,3]))          // -1
//print(pivotIndex([2,1,-1]))         // 0
            
// Largest Number At Least Twice of Others
//func dominantIndex(_ nums: [Int]) -> Int {
//    let max = nums.max()!
//
//    return nums.filter({ $0*2 > max }).count > 1 ? -1 : nums.firstIndex(of: max)!
//}
//print(dominantIndex([3,6,1,0])) // 1
//print(dominantIndex([1,2,3,4])) // -1
//print(dominantIndex([1]))       // 0

// Plus One
//func plusOne(_ digits: [Int]) -> [Int] {
//    var d = digits.reversed() as [Int]
//
//    if d.count < 2 {
//        if d[0] + 1 > 9 {
//            d[0] = 0
//            d.append(1)
//        } else {
//            d[0] += 1
//        }
//        return d.reversed()
//    }
//
//    d[0] += 1
//    for i in 0..<digits.count-1 {
//        if d[i] > 9 {
//            d[i] = 0
//            d[i+1] += 1
//            if i == digits.count - 2, d[i+1] > 9 {
//                d[i+1] = 0
//                d.append(1)
//            }
//        } else {
//            return d.reversed()
//        }
//    }
//
//    return d.reversed()
//}
//print(plusOne([1,2,3]))     // [1,2,4]
//print(plusOne([4,3,2,1]))   // [4,3,2,2]
//print(plusOne([0]))         // [1]

// MARK: --- Introduction to 2D Array
