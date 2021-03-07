//
//  main.swift
//  MaxNumber
//
//  Created by Yongwoo Marco on 2020/08/13.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

func solution(_ numbers:[Int]) -> String {
    var strNums = numbers.map({ String($0) }).sorted(by: { $0+$1 > $1+$0 })
    
    return strNums.first == "0" ? "0" : strNums.joined()
}

//let numbers = [6, 10, 2]            // "6210"
//let numbers = [3, 30, 34, 5, 9]     // "9534330"
let numbers = [0, 0, 0]

print(solution(numbers))


//func solution(_ numbers:[Int]) -> String {
//    var strNums = numbers.map({ String($0) }).sorted(by: >)
//    var maxNum = "", maxExtra = ""
//
//    //가능한 모든 경우의 수
//    func permuteWirth(_ a: [String], _ n: Int) {
//        if n == 0 {
//            let num = a.joined()
//            if maxExtra < num {
//                maxExtra = num
//            }
//        } else {
//            var a = a
//            permuteWirth(a, n - 1)
//            for i in 0..<n {
//                a.swapAt(i, n)
//                permuteWirth(a, n - 1)
//                a.swapAt(i, n)
//            }
//        }
//    }
//
//    while strNums.count > 0 {
//        let s = strNums.removeFirst()
//
//        if s.count > 1, strNums.filter({ $0.first == s.first }).count > 0 {
//            print(s)
//            var extraS = strNums.filter({ $0.first == s.first  })
//            let withoutS = strNums.filter({ $0.first != s.first  })
//
//            extraS.insert(s, at: 0)
//
//            permuteWirth(extraS, extraS.count - 1)
//            strNums = withoutS
//            maxNum += maxExtra
//            maxExtra = ""
//        } else {
//            maxNum.append(s)
//        }
//    }
//
//    return String(maxNum)
//}
