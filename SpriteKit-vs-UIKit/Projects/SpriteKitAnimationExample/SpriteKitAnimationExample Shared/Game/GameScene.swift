//
//  GameScene.swift
//  SpriteKitAnimationExample Shared
//
//  Created by daniel.da.cunha.lima on 23/05/19.
//  Copyright © 2019 DanielLima. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    
    var gameLayer:GameLayer
    
    override init(size: CGSize) {
        gameLayer = GameLayer(sceneSize: size)
        super.init(size: size)
    }
    
    override func didMove(to view: SKView) {
        super.didMove(to: view)
        
        addChild(gameLayer)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
