//
//  ReactorWrapper.swift
//  SwiftKoans
//
//  Created by Jonathan Pappas on 6/22/21.
//

import Foundation
import SpriteKit

protocol Reactor {
    associatedtype Foo
    associatedtype Bar
    var reacting: (inout Foo, Bar) -> () { get }
}

@propertyWrapper struct React<T, U: Node<V>, V>: Reactor {
    var reacting: (inout T, U) -> ()
    var reactor: U!
    var val: T
    var wrappedValue: T {
        get {
            return val
        }
        set {
            val = newValue
            reacting(&val, reactor)
        }
    }
    init(wrappedValue: T, on: U.Type, doThisWhenChanged: @escaping (inout T, U) -> ()) {
        self.val = wrappedValue
        self.reacting = doThisWhenChanged
    }
}
