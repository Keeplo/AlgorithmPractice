//
//  main.swift
//  CorrectSquare
//
//  Created by Yongwoo Marco on 2021/01/23.
//  Copyright © 2021 Yongwoo Marco Kim. All rights reserved.
//

// 멀쩡한 사각형

// https://programmers.co.kr/learn/courses/30/lessons/62048
//

import Foundation

func solution(_ w:Int, _ h:Int) -> Int64{
    var m:Int64  = 1, W = Int64(w), H = Int64(h)
    
    if w == h {
        return Int64(w * (w-1))
    }
    
    while W%2 == 0, H%2 == 0 {
        m *= 2
        W = W/2
        H = H/2
    }
    
    print("W \(W), H \(H), w \(w), h \(h), m \(m)")
    
    if W > H {
        return H * m * (Int64(w) - H)
    } else {
        return W * m * (Int64(h) - W)
    }
    
//    answer = Int64(w * h) - (W * W) * m
//    answer = Int64(w * h) - (H * H) * m
    
//    W * m * (Int64(h) - W)
//    H * m * (Int64(w) - H)       Int64(w * H * m) - (H * H) * m
    
//    
}


let w = 4
let h = 3

print(solution(w, h))
