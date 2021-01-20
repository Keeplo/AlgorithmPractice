//
//  main.swift
//  PassingTruck
//
//  Created by Yongwoo Marco on 2021/01/20.
//  Copyright © 2021 Yongwoo Marco Kim. All rights reserved.
//

// 다리를 지나는 트럭 (Lv. 2)
 
// https://programmers.co.kr/learn/courses/30/lessons/42583
// https://keeplo.tistory.com/173

import Foundation

func solution(_ bridge_length:Int, _ weight:Int, _ truck_weights:[Int]) -> Int {
    var trucks = truck_weights.map{ ($0, bridge_length) }   // 튜플 두번째 값은 다리의 길이(지나갈 거리)
    var bridge = [(Int, Int)]()                             // 큐의 형태로 다리를 구상
    var second = 0                                          // 결과값
    
    while(!trucks.isEmpty || !bridge.isEmpty) { // 다리를 지날 트럭이 남아있지 않고 다리위에 트럭이 남아있지 않을 때 종료
        for (i, v) in bridge.enumerated() {     // 다리에 있는 트럭들중 다리 길이 0까지 도달하면 다리에서 벗어남(제거)
            if v.1 == 0 {
                bridge.remove(at: i)
            }
        }
            
        if !trucks.isEmpty {                    // 다리를 지날 트럭이 남아있을 경우만 다리 함께 건널 수 있나 확인
            if (bridge.reduce(0){ $0 + $1.0 } + trucks.first!.0) <= weight { // 다리 위 트럭들 무게 + 추가 트럭무게
                bridge.append(trucks[0])
                trucks.remove(at: 0)
            }
        }
        
        bridge = bridge.map{ ($0.0, $0.1-1) }   // 다리 위 트럭들은 다리 길이의 1씩 이동
        
        second += 1                             // 1초 지남
    }
    
    return second
}

let bridge_length = 2
let weight = 10
let truck_weights = [7, 4, 5, 6]
// 8

//let bridge_length = 100
//let weight = 100
//let truck_weights = [10]
//// 101
//
//let bridge_length = 100
//let weight = 100
//let truck_weights = [10, 10, 10, 10, 10, 10, 10, 10, 10, 10]
// 110

print(solution(bridge_length, weight, truck_weights))
