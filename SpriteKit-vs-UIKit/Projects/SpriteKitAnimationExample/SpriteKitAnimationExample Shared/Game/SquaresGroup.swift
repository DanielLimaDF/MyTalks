//
//  SquaresGroup.swift
//  SpriteKitAnimationExample
//
//  Created by daniel.da.cunha.lima on 23/05/19.
//  Copyright © 2019 DanielLima. All rights reserved.
//

import SpriteKit

class SquaresGroup: SKSpriteNode {
    
    let square1: SKSpriteNode
    let square2: SKSpriteNode
    let square3: SKSpriteNode
    let square4: SKSpriteNode
    
    init(size: CGSize) {
        square1 = SKSpriteNode(texture: nil, color: SKColor.yellow, size: CGSize(width: 100, height: 100))
        square2 = SKSpriteNode(texture: nil, color: SKColor.yellow, size: CGSize(width: 100, height: 100))
        square3 = SKSpriteNode(texture: nil, color: SKColor.yellow, size: CGSize(width: 100, height: 100))
        square4 = SKSpriteNode(texture: nil, color: SKColor.yellow, size: CGSize(width: 100, height: 100))
        super.init(texture: nil, color: SKColor.clear, size: size)
        setupNode()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension SquaresGroup: NodeSetup{
    
    func configure() {
        
    }
    
    func buildViewHierarchy() {
        addChild(square1)
        addChild(square2)
        addChild(square3)
        addChild(square4)
    }
    
    func createAndStartAnimations() {
        
        let finalLeftPosition = CGPoint(x: (size.width/2 * -1) + (square1.size.width/2), y: 0)
        let finalRightPosition = CGPoint(x: (size.width/2) - (square1.size.width/2), y: 0)
        let finalTopPosition = CGPoint(x: 0, y: (size.height/2) - (square1.size.height/2))
        let finalBottomPosition = CGPoint(x: 0, y: (size.height/2 * -1) + (square1.size.height/2))
        
        let goRight = SKAction.move(to: finalRightPosition, duration: 1.5)
        let goLeft = SKAction.move(to: finalLeftPosition, duration: 1.5)
        let goUp = SKAction.move(to: finalTopPosition, duration: 1.5)
        let goDown = SKAction.move(to: finalBottomPosition, duration: 1.5)
        
        let goLeftAndRight = SKAction.sequence([goLeft, goRight])
        let goRightAndLeft = SKAction.sequence([goRight, goLeft])
        let gotUpAndDown = SKAction.sequence([goUp, goDown])
        let gotDownAndUp = SKAction.sequence([goDown, goUp])
        
        square1.run(SKAction.repeatForever(goLeftAndRight))
        square2.run(SKAction.repeatForever(goRightAndLeft))
        square3.run(SKAction.repeatForever(gotUpAndDown))
        square4.run(SKAction.repeatForever(gotDownAndUp))
        
        let rotateRight = SKAction.rotate(toAngle: -10, duration: 5)
        let rotateLeft = SKAction.rotate(toAngle: 0, duration: 5)
        let rotateFastRight = SKAction.rotate(toAngle: -45, duration: 5)
        let rotateFastLeft = SKAction.rotate(toAngle: 0, duration: 5)
        
        let sequence = SKAction.sequence([rotateRight, rotateLeft, rotateFastRight, rotateFastLeft])
        
        run(SKAction.repeatForever(sequence))
        
    }
    
}
