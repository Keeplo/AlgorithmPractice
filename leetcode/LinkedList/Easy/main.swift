//
//  main.swift
//  Easy
//
//  Created by Yongwoo Marco since 2021/05/11.
//

// Definition for singly-linked list.
public class ListNode {
    public var val: Int
    public var next: ListNode?

    public init() {
        self.val = 0
        self.next = nil
    }
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }
}

public class LinkedList {
    public static func append(head: ListNode?, data: Int) -> ListNode? {
        if head == nil {
            return ListNode(data)
        }

        head?.next = append(head: head?.next, data: data)

        return head
    }
    public static func display(head: ListNode?) {
        if head != nil {
            print(head!.val, terminator: " ")

            display(head: head?.next)
        } else {
            print("/")
        }
    }
}
func getLinkedList(_ arr: [Int]) -> ListNode? {
    var head = ListNode(arr.first!)

    for i in 1..<arr.count {
        head = LinkedList.append(head: head, data: arr[i])!
    }

    return head
}
func getArray(_ head: ListNode?) -> [Int] {
    var current = head, arr = [Int]()
    
    while let next = current?.next {
        arr.append(current!.val)
        current = next
    }
    arr.append(current!.val)
    return arr
}

// MARK: --- 21.05.11
// 1290. Convert Binary Number in a Linked List to Integer
//func getDecimalValue(_ head: ListNode?) -> Int {
//    var current = head, arr = [Int]()
//
//    while let next = current?.next {
//        arr.append(current!.val)
//        current = next
//    }
//    arr.append(current!.val)
//
//    return Int(arr.map({String($0)}).joined(), radix: 2)!
//}
//print(getDecimalValue(getLinkedList([1, 0, 1])))   // 5
//print(getDecimalValue(getLinkedList([0])))   // 0
//print(getDecimalValue(getLinkedList([1])))  // 1
//print(getDecimalValue(getLinkedList([1,0,0,1,0,0,1,1,1,0,0,0,0,0,0])))  // 18880
//print(getDecimalValue(getLinkedList([0,0])))  // 0
extension ListNode {
    func getDecimalValue(_ head: ListNode?) -> Int {
        var result: Int = 0
        var curNode: ListNode? = head
        while curNode != nil {
            result = (result << 1) | curNode!.val
            curNode = curNode!.next
        }
        return result
    }
}


// 876. Middle of the Linked List
//func getNode(_ head: ListNode?, _ depth: Int) -> ListNode? {
//    var current = head
//
//    for _ in 0..<depth {
//        if let next = current?.next {
//            current = next
//        } else {
//            return current
//        }
//    }
//    return current
//}
//func getDepth(_ head: ListNode?) -> Int {
//    var depth = 1, current = head
//
//    while let next = current?.next {
//        current = next
//        depth += 1
//    }
//
//    return depth/2
//}
//func middleNode(_ head: ListNode?) -> ListNode? {
//    return getNode(head, getDepth(head))
//}
//print(middleNode(getLinkedList([1,2,3,4,5]))) //
//print(middleNode(getLinkedList([1,2,3,4,5,6]))) //
extension ListNode {
    func middleNode(_ head: ListNode?) -> ListNode? {
        guard head != nil else { return nil }
        
        var slow = head
        var fast = head
        
        while fast != nil && fast!.next != nil {
            slow = slow!.next
            fast = fast!.next!.next
        }
        
        // when fast has reached end of list, slow will be at halfway point because it's moved 1/2 as far
        return slow
    }
}

// MARK: --- 21.05.14
// 237. Delete Node in a Linked List
extension ListNode {
    func deleteNode(_ node: ListNode?) {
        guard let nextNode = node?.next else { return }

        node?.val = nextNode.val
        node?.next = nextNode.next
    }
}

// 206. Reverse Linked List
extension ListNode {
    func reverseList(_ head: ListNode?) -> ListNode? {
        return reverseListInternal(head, nil)
      }
    
    func reverseListInternal(_ current: ListNode?, _ previous: ListNode?) -> ListNode? {
        if current == nil { return previous }
        
        let next = current!.next
        current!.next = previous
        
        return reverseListInternal(next, current)
    }
}

// 
