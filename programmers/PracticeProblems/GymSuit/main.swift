//
//  main.swift
//  GymSuit
//
//  Created by Yongwoo Marco on 2020/08/25.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var students = [Int](repeating: 0, count: n)
    var r = reserve
    
    // 여분 가져왔는데 잃어버린 학생 제외하기
    let newLost = lost.filter({ (index: Int) -> Bool in
        if(r.contains(index)) {
            r = r.filter({ $0 != index })
            return false
        } else {
            return true
        }
    })
    
    // 잃어버린 학생 양옆에 여분있는지 확인
    for i in newLost {
        if(r.contains(i-1)) {           // -1 번 학생 여분 있음
            r = r.filter({ $0 != i-1 })
        } else if(r.contains(i+1)) {    // +1 번 학생 여분 있음
            r = r.filter({ $0 != i+1 })
        } else {                        // 여분있는 학생 옆에 없어서 참석 불가
            students[i-1] = -1
        }
    }
    
    return n+students.reduce(0){ $0+$1 }
}

let n = Int(readLine()!)
let lostArr = readLine()!.components(separatedBy: " ").map( {Int($0)!} )
let reserve = readLine()!.components(separatedBy: " ").map( {Int($0)!} )

print(solution(n!, lostArr, reserve))
