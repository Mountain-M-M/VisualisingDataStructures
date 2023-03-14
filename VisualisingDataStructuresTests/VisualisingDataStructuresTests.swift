//
//  VisualisingDataStructuresTests.swift
//  VisualisingDataStructuresTests
//
//  Created by Matteo Mountain on 14/03/2023.
//

import XCTest
@testable import VisualisingDataStructures

class VisualisingDataStructuresTests: XCTestCase {
    
    func testOutputStack() {
        
        var stack = Stack(capacity: 4)
        stack.push(item: 1)
        stack.push(item: 3)
        stack.push(item: 4)
        stack.push(item: 6)
        
        let expected = [1, 3, 4, 6]
        let result = stack.outputStack()
        
        XCTAssertEqual(expected, result)
        
    }
    
    func testPeekStack() {
        
        var stack = Stack(capacity: 3)
        stack.push(item: 3)
        stack.push(item: 4)
        stack.push(item: 6)
        
        let expected = 6
        let result = stack.peek()
        
        XCTAssertEqual(expected, result)
        
    }
    
    func testPushToFullStack() {
        
        var stack = Stack(capacity: 3)
        stack.push(item: 3)
        stack.push(item: 4)
        stack.push(item: 6)
        
        let expected = "Stack Full"
        let result = stack.push(item: 4)
        
        XCTAssertEqual(expected, result)
        
    }
    
    func testPopFromEmptyStack() {
        
        var stack = Stack(capacity: 3)
        
        let expected = "Stack Empty"
        let result = stack.pop()
        
        XCTAssertEqual(expected, result)
        
    }
    
}
