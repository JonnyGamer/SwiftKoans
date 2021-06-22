//
//  KonesFromTheBeginning.swift
//  SwiftKoans
//
//  Created by Jonathan Pappas on 6/20/21.
//

import Foundation


struct Koans {
    
    func letsBegin() {
        //Print.silence()
        
        // This is a comment. It does not run code!
        // Welcome to Swift Koans!
        
        func soWeBegin(_ with: String) {
            print.empty()
            print.separator()
            print.empty()
            print(with)
            print.indent()
            print.list(.numbered(.saved))
        }
        
        soWeBegin("Lesson 1. Booleans")
        do {
            print(Bool())
            print(true)
            print(false)
            print(true == true)
            print(false == false)
            print(true == false)
            print(!true)
            print(!false)
            print(true == (true == true))
        }
        print.unindent()
        
        soWeBegin("Lesson 2. Integers")
        do {
            print(Int())
            print(0)
            print(1)
            print(1 + 2)
            print(100000)
            print(-1)
            print(-0)
            print(Int.max)
            print(Int.min)
            print.endList()
            print("Fancy Int Patterns")
            print.list(.numbered(.saved))
            print(-0)
            print(-000001)
            print(-0b111)
            print(-0b1000)
            print(-0b1000)
        }
        
        print.indent()
        print.list(.numbered(.one))
        print.unindent()
        
        
        
        
        
    }
    
    
}
