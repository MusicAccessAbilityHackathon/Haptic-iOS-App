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
}

extension EngineController: VCDelegate {
    func playButtonActivated(_ button: UIButton, vc: ViewController) {
        sound.play(.music)
        engine.feedbackHandler()
        button.isEnabled = false
    }
}
