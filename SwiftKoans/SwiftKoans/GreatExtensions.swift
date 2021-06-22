//
//  GreatExtensions.swift
//  SwiftKoans
//
//  Created by Jonathan Pappas on 6/22/21.
//

import Foundation

extension Comparable {
    mutating func keepAbove(_ n: Self) {
        self = max(n, self)
    }
    mutating func keepBelow(_ n: Self) {
        self = min(n, self)
    }
    mutating func keepInside(_ n: ClosedRange<Self>) {
        self.keepAbove(n.lowerBound)
        self.keepBelow(n.upperBound)
    }
}

extension CGPoint {
    static func +(lhs: Self, rhs: CGVector) -> Self {
        return .init(x: lhs.x + rhs.dx, y: lhs.y + rhs.dy)
    }
    static func +=(lhs: inout Self, rhs: CGVector) {
        lhs = lhs + rhs
    }
}
