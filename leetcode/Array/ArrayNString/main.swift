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
// Diagonal Traverse
func findDiagonalOrder(_ mat: [[Int]]) -> [Int] {
    var result = [Int]()


    return result
}
print(findDiagonalOrder([[1,2,3],[4,5,6],[7,8,9]]))
print(findDiagonalOrder([[1,2],[3,4]]))

// Spiral Matrix
//func spiralOrder(_ matrix: [[Int]]) -> [Int] {
//    var m = matrix, result = [Int]()
//
//    while !m.isEmpty {
//        // right
//        while let first = m.first, !first.isEmpty {
//            result.append( m[0].removeFirst() )
//        }
//
//        // down
//        m = m.filter({ !$0.isEmpty })
//        for i in 0..<m.count {
//            result.append( m[i].removeLast() )
//        }
//
//        // left
//        m = m.filter({ !$0.isEmpty })
//        while let last = m.last, !last.isEmpty {
//            result.append( m[m.count-1].removeLast() )
//        }
//
//        // up
//        m = m.filter({ !$0.isEmpty })
//        for i in (0..<m.count).reversed() {
//            result.append( m[i].removeFirst() )
//        }
//    }
//
//    return result
//}
//print(spiralOrder([[1,2,3],[4,5,6],[7,8,9]]))
//print(spiralOrder([[1,2,3,4],[5,6,7,8],[9,10,11,12]]))
//print(spiralOrder([[7],[9],[6]]))

// Pascal's Triangle
//func generate(_ numRows: Int) -> [[Int]] {
//    var result = [[Int]]()
//
//    for i in 1...numRows {
//        result.append([Int](repeating: 1, count: i))
//    }
//    for y in 0..<numRows {
//        for x in 0..<y+1 {
//            if y > 1, x != 0, x != y {
//                result[y][x] = result[y-1][x-1] + result[y-1][x]
//            }
//        }
//    }
//
//    return result
//}
//print(generate(5))
//print(generate(1))

// MARK: --- Introduction to String
// Add Binary
//func addBinary(_ a: String, _ b: String) -> String {
//    var plus = ["", "", ""], aa = String(a.reversed()), bb = String(b.reversed()), result = [String]()
//
//    for i in 0...(a.count > b.count ? a.count : b.count) {
//        if let af = aa.first {
//            plus[0] = String(aa.removeFirst())
//        }
//        if let bf = bb.first {
//            plus[1] = String(bb.removeFirst())
//        }
//        let count = plus.filter({ $0 == "1"}).count
//
//        if count < 1 {
//            plus[2] = ""
//            result.append("0")
//        } else if count == 1 {
//            plus[2] = ""
//            result.append("1")
//        } else if count == 2 {
//            plus[2] = "1"
//            result.append("0")
//        } else {
//            plus[2] = "1"
//            result.append("1")
//        }
//
//        plus[0] = ""
//        plus[1] = ""
//        if aa.isEmpty, bb.isEmpty, plus.filter({ $0 == "" }).count > 2 {
//            return result.reversed().joined()
//        }
//    }
//
//    return result.reversed().joined()
//}
//print(addBinary("11", "1"))         // "100"
//print(addBinary("1010", "1011"))    // "10101"
//print(addBinary("0", "0"))          // "0"

// Implement strStr()
//func strStr(_ haystack: String, _ needle: String) -> Int {
//    if needle.isEmpty {
//        return 0
//    } else if haystack.count < needle.count {
//        return -1
//    }
//    for i in 0..<haystack.count - needle.count + 1 {
//        if Array(haystack)[i..<(i+needle.count)].map({ String($0) }).joined() == needle {
//            return i
//        }
//    }
//    return -1
//}
//print(strStr("hello", "ll"))    // 2
//print(strStr("aaaaa", "bba"))   // -1
//print(strStr("", ""))           // 0
//print(strStr("abb", "abaaa"))

// Longest Common Prefix
//func longestCommonPrefix(_ strs: [String]) -> String {
//    var result = ""
//    if let min = strs.map({ $0.count }).min(), min > 0 {1
//        for i in 1...min {
//            let prefix = strs[0].prefix(i)
//            if strs.filter({ $0.prefix(i) == prefix }).count == strs.count {
//                result = String(prefix)
//            } else {
//                return result
//            }
//        }
//
//        return result
//    } else {
//        return ""
//    }
//}
//
//print(longestCommonPrefix(["flower","flow","flight"]))
//print(longestCommonPrefix(["dog","racecar","car"]))
//print(longestCommonPrefix([""]))

