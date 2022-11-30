//
//  ViewController.swift
//  MiniGame
//
//  Created by daniel.da.cunha.lima on 22/11/19.
//  Copyright © 2019 DanielLima. All rights reserved.
//

import Cocoa
import SpriteKit
import GameplayKit

class ViewController: NSViewController {

    @IBOutlet var skView: SKView!

    override func viewDidLoad() {
        super.viewDidLoad()

        if let view = self.skView {

            let scene = GameScene(size: view.frame.size)

            scene.scaleMode = .aspectFill
            view.presentScene(scene)

            view.ignoresSiblingOrder = true

            view.showsFPS = true
            view.showsNodeCount = true
            view.showsPhysics = true
        }
    }
}
