# Contents
Welcome to your first week of Swift Master Class!

Lesson 1 | Introduction to Types
:-- | :--
 1-0 | [Hello World](#chapter-0)
 1-1 | [Introduction to Types](#1-1-introduction-to-types)
 1-2 | [Booleans](#1-2-booleans)
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

```
Introduction to Swift Types
Swift is a 'Type Safe' language. This means numbers are always numbers, and words are always words.
If you have a value that is a number, you are not allowed to reassign it to a word.
What are the basic types in Swift?

The 4 Basic Swift Types
What are the basic types of the Swift Programming Language?
 • Bool (The Boolean)
 • Int (The Integer)
 • Double (The Double)
 • String (The String)
These are the basic types in Swift: the building blocks.
```

Swift is a *Type Safe* language.<br>
Numbers are <u>always</u> Numbers.<br>
Words are <u>always</u> Words.

**The 4 Types in Swift**  
Type Name | Example Values
:-- | --:
Bool | true, false
Int | 1, 2, 3, 4, -1
Double | 1.2, 3.14, 1.001
String | "hello"



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

```
1.1. The Bool
A Boolean is very simple: It is either true or false.
Here are some examples of uses for Bools.

a. Checking for Equality
What if I want to check if two things are equal to each other? You will use Bools:
 • true statement: 1 equals 1
 • false statement: 1 equals 2
 • true statement: "hello" equals "hello"
 • true statement: true equals true
 • false statement: true equals false
 • true statement: false equals false

b. Logical Statements
What if I want some code to run if something is true, but not do it if it's false? You will use Bools:
   if true {
      // run this code if true is true
   } else {
      // run this code if true is false
   }

c. Stump Me Challenges: The Bool
Determine if these statements are true or false:
 1• 100 equals 100
 2• true equals true equals true
 3• not true equals false
 4• 5 is less than 1
 5• 5 is less than 100 equals false
 6• true or false is true
 7• Jonathan Pappas is a cool dude
I've been silly and snuck in a couple new concepts in these challenges:
     'not', 'less than', 'or'
We will learn about these in later chapters. Give your best guess!
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
```
1.2. The Int
An Integer (aka Int) is a whole number. Here are some integers: 0, 1, 1000, 12345
An Integer cannot have a decimal value. 1.1111111 is not an Int.

a. Negative Int
Ints can also be negative. Just place a - sign in front of them.
-1, -32, -12345 are also all Integers.
You might see -0 every once in a while. It's a little special, so we will talk about it in Section 1.3. The Double.

The "-" prefix is not an operator. It has a few distinctions:
 • You are not allowed to do  -(5 + 7)

b. Max Int
Turns out, Swift has a Largest Number! If you try to add 1 to it, your code will crash. Why is this?

You've definitely heard of the old retro 80s games. You've probably heard of '8 bit pixel art' or '8 bit computer games'
One bit can be a 0 or a 1. This is binary.
Two bits is 10.
Three bits is 100.
8 Bits is 10000000 in binary. (or 256 in ordinary base 10) (or 2 to the power of 8) (aka 2⁸)
Computers in the 80s could only think of numbers up to 256. Anything higher, they would be maxed out.

Swift is a 64 bit language (mainly because apple computers run on 64 bit processors).
2⁶⁴ is a very large number in binary and base 10:
 • Base 2: 1000000000000000000000000000000000000000000000000000000000000000
 • Base 10: 9223372036854775807 (Actually, this is 2⁶⁴ ⁻ ¹ - 1)
    (9.2 quintillion)
Computers today can only think of numbers up to 2⁶⁴. Anything higher, they would be maxed out.

You might be wondering: Why can't they think any higher?
This a good question. In short, bigger numbers make computers slower.
Over time, we have been able to make bigger and bigger numbers because of our progressing technology.
Maybe by the time you are reading this, 1024 bit computers will be common. Or even quantum computers.

I've also hidden a little something from you:
Other programming languages (Python for example) can store numbers as big as you'd like!
There are pros and cons to languages, though.
 • Swift is a 'Type Safe' language, but has a limit to its numbers.
 • Python is not a 'Type Safe' language, but allows you to make massive numbers.
     • Python is not 'Type Safe' meaning you can turn a number into a word or whatever you like.
     • It's confusing and you have to keep track of everything perfectly.

You might be wondering: (Tell me secretly, is there a way to make larger numbers in Swift?)
Answer: Yes
I'll show you this later on. It's very secret, though.

c. Stump Me Challenges: The Int
Answer these truly stumping questions:
 1• Which ones are Ints?
   1, 0, 0.1, -1000, 100000000, 123.456, "hello", true
 2• Which is correct formatting in Swift?
     1,000   or   1000   (or both?)
 3• What is the smallest possible Int in Swift?
 4• What would the largest possible number be in a 1024 bit computer (in base 10)
 5• Is 10.0 an Int? It is equal to 10, right?
 6• What is (3 / 2)? Int style?? Remember, Ints always stay Ints.
 7• What is the Max Int written in English??
I've been silly and snuck in a couple new concepts in these challenges:
     'Double', 'String', 'Division'
We will learn about these in later chapters. Give your best guess!
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
```
1.3. The Double
Finally! We are ready to see some decimals.

a. The Decimal Point
Numbers like 0.00001, 1000.1, and 5.0 are all Doubles.
Here's an easy way to remember why a double is called a double: It's like two Ints separated by a "." decimal
Quite easy.

b. Int vs. Double: Showdown
Ok. The big question.
Why are there Ints and Doubles in the first place?
Why are they so very different?? Who did this to us?

Ints are friendly, they are good for counting with. They are absolute. You know what they are, and they won't secretly add themselves by 1.
Doubles are rickety and unbalanced. They are not what they seem. You will read why very shortly.

Remember: An Int is always an Int, and a Double is always a Double.
   • Dividing 2 Ints together always makes an Int. (3 / 2 can never be 1.5. It must be Int(1.5) which is 1)
   • Dividing 2 Doubles together always makes a Double.

c. Rounding down with Int
I have a double, and I want to turn it into an Int. How do I do it??
There's an easy way!!
Int(1.0) turns into 1
Int(1.1) turns into 1
Int(1.9999) turns into 1

Hold on.. 1.9999 turns into 1?? That just seems.. weird. It should be 2.
Think of Int like the floor function. It always rounds down.

d. The Downfall of Doubles
Unfortunately, Double is limited as well just like Int: it cannot give you infinitely many digits after the decimal.
Here's a quick example:
   2.0 / 3.0 = 0.6666666666666666
and then it stops.. Notice: it isn't exactly two thirds! How wonderful.

Let's try another:
   2.0 / 5.0 = 0.16 // (very good)

And we know that (2.0 / 5.0) * (2.0 / 5.0) == (4.0 / 25.0)
But Swift says that is false?? Huh?? What do you mean?? I did my math right!

Because...
(4.0 / 25.0) == 0.16
(2.0 / 5.0) * (2.0 / 5.0) == 0.16000000000000003

Hey wait.
What's that negligible 3 doing there all at the end.. WHYYYYY!!
to be continued..

e. Stump Me Challenges: The Double
Answer these truly stumping questions:
 1• What is the biggest Double you can get before overflow?
 2• What is the smallest Double you can get before underflow? (Greater than 0.0)
 3• Is -0 possible with Double?
 4• How to get infinity??
 5• In Swift, what is the smallest value of n in these expressions:
    a• 0.1^n == 0.0
    b• 0.5^n == 0.0
    c• 0.9^n == 0.0
    d• 0.99^n == 0.0
    e• 0.9999^n == 0.0
    f• 0.9999999999^n == 0.0
    g• 0.9999999999999999^n == 0.0
 6• Solve these problems?
    a• What is 10.0 / 0.0?
    b• What is -10.0 / 0.0?
 7• Solve ThesE problemos?
    a• What is 0.0 / 0.0?
     b• What is -1.0 ^ 0.5?
I've been silly and snuck in a couple difficult concepts.. Good Luck!
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
```
1.4. The String
We're done with Numbers, now it's time for letters and words!
 
a. Storing Text
How does one make a word in Swift after all??
It's super easy:
 "Hello"

You need those quotations ("s) surrounding your word. It tells Swift it's a String.
Now you can do many great things!
 "Hello, my name is Jonathan! I am pretty friendly with Strings"

b. Multiline String
You might have noticed, if you try to do this:

 "Hello this is the first line
  and this is the second line"

Swift doesn't really appreciate that. You must stay on the same line.
Here's a handy workaround, that Swift is ok with.

 """Line 1
 Line 2
 Line 3"""

You need to start and end your String with 3 quotations (""")
I don't recommend using that all of the time.

c. Meta Characters
Hmm. I have a challenge. How can I store multiple lines in one String, without using triple quotes?? Only single!
There is a way. And it's called..

Meta Characters (Beyond the regular characters you normally type) (spooky)
Meta Characters are super interesting. They are regular symbols that you type, but they have some secret intrinsic meaning. Woah!
Let's learn about this first Meta Character

\n
When you type \n in a String, it created a new line!

print("Sincerely,\n    Jonathan")
This would print:

 Sincerely,
     Jonathan

Hooray! That was cool. Are there any more??
Yes, there are quite a few more.

The "\" actually has special meaning. It tells Swift that the next character is special!!
That's why when you type "\n" the n stands for New line.

Here's another one:
"\t" this is a tab character. It's just like clicking the "tab" key on a keyboard!

print("Sincerely,\n\tJonathan")
This would print:

 Sincerely,
     Jonathan

Question: Is it possible to do "And Jonny said, "Hello there!"."? It's giving me an error.
If you want to add quotations in your text, you must use the backslash to remove it's special meaning like this: \"
Correct Version: "And Jonny said, \"Hello there!\"."

Hold on.. What if I want to put just a basic "\" in my String? It's giving me an error..
That's right, if you want to have a basic "\", you must type two of them: "\\"
The \ before the second \ cancels the backslash's secret power. Making it not a meta character anymore.
Hmm. A little confusing, but ok.

The backslash is very powerful. With it come some very important topics that we will discuss later:
 • String Interpolation - A tool that allows you to put non-String values inside your String.
 • Regular Expressions - A very powerful tool that checks if Strings follow a certain pattern.

d. Stump Me Challenges: The String
Answer these truly stumping questions:
 1• Count how many characters are in this String: "Hello, I am a funny String!"
 2• Count how many characters are in this String: "Hello,\nI am a funny String!"
 3• Count how many characters are in this String: "\\ hello string land \\"
 4• Is "0" equal to 0?
 5• Can you make a String with nothing in it??
 6• Is this a good String? 'Hello, single quote'
 7• What is a Zero Width Character??
I've been silly and snuck in a couple new concepts in these challenges:
     'String Length', 'Converting Ints to Strings', 'Unicode'
We will learn about these in later chapters. eheheh..
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

### Honors 1-5 Literals vs Initializers

---

```
Int() == 0
String() == ""
Double() == 0.0
Bool() == true
```

---

### Practicum 1-1 Welcome to Warnings

---

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



