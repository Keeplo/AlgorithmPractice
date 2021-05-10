//
//  main.swift
//  알고리즘기초1/2_200
//
//  Created by Yongwoo Marco on 2021/05/10.
//

// 10828 스택
//let n = Int(readLine()!)!
//var stack = [Int]()
//
//for _ in 0..<n {
//    let cmd = readLine()!.components(separatedBy: " ")
//
//    switch cmd[0] {
//    case "pop":
//        if let pop = stack.popLast() {
//            print(pop)
//        } else {
//            print("-1")
//        }
//    case "size":
//        print(stack.count)
//    case "empty":
//        print(stack.isEmpty ? "1" : "0")
//    case "top":
//        if let last = stack.last {
//            print(last)
//        } else {
//            print("-1")
//        }
//    default:
//        stack.append(Int(cmd[1])!)
//    }
//}

// 9093 단어뒤집기
//let count = Int(readLine()!)!
//
//for _ in 0..<count {
//    let str = readLine()!.components(separatedBy: " ")
//
//    _ = str.map({ print($0.reversed()+" ", terminator: "") })
//}
//
// 9012 괄호
//let count = Int(readLine()!)!
//
//for _ in 0..<count {
//    var s = [Character]()
//
//    for c in readLine()! {
//        if let last = s.last, last == "(" {
//            if last != c {
//                s.removeLast()
//            } else {
//                s.append(c)
//            }
//        } else {
//            s.append(c)
//        }
//    }
//    s.isEmpty ? print("YES") : print("NO")
//}
//
// 1874 스택수열
//let max = Int(readLine()!)!
//var stack = [Int](), inputs = [Int](), result = [String](), num = 1
//
//for _ in 0..<max {
//    inputs.append( Int(readLine()!)! )
//}
//
//while !inputs.isEmpty {
//    if let last = stack.last, last == inputs[0] {
//        stack.removeLast()
//        inputs.removeFirst()
//        result.append("-")
//    } else if let last = stack.last, last > inputs[0] {
//        result.removeAll()
//        result.append("NO")
//        break
//    } else {
//        stack.append(num)
//        num += 1
//        result.append("+")
//    }
//}
//_ = result.map({ print($0) })


// 10845 큐
//if let count = Int(readLine()!) {
//    var q = [Int]()
//
//    for _ in 0..<count {
//        let cmd = readLine()!.split(separator: " ").map({ String($0) })
//
//        switch cmd[0] {
//        case "pop":
//            if !q.isEmpty {
//                print(q.removeFirst())
//            } else {
//                print(-1)
//            }
//        case "size":
//            print(q.count)
//        case "empty":
//            print(q.isEmpty ? 1 : 0)
//        case "front":
//            if let front = q.first {
//                print(front)
//            } else {
//                print(-1)
//            }
//        case "back":
//            if let last = q.last {
//                print(last)
//            } else {
//                print(-1)
//            }
//        default:
//            q.append(Int(cmd[1])!)
//        }
//    }
//}

// 1158 요세푸스 문제
//var circle = [Int](), result = [Int]()
//let str = readLine()!.split(separator: " ").map({ Int($0)! })
//
//for i in 1...str[0] {
//    circle.append(i)
//}
//
//let max = str[1]
//var (index, count) = (0, 1)
//
//print("<", terminator: "")
//while !circle.isEmpty {
////    print("now \(index) count \(count), circle \(circle)")
//
//    if count == max {
//        if circle.count == 1 {
//            print("\(circle.remove(at: index))>", terminator: "")
//        } else {
//            print("\(circle.remove(at: index)), ", terminator: "")
//        }
//        count = 1
//    } else if index >= circle.count {
//        index = 0
//    } else {
//        if index + 1 >= circle.count {
//            index=0
//        } else {
//            index+=1
//        }
//        count += 1
//    }
//}

// 10866 덱
//if let count = Int(readLine()!) {
//    var deque = [Int]()
//
//    for _ in 0..<count {
//        let cmd = readLine()!.split(separator: " ").map({ String($0) })
//
//        switch cmd[0] {
//        case "push_front":
//            deque.insert(Int(cmd[1])!, at: 0)
//        case "push_back":
//            deque.append(Int(cmd[1])!)
//        case "pop_front":
//            if !deque.isEmpty {
//                print(deque.removeFirst())
//            } else {
//                print(-1)
//            }
//        case "pop_back":
//            if !deque.isEmpty {
//                print(deque.removeLast())
//            } else {
//                print(-1)
//            }
//        case "empty":
//            print(deque.isEmpty ? 1 : 0)
//        case "front":
//            if let front = deque.first {
//                print(front)
//            } else {
//                print(-1)
//            }
//        case "back":
//            if let last = deque.last {
//                print(last)
//            } else {
//                print(-1)
//            }
//        default:
//            // "size"
//            print(deque.count)
//        }
//    }
//}

// 1406 에디터
var left = readLine()!
let cmdCound = Int(readLine()!)!
var right = ""

for _ in 0..<cmdCound {
    let cmd = readLine()!
    
    switch cmd {
    case "L":
        if !left.isEmpty {
            right.append(left.removeLast())
        }
    case "D":
        if !right.isEmpty {
            left.append(right.removeLast())
        }
    case "B":
        if !left.isEmpty {
            left.removeLast()
        }
    default:
        left.append(cmd.last!)
    }
    
//    print("cmd : \(cmd[0]), now : \(str.joined()), cursor : \(cursor)")
}

print(left + right.reversed())
