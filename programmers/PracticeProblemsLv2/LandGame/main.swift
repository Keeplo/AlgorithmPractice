//
//  main.swift
//  LandGame
//
//  Created by Yongwoo Marco on 2021/02/10.
//  Copyright © 2021 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

func solution(_ land:[[Int]]) -> Int{
    var beforeIndex = -1
    
    let answer = land.reduce(0){ (before: Int, currentArray: [Int]) -> Int in
        if beforeIndex == -1 {
            
            beforeIndex = currentArray.firstIndex(where: { $0 == currentArray.max()} )!
            return before + currentArray.max()!
        } else {
            let exceptArray: [Int] = currentArray.enumerated().filter({ (index: Int, element: Int) -> Bool in
                return index != beforeIndex
            }).map({ $0.element })
            
            beforeIndex = exceptArray.firstIndex(where: {$0==exceptArray.max()!})!
            return before + exceptArray.max()!
        }
    }

    return answer
}

let land = [[1,2,3,5],[5,6,7,8],[4,3,2,1]]

print(solution(land))
