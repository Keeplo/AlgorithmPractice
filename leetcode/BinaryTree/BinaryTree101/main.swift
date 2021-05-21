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
// Maximum Depth of Binary Tree
func maxDepth(_ root: TreeNode?) -> Int {
    guard let r = root else { return 0 }
    
    let left = maxDepth(r.left)
    let right = maxDepth(r.right)
    
    return max(left, right) + 1
}

// Symmetric Tree
func isSymmetric(_ root: TreeNode?) -> Bool {
    guard let r = root else { return true }
    
    func isMirror(_ left: TreeNode?, _ right: TreeNode?) -> Bool {
        if left == nil && right == nil {
            return true
            
        } else if let r = right, let l = left {
            return r.val == l.val && isMirror(r.left, l.right) && isMirror(l.right, r.left)
        }
        
        return false
    }
    
    return isMirror(r, r)
}

// Path Sum
func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
    guard let r = root else { return false }
    
    if r.left == nil, r.right == nil {
        if targetSum - r.val == 0 {
            return true
        } else {
            return false
        }
    } else {
        return hasPathSum(r.left, targetSum - r.val) || hasPathSum(r.right, targetSum - r.val)
    }
}

// Construct Binary Tree from Inorder and Postorder Traversal
func buildTree(_ inorder: [Int], _ postorder: [Int]) -> TreeNode? {
    var inn = inorder, post = postorder
    
    // inOrder = [leftSub(I), root , rightSub(I)]
    // postOrder = [leftSub(P), rightSub(P), root ]
    
    // leftSubTree = buildTree(leftSub(I), leftSub(P))
    // rightSubTree = buildTree(rightSub(I), rightSub(P))
    print("inn \(inn) post \(post)")
    if post.isEmpty {
        return nil
    } else {
        let root = TreeNode(post.removeLast(), nil, nil)
            
        let index = inn.firstIndex(of: root.val)!, next = inn.index(after: index)
            
        let inSubs = [Array(inn[inn.startIndex..<index]), Array(inn[next..<inn.endIndex])]
//        let postSubs = [Array(post[0..<post.index(post.startIndex, offsetBy: inSubs[0].count)]), Array(post[post.index(after: post.index(post.startIndex, offsetBy: inSubs[0].count-1))..<post.endIndex])]
        let postSubs = [Array(post)[0..<inSubs[0].count], Array(post)[inSubs[0].count..<post.endIndex]].map({ Array($0) })
        
        print("inSubs \(inSubs)")
        print("postSubs \(postSubs)")
        
        if inSubs.count > 0, postSubs.count > 0 {
            root.left = buildTree(inSubs[0], postSubs[0])
        }
        if inSubs.count > 1, postSubs.count > 1 {
            root.right = buildTree(inSubs[1], postSubs[1])
        }
            
        return root
    }
}
// buildTree([9,3,15,20,7], [9,15,7,20,3])

// 

