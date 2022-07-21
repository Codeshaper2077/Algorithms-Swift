//: Playground - noun: a place where people can play

import UIKit

public struct Queue<T> {
    fileprivate var array = [T?]()
    fileprivate var head = 0
    public var count: Int {
        return array.count - head
    }
    public var isEmpty: Bool {
        return count == 0
    }
    public mutating func enqueue(_ element: T) {
        array.append(element)
    }
    public mutating func dequeue() -> T? {
        guard head < array.count, let element = array[head] else { return nil }
        
        array[head] = nil
        head += 1
        
        let percentage = Double(head) / Double(array.count)
        
        if array.count > 50 && percentage > 0.25 {
            array.removeFirst(head)
            head = 0
        }
        return element
    }
    
}

var queue1 = Queue<String>()

queue1.enqueue("Ada")
queue1.enqueue("Steve")
queue1.enqueue("Tim")
queue1.enqueue("Grace")
print(queue1)

queue1.dequeue()
print(queue1)
queue1.dequeue()
print(queue1)