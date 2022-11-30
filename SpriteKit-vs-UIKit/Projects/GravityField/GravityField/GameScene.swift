//
//  GameScene.swift
//  GravityField
//
//  Created by daniel.da.cunha.lima on 22/11/19.
//  Copyright © 2019 DanielLima. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {

    let planet: Earth
    var asteroids: [Asteroid]

    override init(size: CGSize) {

        planet = Earth()
        asteroids = []

        super.init(size: size)
        addPlanet()
        addAsteroids()

        physicsWorld.gravity = CGVector(dx: 0, dy: 0)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func addPlanet() {
        planet.position = CGPoint(x: size.width/2, y: size.height/2)
        planet.setScale(0.5)
        addChild(planet)
    }

    func addAsteroids() {

        for index in 1...6 {

            let asteroid = Asteroid()
            asteroids.append(asteroid)

            if(index <= 3){
                asteroid.position = CGPoint(x: CGFloat.random(in: 50...250), y: CGFloat.random(in: 50...550))
            }else{
                asteroid.position = CGPoint(x: CGFloat.random(in: 750...750), y: CGFloat.random(in: 50...550))
            }

            asteroid.setScale(0.1)

            addChild(asteroid)

        }

    }

}
