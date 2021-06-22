//
//  FunctionalOrientedProgramming.swift
//  SwiftKoans
//
//  Created by Jonathan Pappas on 6/17/21.
//





struct FunctionalOrientedProgramming {
    
    struct Lesson1 {
        func step1() {
            //let foo = print.superPrint()
            //_ = foo("Hello World!")
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
            let foo: (Int, Int, Int, Int, Int) -> () = { Swift.print($0, $1, $2, $3, $4) }
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
                Swift.print(a, b, c)
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
        
        func step4() {
            func foo(variadic: () -> ()...) {}
            
            foo {
                print("Wo")
            } _: {
                print("Wo")
            } _: {
                print("Wo")
            } _: {
                print("Wo")
            }
        }
        
        func step5() {
            let foo: (Int...) -> () = { (a: Int...) in print(a) }
            foo(1, 2, 3, 4)
        }
        
        func step6() {
            let foo: () -> () = {}
            print(foo as AnyObject === foo as AnyObject)
        }
        
        func step50() {
            func foo() {}
            let bar: () -> () = {}
            print("\(type(of: foo))" == "\(type(of: bar)))")
        }
        
        func step60() {
            var bar: () -> () = {}
            do {
                var wow = 1
                func foo() {
                    wow += 1
                    print(wow)
                }
                bar = foo
            }
            bar()
            bar()
            bar()
        }
        
        func step61() {
            var bar: () -> Any = {return 0}
            
            // Magic as Struct
            do {
                struct Magic {}
                let wow = Magic()
                func foo() -> Magic {
                    return wow
                }
                bar = foo
            }
            print(bar())
            print(type(of: bar()))
            
            // Magic as Class
            // SwiftKoans.FunctionalOrientedProgramming.Lesson4.(unknown context at $100003be4).(unknown context at $100003cbc).Magic
            do {
                class Magic: wooo {}
                let wow = Magic()
                func foo() -> Magic {
                    return wow
                }
                bar = foo
            }
            print(bar())
            print(type(of: bar()))
            print((bar() as! wooo).woo())
        }
        
        func step70() {
            // let foo: () -> () = { // ERROR: Closure captures 'foo' before it is declared
            //     foo()
            // }
            // foo()
        }
        
    }
    
}



protocol wooo {}
extension wooo { func woo() -> Int { return 1 } }


