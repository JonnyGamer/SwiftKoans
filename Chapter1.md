
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
⚠︎⚠︎⚠︎ Warnings?? ⚠︎⚠︎⚠︎

Our four basic warnings (Respective to our four basic types)
```swift
true     // ⚠︎ Boolean literal is unused
1        // ⚠︎ Integer literal is unused
1.0      // ⚠︎ Floating-point literal is unused
"hi"     // ⚠︎ String literal is unused
```


You can actually recieve 2 warnings from one line of code:
```
1000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000.0
// ⚠︎ '1000...000.0' overflows to inf during conversion to 'Double'
// ⚠︎ Floating-point literal is unused
```


How can we get rid of this warning?  
Or maybe... how will be *use* these values?

