//
//  Earth.swift
//  GravityField
//
//  Created by daniel.da.cunha.lima on 22/11/19.
//  Copyright © 2019 DanielLima. All rights reserved.
//

import SpriteKit

class Earth: SKSpriteNode {

    init() {
        let texture = SKTexture(imageNamed: "world")
        super.init(texture: texture, color: .clear, size: texture.size())
        setupPhysics()
        setupGravity()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupPhysics() {
        physicsBody = SKPhysicsBody(circleOfRadius: size.width/2)
        physicsBody?.categoryBitMask = PhysicsCategory.planet
        physicsBody?.mass = 10000
    }

    func setupGravity(){
        let gravity = SKFieldNode.radialGravityField()
        gravity.region = SKRegion(radius: 2000)
        gravity.strength = 9.8 //Sun 274
        gravity.categoryBitMask = PhysicsCategory.planet
        addChild(gravity)
    }

}
