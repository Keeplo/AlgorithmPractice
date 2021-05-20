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

// Conclusion
// Implement Queue using Stacks
//class MyQueue {
//    var first = [Int](), last = [Int]()
//
//    /** Initialize your data structure here. */
//    init() {
//        //
//    }
//
//    /** Push element x to the back of queue. */
//    func push(_ x: Int) {
//        if last.isEmpty {
//            while !first.isEmpty {
//                last.append( first.popLast()! )
//            }
//        }
//
//        first.append(x)
//    }
//
//    /** Removes the element from in front of queue and returns that element. */
//    func pop() -> Int {
//        if last.isEmpty {
//            while !first.isEmpty {
//                last.append( first.popLast()! )
//            }
//        }
//
//        if let lastLast = last.popLast() {
//            return lastLast
//        } else if let firstLast = first.first {
//            return first.removeFirst()
//        } else {
//            return -1
//        }
//    }
//
//    /** Get the front element. */
//    func peek() -> Int {
//        if last.isEmpty {
//            while !first.isEmpty {
//                last.append( first.popLast()! )
//            }
//        }
//
//        if let lastLast = last.last {
//            return lastLast
//        } else if let firstLast = first.last {
//            return firstLast
//        } else {
//            return -1
//        }
//    }
//
//    /** Returns whether the queue is empty. */
//    func empty() -> Bool {
//        if last.isEmpty {
//            while !first.isEmpty {
//                last.append( first.popLast()! )
//            }
//        }
//
//        return first.isEmpty && last.isEmpty
//    }
//}

// Implement Stack using Queues
//class MyStack {
//    var first = [Int](), last = [Int]()
//
//    /** Initialize your data structure here. */
//    init() {
//
//    }
//
//    /** Push element x onto stack. */
//    func push(_ x: Int) {
//        first.append(x)
//    }
//
//    /** Removes the element on top of the stack and returns that element. */
//    func pop() -> Int {
//        if first.isEmpty, last.isEmpty {
//            return -1
//        } else {
//            leftOne()
//
//            return first.removeFirst()
//        }
//    }
//
//    /** Get the top element. */
//    func top() -> Int {
//        if first.isEmpty, last.isEmpty {
//            return -1
//        } else if first.count == 1 {
//            return first.first!
//        } else {
//            leftOne()
//
//            return first.first!
//        }
//    }
//
//    /** Returns whether the stack is empty. */
//    func empty() -> Bool {
//        return first.isEmpty && last.isEmpty
//    }
//
//    func leftOne() {
//        if !first.isEmpty || !last.isEmpty {
//            while !first.isEmpty {
//                last.append( first.removeFirst() )
//            }
//            while !last.isEmpty {
//                first.append( last.removeFirst() )
//            }
//            while first.count > 1 {
//                last.append( first.removeFirst() )
//            }
//        }
//    }
//}
//Your MyStack object will be instantiated and called as such:
//let obj = MyStack()
//obj.push(x)
//let ret_2: Int = obj.pop()
//let ret_3: Int = obj.top()
//let ret_4: Bool = obj.empty()

// Decode String
//func decodeString(_ s: String) -> String {
//    var removed = s, stack = [String](), temp = [String](), result = [String]()
//    var nums = ""
//
//    while !removed.isEmpty {
//        let c = removed.removeFirst(), s = String(c)
//
//        if c.isNumber, stack.isEmpty {
//            nums.append(s)
//        } else if c == "[" {
//            if !stack.isEmpty {
//                temp.append(s)
//            }
//            stack.append(s)
//        } else if c == "]" {
//            stack.removeLast()
//
//            if stack.isEmpty {
//                var str = [String]()
//
//                for _ in 0..<Int(nums)! {
//                    str.append(contentsOf: temp)
//                }
//
//                removed = str.joined() + removed
//                temp = []
//                nums = ""
//            } else {
//                temp.append(s)
//            }
//        } else {
//            if stack.isEmpty {
//                result.append(s)
//            } else {
//                temp.append(s)
//            }
//        }
//    }
//
//    return result.joined()
//}
//print(decodeString("3[a]2[bc]"))        // "aaabcbc"
//print(decodeString("3[a2[c]]"))         // "accaccacc"
//print(decodeString("2[abc]3[cd]ef"))    // "abcabccdcdcdef"
//print(decodeString("abc3[cd]xyz"))      // "abccdcdcdxyz"

// Flood Fill
//func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
//    var newImg = image
//    let dirs = [[0, -1], [-1, 0], [0, 1], [1, 0]]
//
//    func change(_ arr: inout [[Int]], _ y: Int, _ x: Int, _ new: Int, _ base: Int) {
//        arr[y][x] = new
//
//        for d in dirs {
//            let nextY = y + d[0], nextX = x + d[1]
//            if nextY >= 0, nextX >= 0, nextY < arr.count, nextX < arr[0].count {
//
//                if arr[nextY][nextX] == base, arr[nextY][nextX] != new {
//                    change(&arr, nextY, nextX, new, base)
//                }
//            }
//        }
//    }
//
//    change(&newImg, sr, sc, newColor, image[sr][sc])
//
//    return newImg
//}
//print(floodFill([[1,1,1],[1,1,0],[1,0,1]], 1, 1, 2))    // [[2,2,2],[2,2,0],[2,0,1]]
//print(floodFill([[0,0,0],[0,0,0]], 0, 0, 2))            // [[2,2,2],[2,2,2]]
//print(floodFill([[0,0,0],[1,0,0]], 1, 0, 2))            // [[0,0,0],[2,0,0]]

// 01 Matrix
let dirs = [[-1, 0], [1, 0], [0, -1], [0, 1], [1, 1], [-1, -1], [-1, 1], [1, -1]]
func updateMatrix(_ mat: [[Int]]) -> [[Int]] {
    return [[]]
}
//print(updateMatrix([[0,0,0],[0,1,0],[0,0,0]]))  // [[0,0,0],[0,1,0],[0,0,0]]
//print(updateMatrix([[0,0,0],[0,1,0],[1,1,1]]))  // [[0,0,0],[0,1,0],[1,2,1]]


// Keys and Rooms
//func canVisitAllRooms(_ rooms: [[Int]]) -> Bool {
//    var keys = Set<Int>()
//
//    func checkKeys(_ nextRoom: Int) {
//        for inside in rooms[nextRoom] {
//            if !keys.contains(inside) {
//                keys.insert(inside)
//                checkKeys(inside)
//            }
//        }
//    }
//    keys.insert(0)
//    checkKeys(0)
//
//    return keys.count == rooms.count
//}
//print(canVisitAllRooms([[1],[2],[3],[]]))   // true
//print(canVisitAllRooms([[1,3],[3,0,1],[2],[0]]))   // false
