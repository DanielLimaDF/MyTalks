//
//  NodeSetup.swift
//  SpriteKitAnimationExample
//
//  Created by daniel.da.cunha.lima on 23/05/19.
//  Copyright © 2019 DanielLima. All rights reserved.
//

import Foundation

protocol NodeSetup {
    func configure()
    func buildViewHierarchy()
    func createAndStartAnimations()
}

extension NodeSetup {
    func setupNode() {
        configure()
        buildViewHierarchy()
        createAndStartAnimations()
    }
}
