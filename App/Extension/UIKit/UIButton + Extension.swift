//
//  UIButton + Extension.swift
//  App
//
//  Created by Владимир on 26.04.2022.
//

import Foundation
import UIKit
extension UIButton {
    convenience init(title : String?,
                     titleColor : UIColor,
                     backGroundColor : UIColor,
                     fornt : UIFont? = .avenir20(),
                     isShadow : Bool = false,
                     cornerRadus : CGFloat = 10) {
        self.init(type : .system)
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.backgroundColor = backGroundColor
        self.titleLabel?.font = fornt
        self.layer.cornerRadius = cornerRadus
        if isShadow {
            self.layer.shadowColor = UIColor.black.cgColor
            self.layer.shadowRadius = 4
            self.layer.shadowOpacity = 0.2
            self.layer.shadowOffset = CGSize(width: 0, height: 4)
        }
    }
    
    func addImageButton() {
        let logo = UIImageView(image: #imageLiteral(resourceName: "google"), contentMode: .scaleAspectFit)
        logo.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(logo)
        
        NSLayoutConstraint.activate([
            logo.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 24),
            logo.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            logo.heightAnchor.constraint(equalToConstant: 25),
            logo.widthAnchor.constraint(equalToConstant: 25)
        ])
       
    }
}
