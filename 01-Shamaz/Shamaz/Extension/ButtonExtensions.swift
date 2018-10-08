//
//  Extensions.swift
//  Shamaz
//
//  Created by Rafal Padberg on 08.10.18.
//  Copyright © 2018 Rafal Padberg. All rights reserved.
//

import UIKit

extension UIButton
{
    func setGreenButtons() {
        self.setCustomCorners()
        self.setCustomColors()
    }
    
    func setOrangeButtons() {
        self.setCustomCorners2()
        self.setCustomColors2()
    }
    
    func setCustomColors() {
        self.backgroundColor = ColorTheme.navigationColor
        self.tintColor = ColorTheme.secondaryTextColor
    }
    
    func setCustomCorners() {
        self.layer.cornerRadius = self.frame.height / 3
    }
    
    func setCustomColors2() {
        self.backgroundColor = ColorTheme.buttonColor
        self.tintColor = ColorTheme.mainTextColor
    }
    
    func setCustomCorners2() {
        self.roundCorners(corners: [.bottomLeft, .bottomRight], radius: self.frame.height / 3)
    }
    
    func roundCorners(corners: UIRectCorner, radius: CGFloat){
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
}