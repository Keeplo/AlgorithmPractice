//
//  main.swift
//  SkillTree
//
//  Created by Yongwoo Marco on 2021/02/20.
//  Copyright © 2021 Yongwoo Marco Kim. All rights reserved.
//

// 스킬트리 (Summer/Winter Coding ~2018) Lv 2

// https://programmers.co.kr/learn/courses/30/lessons/49993
//

import Foundation

func solution(_ skill:String, _ skill_trees:[String]) -> Int {
    var result = 0
    
    for tree in skill_trees {
        var queue = tree.filter{ skill.contains( $0 ) }, rule = skill
        
        while queue.count > 0 {
            if rule.first! == queue.first! {
                rule.removeFirst()
                queue.removeFirst()
            } else {
                break
            }
        }
        if queue.count == 0 {
            result += 1
        }
    }
    
    return result
}

let skill = "CBD"
let skill_trees = ["BACDE", "CBADF", "AECB", "BDA"]

print(solution(skill, skill_trees))
