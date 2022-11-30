//
//  Chocolate.swift
//  MiniGame
//
//  Created by daniel.da.cunha.lima on 22/11/19.
//  Copyright © 2019 DanielLima. All rights reserved.
//

import SpriteKit

class Chocolate: SKSpriteNode {

    init(){
        let texture = SKTexture(imageNamed: "chocolate")
        super.init(texture: texture, color: .clear, size: texture.size())
        setScale(0.15)
        setupPhysics()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupPhysics() {
        physicsBody = SKPhysicsBody(circleOfRadius: size.width / 2)
        physicsBody?.categoryBitMask = PhysicsCategory.chocolate
        physicsBody?.contactTestBitMask = PhysicsCategory.dinossaur
    }

    func randomAnimation() {
        let move = SKAction.move(to: CGPoint(x: CGFloat.random(in: 50...750), y: CGFloat.random(in: 50...550)), duration: 0.2)
        run(move) {
            self.randomAnimation()
        }
    }

}
