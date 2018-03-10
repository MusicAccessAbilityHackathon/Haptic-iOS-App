//
//  AppDelegate.swift
//  Haptic iOS App
//
//  Created by Alan Kantz on 3/10/18.
//  Copyright © 2018 Alan Kantz. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let vc = ViewController.instantiate(with: Stub())
        window?.rootViewController = vc
        
        return true
    }
}
