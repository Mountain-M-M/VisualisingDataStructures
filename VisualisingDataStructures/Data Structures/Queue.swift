//
//  Queue.swift
//  VisualisingDataStructures
//
//  Created by Matteo Mountain on 14/03/2023.
//

import Foundation

class Queue {
    
    var capacity: Int
    var queueArray: [Int]
    var head: Int
    var tail: Int
    
    init(capacity: Int) {
        self.capacity = capacity
        self.queueArray = Array(repeating: 0, count: capacity)
        self.head = 0
        self.tail = -1
    }
    
    func pop() {
        if head > tail {
            print("Queue Empty!")
        }
        else {
            head += 1
        }
    }
    
    func push(item: Int) {
        if tail >= capacity - 1 {
            print("Queue Full!")
        }
        else {
            tail += 1
            queueArray[tail] = item
        }
    }
    
    func outputQueue() -> [Int] {
        return queueArray
    }
    
    func peek() -> Int {
        return queueArray[head]
    }
}
