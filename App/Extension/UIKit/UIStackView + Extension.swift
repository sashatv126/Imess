//
//  UIStackView + Extension.swift
//  App
//
//  Created by Владимир on 26.04.2022.
//

import UIKit

extension UIStackView {
    convenience init (arrangedSubviews : [UIView], axis : NSLayoutConstraint.Axis, spacing : CGFloat) {
        self.init(arrangedSubviews : arrangedSubviews)
        self.axis = axis
        self.spacing = spacing
    }
}
