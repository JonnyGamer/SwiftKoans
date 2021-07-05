//
//  SETUP.swift
//  KoansTests
//
//  Created by Jonathan Pappas on 7/5/21.
//

import Foundation


extension String: Error {}
typealias PrintFunc = ([Any], String, String) -> ()
let printo = unsafeBitCast(Swift.print, to: PrintFunc.self)

extension Array where Element == Any {
    func equalTo(_ this: Self) -> Bool {
        guard count == this.count else { return false }
        for (i, j) in zip(self, this) {
            if "\(i)" == "\(j)", "\(type(of: i))" == "\(type(of: j))" {
            } else {
                return false
            }
        }
        return true
    }
}

extension Array where Element == [Any] {
    func equalTo(_ this: Self) -> Bool {
        guard count == this.count else { return false }
        for (i, j) in zip(self, this) {
            if !i.equalTo(j) {
                return false
            }
        }
        return true
    }
}


public struct print {
    static var printed: [[Any]] = []
    static var checkPrinted: [[Any]] = []
    
    @discardableResult init(_ items: Any...) {
        printo(items, " ", "\n")
        Self.printed.append(items)
    }
    static func answer(_ items: Any...) {
        //printo(items, " ", "\n")
        checkPrinted.append(items)
    }
    static func check() -> Bool {
        let foo = printed
        let bar = checkPrinted
        printed.removeAll()
        checkPrinted.removeAll()
        return (foo.equalTo(bar))
    }
}

