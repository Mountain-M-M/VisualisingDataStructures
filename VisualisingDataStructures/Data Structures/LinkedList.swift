//
//  LinkedList.swift
//  VisualisingDataStructures
//
//  Created by Matteo Mountain on 21/03/2023.
//

import Foundation

struct LinkedList {
    
    class Node {
        var value: Int
        var next: Node?
        
        init(value: Int, next: Node?) {
            self.value = value
            self.next = next
        }
    }
    
    var head: Node?
    var tail: Node?
    var count: Int
    
    init() {
        self.head = nil
        self.tail = nil
        self.count = 0
    }
    
    mutating func append(_ value: Int) {
        let newNode = Node(value: value, next: nil)
        
        if tail != nil {
            tail!.next = newNode
            tail = newNode
        } else {
            head = newNode
            tail = newNode
        }
        
        count += 1
    }
    
    mutating func removeLast() -> Int? {
        guard let head = self.head else {
            return nil
        }
        
        if head.next == nil {
            self.head = nil
            self.tail = nil
            count -= 1
            return head.value
        }
        
        var currentNode = head
        
        while currentNode.next?.next != nil {
            currentNode = currentNode.next!
        }
        
        let removedValue = currentNode.next!.value
        currentNode.next = nil
        tail = currentNode
        count -= 1
        
        return removedValue
    }
    
    func outputList() -> [Int] {
        var output: [Int] = []
        
        var currentNode = head
        
        while currentNode != nil {
            output.append(currentNode!.value)
            currentNode = currentNode!.next
        }
        
        return output
    }
    
    func peek() -> Int? {
        return tail?.value
    }
}
