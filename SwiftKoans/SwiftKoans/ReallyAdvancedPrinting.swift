//
//  ReallyAdvancedPrinting.swift
//  SwiftKoans
//
//  Created by Jonathan Pappas on 6/20/21.
//

import Foundation




// Extensions...
class print {
    
    static var was: [print] = [print()]
    static var wasLast: print { return was.last! }
    
    init() {
        
    }
    
    @discardableResult
    init(_ this: Any) {
        Self.superPrint(this)
    }
    static func superPrint(_ this: Any) {
        let precede = String.init(repeating: "    ", count: print.wasLast.indentation)
        
        if silent {
            
        } else if let owo = wasLast._list {
            Swift.print(precede, owo.from(), " ", this, separator: "")
        } else {
            Swift.print(precede, this, separator: "")
        }
    }
    
    var indentation = 0
    
    static var silent = false
    static func silence() { silent = true }
    static func unsilence() { silent = false }
    
    var listNumberAt = 1
    enum ListType {
        case dash
        case bullet
        enum NumberedFrom {
            case one, zero, from(Int), saved
        }
        case numbered(NumberedFrom)
        
        func from() -> String {
            
            switch self {
            case .dash: return "-"
            case .bullet: return "•"
            case .numbered(_):
                defer { print.wasLast.listNumberAt += 1 }
                return "\(print.wasLast.listNumberAt)."
            }
        }
    }
    
    var _list: ListType?
    static func list(_ this: ListType) {
        wasLast._list = this
        switch this {
        case .numbered(let from):
            switch from {
            case .zero: wasLast.listNumberAt = 0
            case .one: wasLast.listNumberAt = 1
            case .from(let n): wasLast.listNumberAt = n
            case .saved: do{}
            }
        default: return
        }
    }
    static func endList() { wasLast._list = nil }
    static func empty() { print.init("") }
    static func separator() {
        Swift.print("––––––––––")
    }
    
    static func indent() {
        let newIndentAt = wasLast.indentation + 1
        was.append(print())
        wasLast.indentation = newIndentAt
    }
    static func unindent() {
        was.removeLast()
    }
    
}
