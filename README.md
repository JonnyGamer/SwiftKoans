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
let foo: (Int) -> () = { _ in  }
```

Step 6 - Closure Return Types
```swift
let increment: (Int) -> Int { return $0 + 1 }
print(foo(1))
```

### Lesson 3 - Closure *as* Parameters/Return Types

(Closure as Parameter)
(Closure(s) as Final Parameter(s))
(Closure as return type) `foo()()`
(Closure inside tuple? (Int, () -> ())) hmmm??? `(1) { print("WO") }` (tuple.1())
