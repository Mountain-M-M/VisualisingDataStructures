//
//  Queue.swift
//  VisualisingDataStructures
//
//  Created by Matteo Mountain on 14/03/2023.
//

import Foundation

struct Queue {
    
    var capacity: Int
    var queueArray: [Int]
    var head: Int
    var tail: Int
    var errorMessage: String
    
    init(capacity: Int) {
        self.capacity = capacity
        self.queueArray = Array(repeating: 0, count: capacity)
        self.head = 0
        self.tail = -1
        self.errorMessage = ""
    }
    
    mutating func pop() {
        if self.head >= self.capacity {
            self.errorMessage = "Queue Full"
        }
        
        else if self.tail > 1 && self.tail >= self.head {
            self.head += 1
        }
        
        else {
            self.errorMessage = "Queue Empty"
        }
    }
    
    mutating func push(item: Int) {
        if self.tail < self.capacity - 1{
            self.tail += 1
            self.queueArray[self.tail] = item
        }
        else{
            self.errorMessage = "Queue Full"
        }
    }
    
    func outputQueue() -> [Int] {
        return self.queueArray
    }
    
    func peek() -> Int {
        return self.queueArray[head]
    }
}
