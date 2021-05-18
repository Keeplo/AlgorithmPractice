//
//  main.swift
//  BinaryTree101
//
//  Created by Yongwoo Marco on 2021/05/18.
//

import Foundation

// MARK: --- Traverse A Tree
// Binary Tree Preorder Traversal
func preorderTraversal(_ root: TreeNode?) -> [Int] {
    var result = [Int]()
    if let r = root {
        result.append(r.val)
        if let left = r.left {
            let leftArr = preorderTraversal(left)
            _ = leftArr.map({ result.append($0) })
        }
        if let right = r.right {
            let rightArr = preorderTraversal(right)
            _ = rightArr.map({ result.append($0) })
        }
    }
    return result
}

// Binary Tree Inorder Traversal
func inorderTraversal(_ root: TreeNode?) -> [Int] {
    var result = [Int]()
    if let r = root {
        if let left = r.left {
            let leftArr = inorderTraversal(left)
            _ = leftArr.map({ result.append($0) })
        }
        result.append(r.val)
        if let right = r.right {
            let rightArr = inorderTraversal(right)
            _ = rightArr.map({ result.append($0) })
        }
    }
    return result
}

// Binary Tree Postorder Traversal
func postorderTraversal(_ root: TreeNode?) -> [Int] {
    var result = [Int]()
    if let r = root {
        if let left = r.left {
            let leftArr = postorderTraversal(left)
            _ = leftArr.map({ result.append($0) })
        }
        if let right = r.right {
            let rightArr = postorderTraversal(right)
            _ = rightArr.map({ result.append($0) })
        }
        result.append(r.val)
    }
    return result
}

// Binary Tree Level Order Traversal
func levelOrder(_ root: TreeNode?) -> [[Int]] {
    guard let r = root else { return [] }
    var result = [[Int]]()
    
    var level = [TreeNode?]()
    level.append(r)
    
    while !level.isEmpty {
        var nextLevels = [TreeNode?]()
        var values = [Int]()
        
        while level.count > 0 {
            if let currentLevel = level.removeFirst() {
                values.append(currentLevel.val)
                if let left = currentLevel.left { nextLevels.append(left) }
                if let right = currentLevel.right { nextLevels.append(right) }
            }
        }
        result.append(values)
        level = nextLevels
    }
    return result
}

// MARK: --- Solve Problems Recursively

