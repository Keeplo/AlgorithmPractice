//
//  main.swift
//  20.09.03.Lv2-2
//
//  Created by Yongwoo Marco on 2020/09/03.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

func solution(_ str1:String, _ str2:String) -> Int {
    var arr1 = [String]()
    var arr2 = [String]()
    
    for a in 0..<str1.count-1 {
        let com = (str1 as NSString).substring(with: NSRange(location:a, length:2))
        arr1.append(com)
    }
    for b in 0..<str2.count-1 {
        let com = (str1 as NSString).substring(with: NSRange(location:b, length:2))
        arr2.append(com)
    }
    let array1 = arr1.filter( String($0). )
    
    return 0
}

let str1 = readLine()!.lowercased()
//let str2 = readLine()!.lowercased()

print(solution(str1, str1))
