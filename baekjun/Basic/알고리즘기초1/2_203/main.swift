//
//  main.swift
//  알고리즘기초1/2_203
//
//  Created by Yongwoo Marco on 2021/05/10.
//

//11655 ROT13
//let asciis = ["a":Character("a").asciiValue!, "z":Character("z").asciiValue!, "A":Character("A").asciiValue!, "Z":Character("Z").asciiValue!]
//
//print(readLine()!.map({ c -> String in
//    if c.isLetter, c.asciiValue! >= asciis["a"]! {
//        if c.asciiValue! + 13 > asciis["z"]! {
//            return String( UnicodeScalar(asciis["a"]! + c.asciiValue! + 13 - asciis["z"]! - 1) )
//        } else {
//            return String( UnicodeScalar(c.asciiValue! + 13) )
//        }
//    } else if c.isLetter, c.asciiValue! <= asciis["z"]! {
//        if c.asciiValue! + 13 > asciis["Z"]! {
//            return String( UnicodeScalar(asciis["A"]! + c.asciiValue! + 13 - asciis["Z"]! - 1) )
//        } else {
//            return String( UnicodeScalar(c.asciiValue! + 13) )
//        }
//    } else {
//        return String(c)
//    }
//}).joined() )

// 2743 단어 길이 재기
//print( readLine()!.count )

// 10820 문자열 분석
// while let input = readLine() { }
//for _ in 0..<100 {
//    if let input = readLine(), input != "" {
//        var count = (0, 0, 0, 0)
//
//        _ = input.map({ c in
//            if c.isLowercase {
//                count.0 += 1
//            } else if c.isUppercase {
//                count.1 += 1
//            } else if c.isNumber {
//                count.2 += 1
//            } else if !c.isLetter, !c.isNumber {
//                count.3 += 1
//            }
//        })
//
//        print("\(count.0) \(count.1) \(count.2) \(count.3)")
//    } else {
//        break
//    }
//}

// 10808 알파벳개수
//let aAscii = Character("a").asciiValue!
//var alphabets = [Int](repeating: 0, count: 26)
//
//_ = readLine()!.map({ c in
//    alphabets[ Int(c.asciiValue! - aAscii) ] += 1
//})
//
//let resultStr = alphabets.map({ "\($0) "}).joined()
//
//print( resultStr[resultStr.startIndex..<resultStr.endIndex] )

// 10809 알파벳 찾기
//let aAscii = Character("a").asciiValue!
//var alphabets = [Int](repeating: -1, count: 26)
//
//let str = readLine()!
//
//for i in 0..<str.count {
//    if alphabets[ Int(Array(str)[i].asciiValue! - aAscii) ] == -1 {
//        alphabets[ Int(Array(str)[i].asciiValue! - aAscii) ] = i
//    }
//}
//
//let resultStr = alphabets.map({ "\($0) "}).joined()
//
//print( resultStr[resultStr.startIndex..<resultStr.endIndex] )

// 10824 네 수
//let nums = readLine()!.split(separator: " ").map({ String($0) })
//print( Int(nums[0]+nums[1])! + Int(nums[2]+nums[3])!)

// 1935 후위 표기식2
//import Foundation
//let n = Int(readLine()!)!
//var op = readLine()!,ops = [String:String](), stack = [Double]()
//
//let changedOp = op.map({ c -> String in
//    if c.isLetter {
//        if let num = ops[String(c)] {
//            return num
//        } else {
//            ops.updateValue(readLine()!, forKey: String(c))
//            return ops[String(c)]!
//        }
//    }
//    return String(c)
//})
//
//for c in changedOp {
//    if let num = Double(c) {
//        stack.append(num)
//    } else {
//        let last = stack.removeLast()
//        let nextLast = stack.removeLast()
//
//        switch c {
//        case "+":
//            stack.append(nextLast + last)
//        case "-":
//            stack.append(nextLast - last)
//        case "*":
//            stack.append(nextLast * last)
//        default:
//            stack.append(nextLast / last)
//        }
//    }
//}
//
//print( String(format: "%.2f", stack.removeLast() ) )

// 11656 접미사 배열
//var str = readLine()!, arr = [String]()
//
//while !str.isEmpty {
//    arr.append(str)
//    str.removeFirst()
//}
//
//arr.sorted(by: { $0 < $1 } ).map({ print($0) })

// 1918 후위표기식 // https://ghkvud2.tistory.com/67
let exp = readLine()!, priority = ["*":1, "/":1, "+":0, "-":0]
var ops = [String](), result = ""

func popToResult() {
    while !ops.isEmpty {
        result += ops.removeLast()
    }
}

for c in exp {
    if c.isLetter {
        result += String(c)
    } else if String(c) == ")" {
        while let last = ops.last, last != "(" {
            result += ops.removeLast()
        }
        ops.removeLast()
    } else {
        if let last = ops.last, last != "(", String(c) != "(", priority[last]! > priority[String(c)]! {
            popToResult()
            ops.append(String(c))
        } else {
            ops.append(String(c))
        }
    }
}
popToResult()

print(result)


