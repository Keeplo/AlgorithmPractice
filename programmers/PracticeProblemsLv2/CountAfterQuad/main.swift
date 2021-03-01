//
//  main.swift
//  CountAfterQuad
//
//  Created by Yongwoo Marco on 2021/02/19.
//  Copyright © 2021 Yongwoo Marco Kim. All rights reserved.
//

// 쿼드압축 후 개수 세기 Lv 2

// https://programmers.co.kr/learn/courses/30/lessons/68936
// https://keeplo.tistory.com/194

import Foundation

func solution(_ arr:[[Int]]) -> [Int] {
    var zeroCount = 0, oneCount = 0, size = arr.count
    
    func check(_ square: [[Int]]) -> Int? {
        let first = square[0][0]
        
        for y in 0..<square.count {
            for x in 0..<square.count {
                if !(x == 0 && y == 0), square[y][x] != first {
                    return nil
                }
            }
        }
        
        return first == 0 ? 0 : 1
    }
    
    func quadCompress(_ arr: [[Int]],_ size: Int) {
        var quads = [[[Int]]](repeating: [], count: 4)
        
        for i in 0..<size/2 {
            var temp1 = [Int]()
            var temp2 = [Int]()
            for one in 0..<size/2 {
                temp1.append(arr[i][one])
            }
            quads[0].append(temp1)
            for two in size/2..<size {
                temp2.append(arr[i][two])
            }
            quads[1].append(temp2)
        }
        
        for i in size/2..<size {
            var temp1 = [Int]()
            var temp2 = [Int]()
            for three in 0..<size/2 {
                temp1.append(arr[i][three])
            }
            quads[2].append(temp1)
            for four in size/2..<size {
                temp2.append(arr[i][four])
            }
            quads[3].append(temp2)
        }
        
        for quad in quads {
            if let num = check(quad) {
                if num == 0 {
                    zeroCount += 1
                } else {
                    oneCount += 1
                }
            } else {
                quadCompress(quad, size/2)
            }
        }
    }
    
    if let num = check(arr) {
        if num == 0 {
            zeroCount += 1
        } else {
            oneCount += 1
        }
    } else {
        quadCompress(arr, size)
    }
    
    return [zeroCount, oneCount]
}

//let arr = [[0,0,0,0], [0,0,0,0], [0,1,0,0], [0,0,0,0]]

let arr = [[0]]

//let arr = [[1,1,0,0], [1,0,0,0], [1,0,0,1], [1,1,1,1]]    // [4,9]
//let arr = [[1,1,1,1,1,1,1,1],[0,1,1,1,1,1,1,1],[0,0,0,0,1,1,1,1],[0,1,0,0,1,1,1,1],[0,0,0,0,0,0,1,1],[0,0,0,0,0,0,0,1],[0,0,0,0,1,0,0,1],[0,0,0,0,1,1,1,1]]    // [10,15]


print(solution(arr))


// 00 01 02 03
//
// 10 11 12 13
//
// 20 21 22 23
//
// 30 31 32 33

