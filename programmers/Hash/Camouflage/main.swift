//
//  main.swift
//  Camouflage
//
//  Created by Yongwoo Marco on 2021/02/15.
//

import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var counter = [String:Int]()
    
    for arr in clothes {
        print(arr[1])
        if counter.keys.contains(arr[1]) {
            counter[arr[1]]! += 1
        } else {
            counter.updateValue(1, forKey: arr[1])
        }
        print(counter)
    }
    
    return counter.reduce(1){ $0 * ($1.value + 1) } - 1
}


let clothes = [["yellow_hat", "headgear"], ["blue_sunglasses", "eyewear"], ["green_turban", "headgear"]]
//let clothes = [["crow_mask", "face"], ["blue_sunglasses", "face"], ["smoky_makeup", "face"]]

print(solution(clothes))