// Reverse String
//func reverseString(_ s: inout [Character]) {
//    s.reverse()
//}
//var s1: [Character] = ["h","e","l","l","o"]
//reverseString(&s1)
//print(s1)
//var s2: [Character]  = ["H","a","n","n","a","h"]
//reverseString(&s2)
//print(s2)

// Array Partition 1
//func arrayPairSum(_ nums: [Int]) -> Int {
//    var sorted = nums.sorted(by: <), result = 0
//    for i in 0..<nums.count {
//        if i%2==0 {
//            result += sorted[i]
//        }
//    }
//    return result
//}

// Two Sum 2 - Input array is sorted
//func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
//    let setNum = Array(Set(numbers)).sorted()
//
//    for i in setNum {
//        if numbers.contains(target - i) {
//            if i == target - i, numbers.filter({ $0 == i }).count > 1 {
//                return [numbers.firstIndex(of: i)! + 1, numbers.lastIndex(of: i)! + 1]
//            } else if i != target - i {
//                return [numbers.firstIndex(of: i)! + 1, numbers.firstIndex(of: target - i)! + 1]
//            }
//        }
//    }
//    return []
//}
//print(twoSum([2,7,11,15], 9))   // [1, 2]
//print(twoSum([2,3,4], 6))       // [1, 3]
//print(twoSum([-1,0], -1))       // [1, 2]

// Remove Element
//func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
//    while let isContain = nums.firstIndex(of: val) {
//        nums.remove(at: isContain)
//    }
//    return nums.count
//}

// Max Consecutive Ones
//func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
//    let str = nums.map({ String($0)}).joined().components(separatedBy: "0")
//
//    return str.map({ $0.count }).max()!
//}

// Minimum Size Subarray Sum - 참조
//func minSubArrayLen(_ target: Int, _ nums: [Int]) -> Int {
//    var start = 0, sum = 0, minLength = Int.max
//
//    for i in 0..<nums.count {
//        sum += nums[i]
//        while sum >= target {
//            minLength = min(minLength, i - start + 1)
//            sum -= nums[start]
//            start += 1
//        }
//    }
//    return minLength < Int.max ? minLength : 0
//}
//print(minSubArrayLen(7, [2,3,1,2,4,3]))
//print(minSubArrayLen(4, [1,4,4]))
//print(minSubArrayLen(11, [1,1,1,1,1,1,1,1]))

// MARK: --- Conclusion
// Rotate Array
//func rotate(_ nums: inout [Int], _ k: Int) {
//    for _ in 0..<k {
//        nums.insert(nums.removeLast(), at: 0)
//    }
//}
//var num1 = [1,2,3,4,5,6,7]
//rotate(&num1, 3)
//print(num1)                 // [5,6,7,1,2,3,4]
//var num2 = [-1,-100,3,99]
//rotate(&num2, 2)
//print(num2)                 // [3,99,-1,-100]

// Parscal's Triangle 2
//func getRow(_ rowIndex: Int) -> [Int] {
//    var result = [[Int]]()
//
//    for i in 1...rowIndex+1 {
//        result.append([Int](repeating: 1, count: i))
//    }
//    for y in 0..<rowIndex+1 {
//        for x in 0..<y+1 {
//            if y > 1, x != 0, x != y {
//                result[y][x] = result[y-1][x-1] + result[y-1][x]
//            }
//        }
//    }
//
//    return result[rowIndex]
//}
//print(getRow(3))    // [1,3,3,1]
//print(getRow(0))    // [1]
//print(getRow(1))    // [1,1]

// Reverse Words in a String
//func reverseWords(_ s: String) -> String {
//    var str = s.components(separatedBy: " ").filter({ $0 != "" }).reversed().map({ $0 + " " }).joined()
//    str.removeLast()
//
//    return str
//}
//print(reverseWords("the sky is blue"))  // "blue is sky the"
//print(reverseWords("  hello world  "))  // "world hello"
//print(reverseWords("a good   example")) // "example good a"
//print(reverseWords("  Bob    Loves  Alice   "))     // "Alice Loves Bob"
//print(reverseWords("Alice does not even like bob")) // "bob like even not does Alice"

// Reverse Words in a String 3
//func reverseWords(_ s: String) -> String {
//    var str = s.components(separatedBy: " ").map({ String($0.reversed()) + " " }).joined()
//    str.removeLast()
//    return str
//}
//print(reverseWords("Let's take LeetCode contest"))  // "s'teL ekat edoCteeL tsetnoc"
//print(reverseWords("God Ding"))                     // "doG gniD"

// Remove Duplicates from
//func removeDuplicates(_ nums: inout [Int]) -> Int {
//    nums = Array(Set(nums)).sorted(by: <)
//    return nums.count
//}

// Move Zeros
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
