
### Contents

Swift
- **Chapter 1.0** - Introduction to Types
- **Chapter 1.1** - Honors Lessons

Xcode
- **Chapter 1.2** - Hello Xcode
- **Chapter 1.2** - Welcome to Warnings
- **Chapter 1.3** - Errors (and the Fix button)

Projects
- **Chapter 1.4** - Printing!




# Hello, Xcode
Comments


# Welcome to Warnings

**⚠︎⚠︎⚠︎ Introduction ⚠︎⚠︎⚠︎**

Warnings will highlight a line of code as `yellow`  
Warnings only crop up when something unintended may take place.  
Fun Fact: You can still run your program, even if you have warnings!

---

**⚠︎⚠︎⚠︎ Your First Warning ⚠︎⚠︎⚠︎**

Here's some Swift code.  
You'll be surprised that there is a warning:

```
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

**⚠︎⚠︎⚠︎ Multiple Warnings ⚠︎⚠︎⚠︎**

You can actually recieve more that one warning from one line of code

2. The Double Overflow Warning
```
1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000.0
// ⚠︎ '1000...000.0' overflows to inf during conversion to 'Double'
// ⚠︎ Floating-point literal is unused
```

3. The Double Underflow Warning
```
0.000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000001
// ⚠︎ '0.000....0001' underflows and loses precision during conversion to 'Double'
// ⚠︎ Floating-point literal is unused
```






How can we get rid of this warning?  
Or maybe... how will be *use* these values?

