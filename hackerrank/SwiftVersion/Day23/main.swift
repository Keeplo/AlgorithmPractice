//
//  main.swift
//  Day23
//
//  Created by Yongwoo Marco on 2020/08/02.
//  Copyright © 2020 Yongwoo Marco Kim. All rights reserved.
//

// Start of Node class
class Node {
    var data: Int
    var left: Node?
    var right: Node?

    init(d : Int) {
        data  = d
    }
} // End of Node class

// Start of Tree class
class Tree {
    func insert(root: Node?, data: Int) -> Node? {
        if root == nil {
            return Node(d: data)
        }

        if data <= (root?.data)! {
            root?.left = insert(root: root?.left, data: data)
        } else {
            root?.right = insert(root: root?.right, data: data)
        }

        return root
    }

    func levelOrder(root: Node?) -> Void {
        var queue = [Node]()
        queue.insert(root!, at: 0)
        
        while(!queue.isEmpty) {
            var current: Node?
            
            current = queue[0]
            queue.remove(at: 0)
            if let printData = current?.data {
                print(printData, terminator: " ")
            }
        
            if(current?.left  != nil) { queue.append((current?.left)!) }
            if(current?.right != nil) { queue.append((current?.right)!) }
        }
    } // End of levelOrder function


} // End of Tree class

var root: Node?
let tree = Tree()

let t = Int(readLine()!)!

for _ in 0..<t {
    root = tree.insert(root: root, data: Int(readLine()!)!)
}

tree.levelOrder(root: root)
