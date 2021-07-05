
// // // // // // // // // // // //
//                               //
//    Welcome to Swift Koans     //
//      by Jonathan Pappas       //
//                               //
// // // // // // // // // // // //

import XCTest



class KoansTests: XCTestCase {
    
    func test1() throws {
        
        // Question 1
        // Make it so that `Hello World!` is printed.
        print("Hello, World?")
        
        try checkAnswer(#function)
    }
    
    func test2() throws {
        
        // Question 2
        // Make it so that `1` is printed
        print("1")
        
        try checkAnswer(#function)
    }
    
}
