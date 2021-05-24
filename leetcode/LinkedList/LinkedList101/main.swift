//
//  main.swift
//  LinkedList101
//
//  Created by Yongwoo Marco on 2021/05/24.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

// MARK: --- Singly Linked List
// Design Linked List
//class MyLinkedList {
//    var arr = [Int]()
//    /** Initialize your data structure here. */
//    init() {
//    }
//
//    /** Get the value of the index-th node in the linked list. If the index is invalid, return -1. */
//    func get(_ index: Int) -> Int {
//        if index < arr.count {
//            return arr[index]
//        } else {
//            return -1
//        }
//    }
//
//    /** Add a node of value val before the first element of the linked list. After the insertion, the new node will be the first node of the linked list. */
//    func addAtHead(_ val: Int) {
//        arr.insert(val, at: 0)
//    }
//
//    /** Append a node of value val to the last element of the linked list. */
//    func addAtTail(_ val: Int) {
//        arr.append(val)
//    }
//
//    /** Add a node of value val before the index-th node in the linked list. If index equals to the length of linked list, the node will be appended to the end of linked list. If index is greater than the length, the node will not be inserted. */
//    func addAtIndex(_ index: Int, _ val: Int) {
//        if index == arr.count {
//            arr.append(val)
//        } else if index < arr.count {
//            arr.insert(val, at: index)
//        }
//    }
//
//    /** Delete the index-th node in the linked list, if the index is valid. */
//    func deleteAtIndex(_ index: Int) {
//        if index < arr.count {
//            arr.remove(at: index)
//        }
//    }
//}
//
//let myLinkedList = MyLinkedList()
//
//myLinkedList.addAtHead(1);
//myLinkedList.addAtTail(3);
//print(myLinkedList.arr)
//myLinkedList.addAtIndex(1, 2);    // linked list becomes 1->2->3
//print(myLinkedList.get(1))              // return 2
//print(myLinkedList.arr)
//myLinkedList.deleteAtIndex(1);    // now the linked list is 1->3
//print(myLinkedList.get(1))              // return 3

// MARK: --- Two Pointer Technique
// Linked List Cycle
func hasCycle(_ head: ListNode?) -> Bool {
    
}
