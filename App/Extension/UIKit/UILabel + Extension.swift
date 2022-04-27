//
//  UILabel + Extensiom.swift
//  App
//
//  Created by Владимир on 26.04.2022.
//

import Foundation
import UIKit
extension UILabel {
    convenience init (text : String?, font : UIFont? = .avenir20()) {
        self.init()
        self.font = font
        self.text = text
        textAlignment = .center
    }
}
