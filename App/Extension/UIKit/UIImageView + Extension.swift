//
//  UIImageView + Extension.swift
//  App
//
//  Created by Владимир on 26.04.2022.
//

import Foundation
import UIKit
extension UIImageView {
    convenience init (image : UIImage?, contentMode : UIView.ContentMode) {
        self.init()
        self.image = image
        self.contentMode = contentMode
    }
}
