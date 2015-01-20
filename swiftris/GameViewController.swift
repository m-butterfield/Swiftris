//
//  GameViewController.swift
//  swiftris
//
//  Created by Matthew Butterfield on 1/19/15.
//  Copyright (c) 2015 Matthew Butterfield. All rights reserved.
//

import UIKit
import SpriteKit

var scene: GameScene!

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Configure the view.
        let skView = view as SKView
        skView.multipleTouchEnabled = false

        // Create and configure the scene.
        scene = GameScene(size: skView.bounds.size)
        scene.scaleMode = .AspectFill

        // Present the scene.
        skView.presentScene(scene)
    }

    override func prefersStatusBarHidden() -> Bool {
        return true
    }
}
