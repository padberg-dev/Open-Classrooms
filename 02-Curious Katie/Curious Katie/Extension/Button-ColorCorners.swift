//
//  Button-ColorCorners.swift
//  Curious Katie
//
//  Created by Rafal Padberg on 08.11.18.
//  Copyright © 2018 Rafal Padberg. All rights reserved.
//

import UIKit

extension UIButton {
    func setUpButton() {
        let height = self.bounds.height
        self.roundCorners(corners: .allCorners, radius: height / 3)
        self.backgroundColor = UIColor.gray
    }
    
    func setUpGenerateAllButton() {
        let height = self.bounds.height
        self.roundCorners(corners: .allCorners, radius: height / 4)
        self.backgroundColor = customColorTheme.lightGray
        self.setTitleColor(customColorTheme.almostBlack, for: .normal)
    }
    
    func changeColors() {
        self.backgroundColor = customColorTheme.yellow
        self.titleLabel?.textColor = customColorTheme.almostBlack
    }
    
    func activateButton(goBack: Bool) {
        UIView.animate(withDuration: 0.3) {
            if goBack {
                self.changeColors()
            } else {
                self.backgroundColor = customColorTheme.darkGray
                self.setTitleColor(customColorTheme.lightGray, for: .normal)
            }
        }
    }
}
