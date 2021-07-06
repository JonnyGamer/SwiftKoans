# Contents
Welcome to your first week of Swift Master Class!

Lesson 1 | Introduction to Types
:-- | :--
 1-0 | Hello World
 1-1 | Introduction to Chapter 1
 1-2 | Booleans
 1-3 | Integers
 1-4 | The Double
 1-5 | Strings
 
Honors | Introduction to Types
:-- | :--
 1-1 | Max Integer
 1-2 | The Downfall of Doubles
 1-3 | Infinity &c.
 1-4 | Meta Characters
 1-5 | Literals vs Initializers

Practicum | Hello Xcode
:-- | :--
 1-0 | Let's make a project
 1-1 | I have a comment
 1-2 | Welcome to Warnings
 1-3 | Errors

# Chapter 0
The Hello World Program

```
print("Hello World!")
```

Every good programming course starts with the `"Hello World"` program.

Why?

> While small test programs have existed since the development of programmable computers, the tradition of using the phrase "Hello, World!" as a test message was influenced by an example program in the seminal 1978 book *The C Programming Language*. The example program in that book prints "hello, world".

---

Q: What does the *Hello World* program do?  
A: It prints in the output panel: "Hello World!"

---

Q: What is `print`?  
A: print is a function. It prints something in the output panel. In our case, it prints "Hello World!"

---

Let's begin!

---

# Chapter 1

### 1-1 Introduction to Types

```
Overview
 ◊ Discuss type safety.
 ◊ Introduce the four basic types in Swift.
Keywords
 • Swift, Programming Language, Types, Type Safety
Objectives
 - Explain what type safety is.
 - Explain why you think statically typed programming languages are better.
 - Say the four basic types.
```

### 1-2 Booleans
```
Overview
 ◊ Discuss booleans.
 ◊ Discuss how to create a boolean.
 ◊ Discuss boolean expressions.
Keywords
 • Bool, boolean, true, false
Objectives
 - Explain the two possible states booleans can be.
 - Explain why and when booleans are used.
 - Evaluate boolean expressions on your own.
 - Create your own boolean expression.
```

### 1-3 Integers
```
Overview
 ◊ Discuss integers.
 ◊ Look at examples of whole numbers.
 ◊ Discuss negative numbers.
 ◊ Discuss signing versus subtraction.
Keywords
 • Int, Integer, Whole Number, Negative, Signing
Objectives
 - Create a whole number.
 - Create a negative number.
 - Explain the different between signing and subtraction.
```

### 1-5 The Double
```
Overview
 ◊ Discuss doubles.
 ◊ Look at examples of doubles.
 ◊ Discuss the different between integers and doubles.
 ◊ Discuss the reason why doubles are called doubles.
 ◊ Discuss how to turn a double into an integer, and vice versa.
Keywords
 • Double, Decimal Points, Converting from Type to Type
Objectives
 - Create a double.
 - Explain how to create a valid double.
 - Explain why Ints and Doubles are and should be different.
 - Convert a double into an integer, and vice versa.
```

### 1-6 Strings
```
Overview
 ◊ Discuss strings.
 ◊ Discuss how to create a string.
 ◊ Discuss why strings are called strings.
 ◊ Discuss using emojis inside strings.
 ◊ Discuss how to create a string across multiple lines.
 ◊ Discuss the empty string.
Keywords
 • String, word, quotations, ASKII, Unicode, emoji, Multiline String, Triple quotes, String count
Objectives
 - Create a string.
 - Create a multiline string.
 - Create an empty string.
```

---

### Honors 1-1 Max Integer
```
Overview
 ◊ Discuss infinity.
 ◊ Discuss the largest representable integer.
 ◊ Discuss how integers are represented under the hood.
 ◊ Discuss how to make large integers easier to read.
Keywords
 • Maximum, Infinity, Binary Numbers, bits, Base 10, Base 64, 9223372036854775807
Objectives
 - Explain why infinity is not an integer.
 - Explain the connection of binary numbers with integers.
 - Find the maximum integer.
 - Find the minimum integer.
 - Explain the rare technique that can make integers easier to read.
```

### Honors 1-2 The Downfall of Doubles
```
Overview
 ◊ Discuss unexpected situations when multiplying doubles.
 ◊ Discuss how doubles are represented under the hood.
 ◊ Discuss how "e" can be used with doubles.
 ◊ Discuss a double's magnitude.
 ◊ Discuss rounding errors with doubles.
Keywords
 • e, Magnitude
Objectives
 - Create a double using "e".
 - Explain why Doubles have rounding errors.
```

### Honors 1-3 Infinity &c.
```
Overview
 ◊ Discuss how to trigger an overflow.
 ◊ Discuss how to trigger an underflow.
 ◊ Discuss how to trigger nan.
 ◊ Discuss how to trigger -nan.
 ◊ Discuss an easy way to use pi.
 ◊ Discuss the difference of division by zero between integers and doubles.
Keywords
 • Overflow, Underflow, nan, pi
Objectives
 - Figure out a reason to use infinity.
 - Create pi.
```

### Honors 1-4 Meta Characters
```
Overview
 ◊ Introduce 8 meta characters.
 ◊ Discuss how to use a quotation inside of a string.
 ◊ Discuss the newline meta character.
 ◊ Discuss the tab meta character. Discuss how to create a tab inside of a string without touching the tab key.
 ◊ Discuss interpolation.
 ◊ Discuss hashtag delimiters.
 ◊ Discuss recursive hashtag delimiters.
Keywords
 • Meta Character, Double Quote, Single Quote, Backslash, newline, tab, interpolation, Hashtag delimiters
Objectives
 - Explain why words are different than numbers or booleans.
 - Explain why you would want a quotation inside your string.
 - Use a quotation inside of your string.
 - Use a meta character.
 - Create a multiline string using one line of code.
 - Add a tab inside of a string without clicking the tab key.
 - Insert something into your string using interpolation.
 - Explain when using a hashtag delimiter will make your string easier to read.
```

---

### Practicum 1-1 Welcome to Warnings

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



