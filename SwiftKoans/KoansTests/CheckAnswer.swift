//
//  CheckAnswer.swift
//  KoansTests
//
//  Created by Jonathan Pappas on 7/5/21.
//

import XCTest

func checkAnswer(_ this: String) throws {
    let answers: [String: () throws -> ()] = [
        "test1()":{ try CheckAnswer().test1() },
        "test2()":{ try CheckAnswer().test2() }
    ]
    try answers[this]!()
    //try CheckAnswer().test1()
}

class CheckAnswer: XCTestCase {
    
    func test1() throws {
        print.answer("Hello World!")
        
        if !print.check() {
            throw "Something other than `Hello World!` was printed."
        }
    }
    
    func test2() throws {
        print.answer(1)
        
        if print.printed.equalTo([["1"]]) {
            throw "You printed the word \"1\" instead of the integer: 1"
        }
        
        if !print.check() {
            throw "Something other than `1` was printed."
        }
    }
}


