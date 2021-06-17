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

### Lesson 2

(Closure With Parameter)
(Closure With Return Type)
(Closure as Parameter)
(Closure(s) as Final Parameter(s))
(Closure as return type) `foo()()`
(Closure inside tuple? (Int, () -> ())) hmmm??? `(1) { print("WO") }` (tuple.1())
