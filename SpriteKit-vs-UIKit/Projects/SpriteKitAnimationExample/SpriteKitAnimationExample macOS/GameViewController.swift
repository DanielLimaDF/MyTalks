//
//  GameViewController.swift
//  SpriteKitAnimationExample macOS
//
//  Created by daniel.da.cunha.lima on 23/05/19.
//  Copyright © 2019 DanielLima. All rights reserved.
//

import Cocoa
import SpriteKit
import GameplayKit

class GameViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let scene = GameScene(size: self.view.frame.size)
        
        // Present the scene
        let skView = self.view as! SKView
        skView.presentScene(scene)
        
        skView.ignoresSiblingOrder = true
        
        skView.showsFPS = true
        skView.showsNodeCount = true
    }

}

