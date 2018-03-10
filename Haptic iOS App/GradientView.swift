//
//  GradientView.swift
//  Haptic iOS App
//
//  Created by Yuchen Zhong: https://stackoverflow.com/questions/23074539/programmatically-create-a-uiview-with-color-gradient Copyright the original creator.
//

import UIKit

class GradientView: UIView {
    override open class var layerClass: AnyClass {
        return CAGradientLayer.classForCoder()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let gradientLayer = layer as! CAGradientLayer
        gradientLayer.colors = [UIColor.orange.cgColor, UIColor.purple.cgColor]
    }
}
