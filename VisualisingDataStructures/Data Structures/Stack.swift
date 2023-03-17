//
//  Stack.swift
//  VisualisingDataStructures
//
//  Created by Matteo Mountain on 14/03/2023.
//

import Foundation

struct Stack {
    
    var capacity: Int
    var stackArray: [Int]
    var tail: Int
    var errorMessage: String
    
    init(capacity: Int) {
        self.capacity = capacity
        self.stackArray = Array(repeating: 0, count: capacity)
        self.tail = -1
        self.errorMessage = ""
    }
    
    mutating func pop() {
        if self.tail <= -1 {
            self.errorMessage = "Stack Empty"
        }
        else {
            self.tail -= 1
            self.errorMessage = ""
        }
    }
    
    mutating func push(item: Int) {
        if self.tail >= self.capacity - 1 {
            self.errorMessage = "Stack Full"
        }
        else {
            self.tail += 1
            self.stackArray[self.tail] = item
            self.errorMessage = ""
        }
    }
    
    func outputStack() -> [Int] {
        return self.stackArray
    }
    
    func peek() -> Int {
        return self.stackArray[self.tail]
    }
}
