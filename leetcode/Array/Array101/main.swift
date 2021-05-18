//
//  main.swift
//  Array101
//
//  Created by Yongwoo Marco on 2021/05/17.
//

import Foundation


// MARK: --- Introduction
//  Max Consecutive Ones
//func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
//    let str = nums.map({ String($0)}).joined().components(separatedBy: "0")
//
//    return str.map({ $0.count }).max()!
//}
//print(findMaxConsecutiveOnes([1,1,0,1,1,1]))
//print(findMaxConsecutiveOnes([1,0,1,1,0,1]))

// Find Numbers with Even Number of Digits
//func findNumbers(_ nums: [Int]) -> Int {
//        return nums.filter({ String($0).count % 2 == 0 }).count
//}

//  Squares of a Sorted Array
//func sortedSquares(_ nums: [Int]) -> [Int] {
//    return nums.map({ $0*$0 }).sorted(by: <)
//}

// MARK: --- Inserting Items Into an Array
// Duplicate Zeros
//func duplicateZeros(_ arr: inout [Int]) {
//    let count = arr.count
//
//    for i in (0..<count).reversed() {
//        if arr[i] == 0 {
//            arr.insert(0, at: i)
//        }
//    }
//
//    while arr.count > count {
//        arr.removeLast()
//    }
//}
//var arr1 = [1,0,2,3,0,4,5,0]
//duplicateZeros(&arr1)        // nil
//print(arr1)
//var arr2 = [1,2,3]
//duplicateZeros(&arr2) // nil
//print(arr2)

// Merge Sorted Array
//func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
//    var mer = [Int]()
//
//    for i in 0..<m {
//        mer.append(nums1[i])
//    }
//    for i in 0..<n {
//        mer.append(nums2[i])
//    }
//
//    nums1 = mer.sorted(by: <)
//}
//var n1 = [1,2,3,0,0,0]
//merge(&n1, 3, [2,5,6], 3)
//print(n1)
//
//var n2 = [1]
//merge(&n2, 1, [], 0)
//print(n2)

// MARK: --- Deleting Items From an Array
// Remove Element
//func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
//    while let isContain = nums.firstIndex(of: val) {
//        nums.remove(at: isContain)
//    }
//    return nums.count
//}
//var n1 = [3,2,2,3]
//print(removeElement(&n1, 3))
//print(n1)
//var n2 = [0,1,2,2,3,0,4,2]
//print(removeElement(&n2, 2))
//print(n2)

//   Remove Duplicates from Sorted Array
//func removeDuplicates(_ nums: inout [Int]) -> Int {
//    nums = Array(Set(nums)).sorted(by: <)
//    return nums.count
//}
//var n1 = [1,1,2]
//print(removeDuplicates(&n1))
//print(n1)
//var n2 = [0,0,1,1,1,2,2,3,3,4]
//print(removeDuplicates(&n2))
//print(n2)

// MARK: --- Searching for Items in an Ar
// Check If N and Its Double Exist
//func checkIfExist(_ arr: [Int]) -> Bool {
//    if arr.filter({ $0 == 0 }).count > 1 {
//        return true
//    }
//    return arr.filter({ arr.contains( $0 * 2 ) && $0 != 0 }).count > 0
//}
//print(checkIfExist([10,2,5,3]))     // true
//print(checkIfExist([7,1,14,11]))    // true
//print(checkIfExist([3,1,7,11]))     // false

// Valid Mountain Array
//func validMountainArray(_ arr: [Int]) -> Bool {
//    if arr.count > 2 {
//        if let max = arr.max() {
//            if let first = arr.firstIndex(of: max), first != 0, first != arr.count-1 {
//                let pre = Array(arr[arr.startIndex...first])
//                let suf = Array(arr[first..<arr.endIndex])
//
//                for i in 0..<pre.count-1 {
//                    if pre[i] >= pre[i+1] {
//                        return false
//                    }
//                }
//                for i in 0..<suf.count-1 {
//                    if suf[i] <= suf[i+1] {
//                        return false
//                    }
//                }
//                return true
//            } else {
//                return false
//            }
//        } else {
//            return false
//        }
//    } else {
//        return false
//    }
//}
//print(validMountainArray([2,1]))        // false
//print(validMountainArray([3,5,5]))      // false
//print(validMountainArray([0,3,2,1]))    // true

// MARK: --- In-Place Operations
// Replace Elements with Greatest Element on Right Side
//func replaceElements(_ arr: [Int]) -> [Int] {
//    var result = [Int](), lastMax = 0
//
//    for i in 0..<arr.count-1 {
//        if arr[i] >= lastMax {
//            lastMax = arr[i+1..<arr.count].max()!
//        }
//        result.append(lastMax)
//    }
//    result.append(-1)
//
//    return result
//}

// Remove Duplicates from Sorted Array
//func removeDuplicates(_ nums: inout [Int]) -> Int {
//    nums = Array(Set(nums)).sorted(by: <)
//    return nums.count
//}

// Move Zeroes
//func moveZeroes(_ nums: inout [Int]) {
//    var result = [Int](), zeros = [Int]()
//
//    while !nums.isEmpty {
//        if nums.first! == 0 {
//            zeros.append(nums.removeFirst())
//        } else {
//            result.append(nums.removeFirst())
//        }
//    }
//
//    _ = zeros.map({ result.append($0) })
//
//    nums = result
//}
//var arr1 = [0,1,0,3,12]
//moveZeroes(&arr1)
//print(arr1)
//var arr2 = [0]
//moveZeroes(&arr2)
//print(arr2)

// Sort Array By Parity
//func sortArrayByParity(_ nums: [Int]) -> [Int] {
//    return nums.sorted(by: { $0%2==0 && $1%2==1 })
//}

// Remove Element
//func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
//    while let isContain = nums.firstIndex(of: val) {
//        nums.remove(at: isContain)
//    }
//    return nums.count
//}

// MARK: --- Conclusion
// Height Checker
//func heightChecker(_ heights: [Int]) -> Int {
//    let sorted = heights.sorted(by: <)
//    return (0..<heights.count).filter({ heights[$0] != sorted[$0] }).count
//}

// Third Maximum Number
//func thirdMax(_ nums: [Int]) -> Int {
//    var removed = nums, maximums = Set<Int>()
//
//    while !removed.isEmpty {
//        maximums.insert(removed.remove(at: removed.firstIndex(of: removed.max()!)!))
//        if maximums.count == 3 {
//            return maximums.min()!
//        }
//    }
//
//    return maximums.count < 3 ? maximums.max()! : maximums.min()!
//}
//print(thirdMax([3,2,1]))    // 1
//print(thirdMax([1,2]))      // 2
//print(thirdMax([2,2,3,1]))  // 1

// Find All Numbers Disappeared in an Array 1-7 8 / 1-8 9
//func findDisappearedNumbers(_ nums: [Int]) -> [Int] {
//    var result = [Int](repeating: 0, count: nums.count)
//    
//    _ = nums.map({ result[$0-1] = -1 })
//
//    for i in (1...nums.count).reversed() {
//        if result[i-1] < 0 {
//            result.remove(at: i-1)
//        } else {
//            result[i-1] = i
//        }
//    }
//    
//    return result
//}
//print(findDisappearedNumbers([4,3,2,7,8,2,3,1]))    // [5,6]
//print(findDisappearedNumbers([1,1]))                // [2]
//print(findDisappearedNumbers([1,1,2,2]))            // [3,4]

// Squares of a Sorted Array
//func sortedSquares(_ nums: [Int]) -> [Int] {
//    return nums.map({ $0*$0 }).sorted(by: <)
//}
