//
//  TreeNode.swift
//  BinaryTree101
//
//  Created by Yongwoo Marco on 2021/05/18.
//

import Foundation
// Definition for a binary tree node.
public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    
    public init() {
        self.val = 0
        self.left = nil
        self.right = nil;
    }
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil;
    }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}
