//
//  main.swift
//  Day22
//
//  Created by Yongwoo Marco on 2020/08/01.
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

    func getHeight(root: Node?) -> Int {
        var count = 0;
        if((root?.right != nil) || (root?.left != nil)) {
            var right=0, left=0
            if(root?.right != nil) { right = 1 + getHeight(root: root?.right) }
            if(root?.left != nil) { left = 1 + getHeight(root: root?.left) }
            
            count = (right>left) ? right : left
        } else {
            return 0
        }
        
        return count
    } // End of getHeight function


} // End of Tree class

var root: Node?
let tree = Tree()

let t = Int(readLine()!)!

for _ in 0..<t {
    root = tree.insert(root: root, data: Int(readLine()!)!)
}

print(tree.getHeight(root: root))
