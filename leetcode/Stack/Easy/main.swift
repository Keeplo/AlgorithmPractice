//
//  main.swift
//  Easy
//
//  Created by Yongwoo Marco since 2021/05/01.
//

// MARK: --- 20.05.02
// 1021. Remove Outermost Parentheses
//func removeOuterParentheses(_ S: String) -> String {
//    var stack = [Character](), strs = [String](), temp = ""
//
//    for c in S {
//        if c == "(" {
//            stack.append(c)
//            temp.append(c)
//        } else {
//            stack.removeLast()
//            temp.append(c)
//        }
//
//        if stack.isEmpty {
//            strs.append(temp)
//            temp = ""
//        }
//    }
//
//    return strs.map{ s -> String in
//        if s.count < 3 {
//            return ""
//        } else {
//            return String(s[s.index(after: s.startIndex)..<s.index(before: s.endIndex)])
//        }
//    }.joined()
//}

// 1047. Remove All Adjacent Duplicates In String
//func removeDuplicates(_ S: String) -> String {
//    var stack = [Character]()
//    
//    for s in S {
//        if let last = stack.last {
//            if last == Character(extendedGraphemeClusterLiteral: s) {
//                stack.removeLast()
//            } else {
//                stack.append(s)
//            }
//        } else {
//            stack.append(s)
//        }
//    }
//    
//    return stack.reduce("") { $0 + String($1) }
//}
//
//let S = "abbaca"
//
//print(removeDuplicates(S))

// 1441 Build an Array With Stack Operations
//func buildArray(_ target: [Int], _ n: Int) -> [String] {
//    var now = 1, result = [String](), t = target
//
//    while !t.isEmpty {
//        if now == t.first! {
//            result.append("Push")
//            t.removeFirst()
//        } else {
//            result.append("Push")
//            result.append("Pop")
//        }
//        now += 1
//    }
//    return result
//}
//
//print(buildArray([1, 3], 3))
//print(buildArray([1, 2, 3], 3))
//print(buildArray([1, 2], 4))
//print(buildArray([2, 3, 4], 4))

// 682. Baseball Game
//func calPoints(_ ops: [String]) -> Int {
//    var result = [Int]()
//
//    for s in ops {
//
//        switch s {
//        case "+":
//            result.append(result[result.count - 2] + result.last!)
//        case "C":
//            result.removeLast()
//        case "D":
//            result.append(result.last! * 2)
//        default:
//            if let i = Int(s) {
//                result.append(i)
//            }
//        }
//    }
//    return result.reduce(0, +)
//}
//print(calPoints(["5","2","C","D","+"]))
//print(calPoints(["5","-2","4","C","D","9","+","+"]))
//print(calPoints(["1"]))

// 496. Next Greater Element I
//func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
//    nums1.map{ n1 in
//        for i in nums2.firstIndex(of: n1)!..<nums2.count {
//            if n1 < nums2[i] {
//                return nums2[i]
//            }
//        }
//        return -1
//    }
//}
//print(nextGreaterElement([4,1,2], [1,3,4,2]))   // [-1, 3, -1]
//print(nextGreaterElement([2,4], [1,2,3,4]))     // [3, -1]
//print(nextGreaterElement([4,1,2], [1,2,3,4]))   // [-1, 2, 3]
