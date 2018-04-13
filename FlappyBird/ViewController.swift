//
//  ViewController.swift
//  FlappyBird
//
//  Created by classtream on 2018/04/12.
//  Copyright © 2018年 ono. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // SKViewに型変換する
        let skView = self.view as! SKView
        
        // FPSを表示
        skView.showsFPS = true
        
        // ノードの数を表示
        skView.showsNodeCount = true
        
        // ビューと同じサイズでシーンを作成
        let scene = GameScene(size: skView.frame.size)
        
        // ビューにシーンを表示
        skView.presentScene(scene)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // ステータスバーを非表示
    override var prefersStatusBarHidden: Bool {
        get {
            return true
        }
    }
}

