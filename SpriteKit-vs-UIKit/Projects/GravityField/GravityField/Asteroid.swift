//
//  Asteroid.swift
//  GravityField
//
//  Created by daniel.da.cunha.lima on 22/11/19.
//  Copyright © 2019 DanielLima. All rights reserved.
//

import SpriteKit

class Asteroid: SKSpriteNode {

    init() {
        let texture = SKTexture(imageNamed: "asteroid")
        super.init(texture: texture, color: .clear, size: texture.size())
        setupPhysics()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupPhysics() {
        physicsBody = SKPhysicsBody(circleOfRadius: size.width/2)
        physicsBody?.fieldBitMask = PhysicsCategory.planet
        physicsBody?.categoryBitMask = PhysicsCategory.asteroid
        physicsBody?.collisionBitMask = PhysicsCategory.planet | PhysicsCategory.asteroid
        physicsBody?.mass = 10
    }

}
