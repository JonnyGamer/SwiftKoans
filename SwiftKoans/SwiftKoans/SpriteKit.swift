//
//  SpriteKit.swift
//  SwiftKoans
//
//  Created by Jonathan Pappas on 6/22/21.
//

import Foundation
import SpriteKit

//class _Node {}


//class Greatness {
//
//
//    var childrens: [Node<SKNode>] = []
//
//    let nodenode: Node = Node()
//        .then { (this: Node) in
//            print(this.position)
//
//            this.touchBegan = { this.pressed = true }
//            this.touchMoved = { vector in
//                if this.pressed {
//                    this.position += vector
//                }
//            }
//            this.touchEnded = { this.pressed = false }
//        }
//
//    func paint() {
//        addChild(nodenode.realNode)
//    }
//
//}




class Scene: Node<SKScene> {
    
    func add<T: SKNode>(_ a: Node<T>) {
        
    }
    
    var load: (Scene) -> () = { this in
        this.add(Sprite())
    }
    
    var update: (Scene) -> () = { this in
        print("foo")
    }
    
}



class Node<T: SKNode> {
    var realNode: T
    
    func then<T>(_ doThis: (T) -> ()) -> T {
        doThis(self as! T); return self as! T
    }
    
    func instantiateThings() {
        _position.reactor = self
        _alpha.reactor = self
        _name.reactor = self
        _parent.reactor = self
    }
    
    init(_ this: T = T.init()) {
        self.realNode = this
        instantiateThings()
    }
    
    var touchBegan: () -> () = {}
    var touchMoved: (CGVector) -> () = {_ in}
    var touchEnded: () -> () = {}
    var pressed: Bool = false
    
    @React(on: Node<T>.self, doThisWhenChanged: { parent, this in
        if let p = parent {
            this.realNode.removeFromParent()
            this.realNode.addChild(p.realNode)
            //this.realNode.move(toParent: p.realNode)
        } else {
            this.realNode.removeFromParent()
        }
        print("D")
    }) var parent: Node? = nil
    
    @React(on: Node<T>.self, doThisWhenChanged: { name, this in
        this.realNode.name = name
        print("C")
    }) var name: String? = nil
    
    @React(on: Node<T>.self, doThisWhenChanged: { alpha, this in
        alpha.keepInside(0.0...1)
        this.realNode.alpha = alpha
        print("B")
    }) var alpha: CGFloat = 1.0
    
    @React(on: Node<T>.self, doThisWhenChanged: { position, this in
        position.x.keepInside(0.0...100)
        position.y.keepInside(0.0...100)
        this.realNode.position = position
        print("A")
    }) var position: CGPoint = .zero
    
}

class Sprite: Node<SKSpriteNode> {
}


