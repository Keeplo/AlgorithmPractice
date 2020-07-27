//
//  main.swift
//  Day15
//
//  Created by Yongwoo Marco on 2020/07/26.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

import Foundation

class Node {
    let data: Int
    var next: Node?

    init(data: Int) {
        self.data = data
    }
}

func insert(head: Node?, data: Int!) -> Node? {
    guard let h = head else { // else 는 head 가 nil 일 경우 let h는 Optional()이 아님.
        
        let newNode = Node(data: data)
        return newNode
    }
        var current = h
        while current.next != nil {
            current = current.next!
        }
        let newNode = Node(data: data)
        current.next = newNode
        return h
}

func display(head: Node?) {
    var current = head

    while current != nil {
        print(current!.data, terminator: " ")
        current = current!.next
    }
}

var head: Node?
let n: Int = Int(readLine()!)!

for _ in 0..<n {
    let element = Int(readLine()!)!
    head = insert(head: head, data: element)
}

display(head: head)
