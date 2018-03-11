//
//  HapticsEngine.swift
//  Haptic iOS App
//
//  Created by ASM on 3/10/18.
//  Copyright © 2018 Alan Kantz. All rights reserved.
//

import UIKit

class HapticsEngine {
    //Dummy values for proof of concept
    let beatDuration = 1000
    let songDuration = ((4 * 60) + 5) * 1000 //4'05 long song

    let lightFeedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    
    var timer: Timer?
    
    //Will need to take in relevant audio metadata (e.g. loudness peaks)
    func startFeedback() {
        lightFeedbackGenerator.prepare()
        
        let timeOfSongEnd = Date(timeIntervalSinceNow: TimeInterval(songDuration / 1000))
        timer = Timer.scheduledTimer(withTimeInterval: TimeInterval(beatDuration / 1000), repeats: true) { timer in
            guard Date() < timeOfSongEnd else {
                self.cancelFeedback()
                return
            }
            self.lightFeedbackGenerator.impactOccurred()
        }
    }
    
    func cancelFeedback() {
        timer?.invalidate()
        timer = nil
    }
    
    
    
    
}

