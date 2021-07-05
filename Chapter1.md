
### Contents

Swift
- **Chapter 1.0** - Introduction to Types
- **Chapter 1.1** - Honors Lessons

Xcode
- **Chapter 1.2** - Hello Xcode
- **Chapter 1.2** - Welcome to Warnings
- **Chapter 1.3** - Errors (and the Fix button) build-time vs run-time

Projects
- **Chapter 1.4** - Printing!




# Hello, Xcode
Comments


# Welcome to Warnings

**⚠︎⚠︎⚠︎ Introduction ⚠︎⚠︎⚠︎**

Warnings will highlight a line of code as `yellow`  
Warnings only crop up when something unintended may take place.  
Fun Fact: You can still run your program, even if you have warnings!  
Typically, we try to fix warnings

---

**⚠︎⚠︎⚠︎ Your First Warning ⚠︎⚠︎⚠︎**

Here's some Swift code.  
You'll be surprised that there is a warning:

```swift
1        // ⚠︎ Integer literal is unused
```

What!? How does this have a warning?  
Do you think you can explain why?

---

**⚠︎⚠︎⚠︎ Four Basic Warnings ⚠︎⚠︎⚠︎**

```swift
true     // ⚠︎ Boolean literal is unused
1        // ⚠︎ Integer literal is unused
1.0      // ⚠︎ Floating-point literal is unused
"hi"     // ⚠︎ String literal is unused
```

Can you find the pattern?  
[Teacher: Explain a literal, Explain Floating-point]

---

**⚠︎⚠︎⚠︎ Slightly Different Warnings ⚠︎⚠︎⚠︎**

```swift
true          // ⚠︎ Boolean literal is unused
1             // ⚠︎ Integer literal is unused
1.0           // ⚠︎ Floating-point literal is unused
"hi"          // ⚠︎ String literal is unused
```

```swift
Bool()        // Result of 'Bool' initializer is unused
Int()         // Result of 'BinaryInteger' initializer is unused
Double()      // Result of 'Double' initializer is unused
String()      // Result of 'String' initializer is unused
```

```swift
Int.zero      // Expression of type 'Int' is unused
Double.pi     // Expression of type 'Double' is unused
```

```swift
Bool.random() // Result of call to 'random()' is unused
```


---

**⚠︎⚠︎⚠︎ Warning Challenges ⚠︎⚠︎⚠︎**

1. Can one line of code contain more than 1 warnings?
2. Can you find some other warnings?

---

**⚠︎⚠︎⚠︎ Warning Answers ⚠︎⚠︎⚠︎**

The Double Overflow Warning
```
1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000.0
// ⚠︎ '1000...000.0' overflows to inf during conversion to 'Double'
// ⚠︎ Floating-point literal is unused
```

The Double Underflow Warning
```
0.000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001
// ⚠︎ '0.000....0001' underflows and loses precision during conversion to 'Double'
// ⚠︎ Floating-point literal is unused
```

