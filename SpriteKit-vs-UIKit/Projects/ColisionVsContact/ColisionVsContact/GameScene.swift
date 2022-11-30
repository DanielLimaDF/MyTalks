//
//  GameScene.swift
//  ColisionVsContact
//
//  Created by Daniel Lima on 22/11/19.
//  Copyright © 2019 Daniel Lima. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    let ballRadius: CGFloat
    let redBall: SKShapeNode
    let blueBall: SKShapeNode
    var splinePoints: [CGPoint]
    let ground: SKShapeNode
    var eventCount = 0
    
    override init(size: CGSize) {
        
        ballRadius = 20
        redBall = SKShapeNode(circleOfRadius: ballRadius)
        blueBall = SKShapeNode(circleOfRadius: ballRadius)
        
        splinePoints = [
            CGPoint(x: 0, y: 300),
            CGPoint(x: 100, y: 50),
            CGPoint(x: 400, y: 110),
            CGPoint(x: 640, y: 20)
        ]
        
        ground = SKShapeNode(splinePoints: &splinePoints, count: splinePoints.count)
        
        super.init(size: size)
        
        setupGeneralElements()
        
        addChild(redBall)
        addChild(blueBall)
        addChild(ground)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupGeneralElements() {
        redBall.fillColor = .red
        redBall.position = CGPoint(x: 80, y: 320)
        
        blueBall.fillColor = .blue
        blueBall.position = CGPoint(x: 360, y: 320)
        
        ground.physicsBody = SKPhysicsBody(edgeChainFrom: ground.path!)
        ground.physicsBody?.restitution = 0.75
        ground.physicsBody?.categoryBitMask = 0b0001
    }
    
    func setupBlueBallPhysics() {
        blueBall.physicsBody = SKPhysicsBody(circleOfRadius: ballRadius)
        blueBall.physicsBody?.collisionBitMask = 0b0010
    }
    
    func setupRedBallPhysics() {
        redBall.physicsBody = SKPhysicsBody(circleOfRadius: ballRadius)
        redBall.physicsBody?.collisionBitMask = 0b0001
    }
    
    override func mouseDown(with event: NSEvent) {
        if(eventCount == 0){
            eventCount = 1
            setupBlueBallPhysics()
        }else{
            if(eventCount == 1){
                setupRedBallPhysics()
            }
        }
    }
    
}
