//
//  Stub.swift
//  Haptic iOS App
//
//  Created by Alan Kantz on 3/10/18.
//  Copyright © 2018 Alan Kantz. All rights reserved.
//

import UIKit

struct EngineController {
    let engine = HapticsEngine()
    let sound = SoundController()
    
    var isEnabled = true
}

extension EngineController: VCDelegate {
    mutating func playButtonActivated(_ button: UIButton, vc: ViewController) {
        switch isEnabled {
        case true:
            isEnabled = false
            button.setTitle("Stop", for: .normal)
            sound.play(.music)
            engine.startFeedback()
        case false:
            isEnabled = true
            button.setTitle("Play", for: .normal)
            sound.stop()
            engine.cancelFeedback()
        }
        
    }
}
