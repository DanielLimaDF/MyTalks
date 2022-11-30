//
//  Dinossaur.swift
//  MiniGame
//
//  Created by daniel.da.cunha.lima on 22/11/19.
//  Copyright © 2019 DanielLima. All rights reserved.
//

import SpriteKit

class Dinossaur: SKSpriteNode {

    init(){
        let texture = SKTexture(imageNamed: "stegosaurus")
        super.init(texture: texture, color: .clear, size: texture.size())
        setScale(0.15)
        setupPhysics()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupPhysics() {
        physicsBody = SKPhysicsBody(circleOfRadius: size.width / 2)
        physicsBody?.categoryBitMask = PhysicsCategory.dinossaur
        physicsBody?.contactTestBitMask = PhysicsCategory.chocolate
    }

}
