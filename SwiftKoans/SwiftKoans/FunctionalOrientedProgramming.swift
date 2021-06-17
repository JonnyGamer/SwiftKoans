//
//  FunctionalOrientedProgramming.swift
//  SwiftKoans
//
//  Created by Jonathan Pappas on 6/17/21.
//

// Extensions...
func print(_ this: Any) { Swift.print(this) }



struct FunctionalOrientedProgramming {
    
    struct Lesson1 {
        func step1() {
            let foo = print
            foo("Hello World!")
        }
        
        func step2() {
            func a() { print("Hello World!") }
            let foo: () -> () = a
            foo()
        }
        
        func step3() {
            let foo: () -> () = { print("Hello World!") }
            foo()
        }
        
        func step4() {
            var foo: () -> () = {}
            foo()
            foo = { print("Hello World!") }
            foo()
        }
    }
    
    struct Lesson2 {
        func step1() {
            let foo: (Int) -> () = { print($0) }
            foo(1)
            foo(2)
        }
        
        func step2() {
            let foo: (Int, Int, Int, Int, Int) -> () = { print($0, $1, $2, $3, $4) }
            foo(10, 2, 5, 5, -1)
        }
        
        func step3() {
            let foo: (Int) -> () = { wow in
                print(wow)
            }
            foo(1)
        }
        
        func step4() {
            let foo: (Int, Int, Int) -> () = { a, b, c in
                print(a, b, c)
            }
            foo(0, 0, 0)
        }
        
        func step5() {
            let _: (Int) -> () = { _ in }
            let _: (Int, Int, Int) -> () = { _, _, _ in }
            let _: (Int, Int, Int) -> () = { a, _, _ in }
        }
        
        func step6() {
            let increment: (Int) -> Int = { return $0 + 1 }
            print(increment(1))
        }
    }
    
    struct Lesson3 {
        func step1() {
            func foo(closure: () -> ()) {
                closure()
            }

            foo(closure: { print("Hello World!") })
            foo { print("Hello World!") }
        }
        
        func step2() {
            func foo(a: Int, b: Int, closure: () -> ()) {
                closure()
            }
            
            foo(a: 1, b: 1, closure: { print("Hello World!") })
            foo(a: 1, b: 1) { print("Hello World!") }
        }
        
        func step3() {
            func foo(c1: () -> (), a: Int, c2: () -> (), c3: () -> ()) {
                c1(); c2(); c3()
            }
            
            // Normal Way
            foo(c1: {
                print("One")
            }, a: 1, c2: {
                print("Two")
            }, c3: {
                print("Three")
            })
            
            // Fancy Way
            foo(c1: {
                print("One")
            }, a: 1) {
                print("Two")
            } c3: {
                print("Three")
            }

        }
        
        func step4() {
            func foo() -> () -> () {
                return { print("Hello World!") }
            }
            
            foo()()
        }
        
    }
    
    struct Lesson4 {
        func step1() {
            // Are the following equivalent types?
            // () -> () -> ()
            // () -> (() -> ())
            assert("\((() -> () -> ()).self)" == "\((() -> (() -> ())).self)")
        }
        
        func step2() {
            let foo: (() -> ()) -> () = { $0() }
            foo { print("Hello World!") }
            foo { print("Goodbye World!") }
        }
        
        func step3() {
            let foo: (Int, foo: () -> ()) = (1, { print("Wo") })
            foo.1()
            foo.foo()
        }
    }
    
}




