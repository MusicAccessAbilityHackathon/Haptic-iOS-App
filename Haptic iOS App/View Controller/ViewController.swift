//
//  ViewController.swift
//  Haptic iOS App
//
//  Created by Alan Kantz on 3/10/18.
//  Copyright © 2018 Alan Kantz. All rights reserved.
//

import UIKit

protocol VCDelegate {
    func playButtonActivated(_ button: UIButton, vc: ViewController)
}

class ViewController: UIViewController {
    
    // MARK: Dependencies
    
    private var delegate: VCDelegate!
    
    // MARK: Initializers
    
    static func instantiate(with delegate: VCDelegate) -> ViewController {
        let storyboard = UIStoryboard(name: "ViewController", bundle: Bundle.main)
        let vc = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        vc.delegate = delegate
        
        return vc
    }
    
    // MARK: Actions
    
    @IBAction func playButtonActivated(_ sender: Any) {
        delegate.playButtonActivated(playButton, vc: self)
    }
    
    // MARK: Properties
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var playButton: UIButton! {
        didSet {
            playButton.layer.cornerRadius = 8.0
            playButton.layer.borderWidth = 2.0
            playButton.layer.borderColor = UIColor.white.cgColor
        }
    }
}

