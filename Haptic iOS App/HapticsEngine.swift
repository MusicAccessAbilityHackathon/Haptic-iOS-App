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

    var lightFeedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    
    //Will need to take in relevant audio metadata (e.g. loudness peaks)
    func feedbackHandler() {
        lightFeedbackGenerator.prepare()
        
        let timeOfSongEnd = Date(timeIntervalSinceNow: TimeInterval(songDuration / 1000))
        Timer.scheduledTimer(withTimeInterval: TimeInterval(beatDuration / 1000), repeats: true) { timer in
            if Date() > timeOfSongEnd {
                timer.invalidate()
            }
            self.lightFeedbackGenerator.impactOccurred()
            print("beat")
        }
        lightFeedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    }
    
    func cancelFeedback() {
        lightFeedbackGenerator = UIImpactFeedbackGenerator(style: .heavy)
    }
    
    
    
    
}

