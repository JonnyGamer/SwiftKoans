# SwiftKoans
Swift Koans for Learning Swift


# Functional Oriented Programming

### Lesson 1

Step 1 - Function Reference
```swift
let foo = print
foo("Hello World!")
```

Step 2 - Explicit Type of Basic Function
```swift
func a() { print("Hello World!") }
let foo: () -> () = a
foo()
```

Step 3 - Create a Basic Closure
```swift
let foo: () -> () = { print("Hello World!") }
foo()
```

Step 4 - Variable Function Reference
```swift
var foo: () -> () = {}
foo()
foo = { print("Hello World!") }
foo()
```

### Lesson 2 - Closure Parameters/Return Types

Step 1 - Anonymous Parameter
```swift
let foo: (Int) -> () = { print($0) }
foo(1)
foo(2)
```

Step 2 - Multiple Anonymous Parameters
```swift
let foo: (Int, Int, Int, Int, Int) -> () = { print($0, $1, $2, $3, $4) }
foo(10, 2, 5, 5, -1)
```

Step 3 - Not Anonymous Parameter
```swift
let foo: (Int) -> () = { wow in
    print(wow) 
}
foo(1)
```

Step 4 - Multiple Not Anonymous Parameters
```swift
let foo: (Int, Int, Int) -> () = { a, b, c in
    print(a, b, c) 
}
foo(0, 0, 0)
```
Step 5 - Ignored Anonymous Parameter
```swift
let _: (Int) -> () = { _ in }
let _: (Int, Int, Int) -> () = { _, _, _ in }
let _: (Int, Int, Int) -> () = { a, _, _ in }
```

Step 6 - Closure Return Types
```swift
let increment: (Int) -> Int = { return $0 + 1 }
print(increment(1))
```

### Lesson 3 - Closure *as* Parameters/Return Types

Step 1 - Basic Closure as a Parameter
```swift
func foo(closure: () -> ()) {
    closure()   
}

foo(closure: { print("Hello World!") })
foo { print("Hello World!") }
```

Step 2 - Super Cool Closure Syntax...
```swift
func foo(a: Int, b: Int, closure: () -> ()) {
    closure()
}

foo(a: 1, b: 1, closure: { print("Hello World!") })
foo(a: 1, b: 1) { print("Hello World!") }
```

Step 3 - Multiple Trailing Closures
```swift
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
```

Step 4 - Closure as Return Type
```swift
func foo() -> () -> () {
    return { print("Hello World!") }
}

foo()()
```

### Lesson 4 - Advanced Closure Types



(Closure as Parameter)
(Closure(s) as Final Parameter(s))
(Closure as return type) `foo()()`
(Closure inside tuple? (Int, () -> ())) hmmm??? `(1) { print("WO") }` (tuple.1())
- what type is `() -> () -> ()` and `(() -> ()) -> ()`
