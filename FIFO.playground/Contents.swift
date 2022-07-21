//: Playground - noun: a place where people can play

import UIKit

// Queue - FIFO

public struct Queue<T> {
    
    fileprivate var array = [T]()
    public var isEmpty: Bool {
        return array.isEmpty
    }
    public var count: Int {
        return array.count
    }
    mutating public func enqueue(_ element: T) {
        array.append(element)
    }
    
    mutating public func dequeue() -> T? {
        if isEmpty {
            return nil
        } else {
            return array.removeFirst()
        }
    }
    
    public var front: T? {
        return array.first
    }
    
}

var queue1 = Queue<Int>()
queue1.enqueue(1)
queue1.enqueue(2)
queue1.enqueue(3)
queue1.enqueue(4)
print(queue1)

queue1.dequeue()
print("\n\(queue1)")
queue1.dequeue()
print(queue1)
queue1.dequeue()
print(queue1)
queue1.dequeue()
print(queue1)

