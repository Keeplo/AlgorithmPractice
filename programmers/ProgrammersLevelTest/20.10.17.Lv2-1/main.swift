//
//  main.swift
//  20.10.17.Lv2-1
//
//  Created by Yongwoo Marco on 2020/10/17.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

func solution(_ name:String) -> Int {
    let alphabets = ["A","B","C","D","E","F","G","H","I","J","K","L",
                     "M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z",]
    // 0~25 13
    // a%26
    
    var result = 0
    
    for c in name {
        let index = Int(alphabets.firstIndex(of: String(c))!)
        result += index > 13 ? 26-index : index
        //print("c : \(c) / index : \(index) / \(index > 13 ? 26-index : index)")
    }
    
    if name.count < 2 {
        
    } else {
        if (Array(name)[1] == "A") || (Array(name)[name.count-1] == "A") { // 뒤로 먼저가고 마지막 A는 건너뜀
            result += name.count-2
        } else {
            result += name.count-1 // 한번씩 이동 총갯수 -1
        }
    }
    
    return result
}

let name = "A"

print(solution(name))
