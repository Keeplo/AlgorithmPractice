//
//  main.swift
//  StackNQueue
//
//  Created by Yongwoo Marco on 2021/05/18.
//

import Foundation

// MARK: --- Queue: First-in-first-out Data Structure
// Design Circular Queue
//class MyCircularQueue {
//    var queue = [Int](), length = 0
//
//    init(_ k: Int) { length = k }
//    func enQueue(_ value: Int) -> Bool {
//        if queue.count < length {
//            queue.append(value)
//            return true
//        } else {
//            return false
//        }
//    }
//    func deQueue() -> Bool {
//        if let first = queue.first {
//            queue.removeFirst()
//            return true
//        } else {
//            return false
//        }
//    }
//    func Front() -> Int {
//        if let first = queue.first {
//            return first
//        }
//        return -1
//    }
//    func Rear() -> Int {
//        if let last = queue.last {
//            return last
//        }
//        return -1
//    }
//    func isEmpty() -> Bool { return queue.isEmpty }
//    func isFull() -> Bool { return queue.count == length }
//}
/**
 * Your MyCircularQueue object will be instantiated and called as such:
 * let obj = MyCircularQueue(k)
 * let ret_1: Bool = obj.enQueue(value)
 * let ret_2: Bool = obj.deQueue()
 * let ret_3: Int = obj.Front()
 * let ret_4: Int = obj.Rear()
 * let ret_5: Bool = obj.isEmpty()
 * let ret_6: Bool = obj.isFull()
 */

// MARK: --- Queue and BFS
// Number of Islands
//func numIslands(_ grid: [[Character]]) -> Int {
//    return 0
//}
//print(numIslands([
//    ["1","1","1","1","0"],
//    ["1","1","0","1","0"],
//    ["1","1","0","0","0"],
//    ["0","0","0","0","0"]
//  ]))                       // 1
//print(numIslands([
//    ["1","1","0","0","0"],
//    ["1","1","0","0","0"],
//    ["0","0","1","0","0"],
//    ["0","0","0","1","1"]
//  ]))                       // 3










// MARK: --- Stack: Last-in-first-out Data Structure
// Min Stack
//class MinStack {
//    var arr = [Int]()
//    /** initialize your data structure here. */
//    init() { arr = [] }
//    func push(_ val: Int) { arr.append(val) }
//    func pop() { arr.removeLast() }
//    func top() -> Int { return arr.last! }
//    func getMin() -> Int { return arr.min()! }
//}
/**
 * Your MinStack object will be instantiated and called as such:
 * let obj = MinStack()
 * obj.push(val)
 * obj.pop()
 * let ret_3: Int = obj.top()
 * let ret_4: Int = obj.getMin()
 */

// Valid Parentheses
//class Solution {
//    func getOffside(_ c: Character) -> Character {
//        switch c {
//        case "(":
//            return ")"
//        case "{":
//            return "}"
//        default:
//            return "]"
//        }
//    }
//    func isValid(_ s: String) -> Bool {
//        var stack = [Character]()
//
//        for c in s {
//            if let last = stack.last, getOffside(last) == c {
//                stack.removeLast()
//            } else {
//                stack.append(c)
//            }
//        }
//
//        return stack.isEmpty
//    }
//}

// Daily Temeratures
//func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
//    var result = [Int](repeating: 0, count: temperatures.count), stack = [(Int, Int)]()
//
//    for i in 0..<temperatures.count {
//
//        while let last = stack.last, last.1 < temperatures[i] {
//            result[last.0] = i - stack.removeLast().0
//        }
//        stack.append((i, temperatures[i]))
//    }
//
//    return result
//}
//
//print(dailyTemperatures([73, 74, 75, 71, 69, 72, 76, 73]))  // [1, 1, 4, 2, 1, 1, 0, 0]


// Evaluate Reverse Polish Notation
//func evalRPN(_ tokens: [String]) -> Int {
//    func calculate(_ s: String, _ v1: Int, _ v2: Int) -> Int {
//        switch s {
//            case ops[0]:
//                return v2 + v1
//            case ops[1]:
//                return v2 - v1
//            case ops[2]:
//                return v2 * v1
//            default:
//                return v2 / v1
//        }
//    }
//    var stack = [Int](), removingToken = tokens, ops = ["+", "-", "*", "/"]
//
//    while !removingToken.isEmpty {
//        if let first = removingToken.first, ops.contains(first) {
//            stack.append(calculate(removingToken.removeFirst(), stack.removeLast(), stack.removeLast()))
//        } else {
//            stack.append(Int(removingToken.removeFirst())!)
//        }
//    }
//
//    return stack[0]
//}
//print(evalRPN(["2","1","+","3","*"]))   // 9
//print(evalRPN(["4","13","5","/","+"]))  // 6
//print(evalRPN(["10","6","9","3","+","-11","*","/","*","17","+","5","+"]))   // 22
