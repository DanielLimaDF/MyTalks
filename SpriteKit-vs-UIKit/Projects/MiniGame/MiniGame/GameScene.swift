//
//  GameScene.swift
//  MiniGame
//
//  Created by daniel.da.cunha.lima on 22/11/19.
//  Copyright © 2019 DanielLima. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {

    let chocolate: Chocolate
    let dinossaur: Dinossaur

    override init(size: CGSize) {

        chocolate = Chocolate()
        dinossaur = Dinossaur()

        super.init(size: size)
        setupPhysics()

        chocolate.position = CGPoint(x: size.width/2, y: size.height/2)
        dinossaur.position = CGPoint(x: 50, y: size.height/2)

        addChild(chocolate)
        addChild(dinossaur)

        //generateDinossaurs()

        physicsWorld.contactDelegate = self

    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func didMove(to view: SKView) {
        chocolate.randomAnimation()
        generateDinossaurs()
    }

    func setupPhysics(){
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
        physicsBody?.categoryBitMask = PhysicsCategory.edge
        physicsBody?.collisionBitMask = PhysicsCategory.chocolate | PhysicsCategory.dinossaur
    }

    func generateDinossaurs() {

        let spawnAction = SKAction.run({
            let newDino = Dinossaur()
            newDino.position = CGPoint(x: CGFloat.random(in: 50...750), y: CGFloat.random(in: 300...550))
            self.addChild(newDino)
        })

        let waitIntervalAction = SKAction.wait(forDuration: 0.3)
        let actionSequence = SKAction.sequence([spawnAction, waitIntervalAction])

        run(SKAction.repeat(actionSequence, count: 100))


    }

}

extension GameScene: SKPhysicsContactDelegate {

    func didBegin(_ contact: SKPhysicsContact) {

        switch (contact.bodyA.node, contact.bodyB.node) {
        case (is Chocolate, is Dinossaur):
            success()
        case (is Dinossaur, is Chocolate):
            success()
        default:
            break
        }

    }

    func success(){
        print("🦖🦖🦖🦖🦖🦖🦖🦖🦖🦖🦖🦖🦖")
    }

}
