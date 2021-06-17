# SwiftKoans
Swift Koans for Learning Swift


# Functional Oriented Programming

### Contents

- Lesson 1 - Function Reference
  1. Function Reference
  2. Explicit Type of Basic Function
  3. Create a Basic Closure
  4. Variable Function Reference  
- Lesson 2 - Closure Parameters/Return Types
  1. Anonymous Parameter
  2. Multiple Anonymous Parameters
  3. Not Anonymous Parameter
  4. Multiple Not Anonymous Parameters
  5. Ignored Anonymous Parameter
  6. Closure Return Types
- Lesson 3 - Closure *as* Parameters/Return Types
  1. Step 1 - Basic Closure as a Parameter
  2. Super Cool Closure Syntax...
  3. Multiple Trailing Closures
  4. Closure as Return Type
- Lesson 4 - Advanced Closure Types
  1. Confusing Syntax
  2. Confusing Syntax
  3. Tuples with Closure Elements

### Lesson 1 - Introduction

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

Step 1 - Confusing Syntax
```swift
// Are the following equivalent types?
// () -> () -> ()
// () -> (() -> ())
// Answer is... Yes.
assert("\((() -> () -> ()).self)" == "\((() -> (() -> ())).self)")
```
Step 2 - Confusing Syntax
```swift
let foo: (() -> ()) -> () = { $0() }
foo { print("Hello World!") }
foo { print("Goodbye World!") }
```

Step 3 - Tuples with Closure Elements
```swift
let foo: (Int, foo: () -> ()) = (1, { print("Hello World!") })
foo.1()
foo.foo()
```

Step 4 - Closure as Variadic Parameter
```swift
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
```

Step 5 - Closure with Variadic Parameter
```swift
let foo: (Int...) -> () = { (a: Int...) in print(a) }
foo(1, 2, 3, 4)
```
