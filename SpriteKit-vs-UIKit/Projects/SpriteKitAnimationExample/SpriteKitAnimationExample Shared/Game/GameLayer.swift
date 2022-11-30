//
//  GameLayer.swift
//  SpriteKitAnimationExample
//
//  Created by daniel.da.cunha.lima on 23/05/19.
//  Copyright © 2019 DanielLima. All rights reserved.
//

import SpriteKit

class GameLayer: SKNode {
    
    let size: CGSize
    let squaresGroup: SquaresGroup
    
    init(sceneSize: CGSize) {
        size = sceneSize
        squaresGroup = SquaresGroup(size: size)
        super.init()
        setupNode()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func buildHierarchy(){
        
    }
    
}

extension GameLayer: NodeSetup {
    func configure() {
        squaresGroup.position = CGPoint(x: squaresGroup.size.width/2, y: squaresGroup.size.height/2)
    }
    
    func buildViewHierarchy() {
        addChild(squaresGroup)
    }
    
    func createAndStartAnimations() {
        
    }
}
