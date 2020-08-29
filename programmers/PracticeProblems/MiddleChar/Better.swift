//
//  Better.swift
//  PracticeProblems
//
//  Created by Yongwoo Marco on 2020/08/20.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation


func solution(_ s:String) -> String {
    return String(s[String.Index(encodedOffset: (s.count-1)/2)...String.Index(encodedOffset: s.count/2)])
}


func solution(_ s:String) -> String {
    if Array(s).count % 2 == 0 {
        return String(Array(s)[(s.count/2)-1...(s.count/2)])
    }else{
        return String(Array(s)[s.count/2])
    }
}
