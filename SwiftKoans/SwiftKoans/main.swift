//
//  main.swift
//  SwiftKoans
//
//  Created by Jonathan Pappas on 6/17/21.
//

import Foundation

print("Hello, World!")
_ = Greatness()

FunctionalOrientedProgramming.Lesson4().step1()
FunctionalOrientedProgramming.Lesson4().step6()
FunctionalOrientedProgramming.Lesson4().step60()
FunctionalOrientedProgramming.Lesson4().step61()
Koans().letsBegin()


var foo = Node()
foo.position = .init(x: 1, y: 1)
foo.position = .init(x: -1, y: -1)
foo.position = .init(x: -1, y: -1)
foo.position = .init(x: -1, y: -1)
foo.position = .init(x: -1, y: -1)
foo.position = .init(x: 1001, y: 1001)
print(foo.position)

// Global `foo` works on this!
//var woo = 1
//let foo: () -> () = {
//    if woo != 10 {
//        foo()
//    }
//}
