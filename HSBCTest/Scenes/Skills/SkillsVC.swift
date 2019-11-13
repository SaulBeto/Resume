//
//  SkillsVC.swift
//  HSBCTest
//
//  Created by Saul Alberto Cortez Garcia on 11/11/19.
//  Copyright © 2019 Saul Cortez. All rights reserved.
//

import UIKit

class SkillsVC: UIViewController {
    
    //MARK: - Variables
    let particleEmitter  = CAEmitterLayer()

    
    //MARK: - ViewController Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        particleEmitter.removeFromSuperlayer()
        createParticles()

    }
    
    //MARK: - Funtions

    /**
      Create a particles that fall in to view like a snow effect.
      */
    func createParticles(){
        
        let cell = CAEmitterCell()
        cell.birthRate      = 2
        cell.lifetime       = 10.0
        cell.velocity       = 100
        cell.velocityRange  = 50
        cell.emissionLongitude = .pi
        cell.spinRange      = 5
        cell.scale          = 0.5
        cell.scaleRange     = 0.25
        cell.contents       = UIImage(named: "tools")?.cgImage
        
        particleEmitter.emitterPosition = CGPoint(x: view.frame.width / 2.0, y: -50)
        particleEmitter.emitterShape    = .line
        particleEmitter.emitterSize     = CGSize(width: view.frame.width, height: 1)
        particleEmitter.renderMode      = .additive
        particleEmitter.emitterCells    = [cell]
        
        view.layer.addSublayer(particleEmitter)
    }
}
