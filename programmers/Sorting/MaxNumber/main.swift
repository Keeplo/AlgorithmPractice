//
//  main.swift
//  MaxNumber
//
//  Created by Yongwoo Marco on 2020/08/13.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

func solution(_ numbers:[Int]) -> String {
    var result = ""
    var arr = [String]()
    
    for i in numbers {
        arr.append(String(i))
    }
    
    while(!arr.isEmpty) {
        arr.sort(by: >)
        for i in 0..<arr.count-1 {
            let s = arr.first!
            if(s>arr[i]) {
                if(arr[s.index(s.startIndex+1, offsetBy: 1)] < a[i][a[i].index(s.startIndex+1, offsetBy: 1)]) {
                    
                }
            }
        }
        result.append(arr.first!)
        arr.remove(at: 0)
    }
    
    return result
}

let arr = readLine()!.components(separatedBy: " ").map{ Int($0)! }

let result = solution(arr)

print(result)
