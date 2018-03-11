//
//  ViewController.swift
//  Haptic iOS App
//
//  Created by Alan Kantz on 3/10/18.
//  Copyright © 2018 Alan Kantz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    var hapticEngine = HapticsEngine()
    
    @IBAction func testButton(_ sender: UIButton) {
        hapticEngine.feedbackHandler()
    }
    func testTouch(_ sender: UIButton) {
        hapticEngine.feedbackHandler()
    }
    
}

