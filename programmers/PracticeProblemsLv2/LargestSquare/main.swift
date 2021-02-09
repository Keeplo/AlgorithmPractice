//
//  main.swift
//  LargestSquare
//
//  Created by Yongwoo Marco on 2021/02/09.
//  Copyright © 2021 Yongwoo Marco Kim. All rights reserved.
//

// 가장 큰 정사각형 찾기

// https://programmers.co.kr/learn/courses/30/lessons/12905
// https://keeplo.tistory.com/177

import Foundation

func solution(_ board:[[Int]]) -> Int {
    var answer:Int = 0, new = board
    let lenX = board[0].count, lenY = board.count
    
    if board[0].filter({ $0 > 0}).count > 0 || board.filter({ $0[0] > 0 }).count > 0 {
        answer = 1
    }
    
    for y in 1..<lenY {
        for x in 1..<lenX {
            if new[y][x] != 0 {
                new[y][x] = [new[y-1][x-1], new[y-1][x], new[y][x-1]].min()! + 1
                answer = max(answer, new[y][x])
            }
        }
    }
//    for n in new {
//        print(n)
//    }
    return answer*answer
}


//let board = [[0,1,1,1],[1,1,1,1],[1,1,1,1],[0,0,1,0]]
//let board = [[0,0,1,1],[1,1,1,1]]

let board = [[0, 0, 0], [1, 0, 0], [0, 0, 0]]
//let board = [[1]]

//for n in board {
//    print(n)
//}
//print("")

print(solution(board))
