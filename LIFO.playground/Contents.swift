//: Playground - noun: a place where people can play

import UIKit

// Stack - LIFO

public struct Stack<T> {
    fileprivate var array = [T]()
    public var isEmpty: Bool {
        return array.isEmpty
    }
    public var count: Int {
        return array.count
    }
    mutating public func push(_ element: T) {
        array.append(element)
    }
    mutating public func pop() -> T? {
        return array.popLast()
    }
    public var top: T? {
        return array.last
    }
}

var stack1 = Stack<Int>()
stack1.push(1)
stack1.push(2)
stack1.push(3)
stack1.push(4)
stack1.push(5)
print(stack1)

print("\n\(stack1)")
stack1.pop()
print("\(stack1)")
stack1.pop()
print(stack1)

print("\n\(stack1)")
print("top = \(stack1.top)")
print("count = \(stack1.count)")
print("isEmpty = \(stack1.isEmpty)")