//
//  main.swift
//  Day26
//
//  Created by Yongwoo Marco on 2020/08/06.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

var returnedDate = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var dueDate = readLine()!.components(separatedBy: " ").map{ Int($0)! }
var fine = 0

if(returnedDate[2]>dueDate[2]) { // 몇년 늦음
    fine += 10000
} else if(returnedDate[2]==dueDate[2]) {
    if(returnedDate[1]>dueDate[1]) {
        fine += abs(returnedDate[1]-dueDate[1])*500
    } else if(returnedDate[1]==dueDate[1]) {
        if(returnedDate[0]>dueDate[0]) {
            fine += abs(returnedDate[0]-dueDate[0])*15
        }
    }
}

print(fine)
