//
//  GameViewController.swift
//  Hello World
//
//  Created by Anthony Zhang on 2020/1/18.
//  Copyright © 2020 Anthony Zhang. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
//            if let scene = SKScene(fileNamed: "GameScene") {
//                // Set the scale mode to scale to fit the window
//                scene.scaleMode = .aspectFill
//                
//                // Present the scene
//                view.presentScene(scene)
//            }
            let scene = GameScene(size: self.view.bounds.size)
            scene.scaleMode = .aspectFill
            view.presentScene(scene)
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }
    
    /*
     是否允许自动旋转
    */
    override var shouldAutorotate: Bool {
        return true
    }
    
    /*
     支持自动旋转的方向,总共七种
    */
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .landscape
        } else {
            return .all
        }
    }

    /*
     状态栏是否隐藏
    */
    override var prefersStatusBarHidden: Bool {
        return true
    }
}
