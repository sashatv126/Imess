//
//  UIViewController + Extension.swift
//  App
//
//  Created by Владимир on 27.04.2022.
//

import UIKit

extension UIViewController {
   
    func showAlert (title: String, message: String? = nil) {
        let alert  = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default)
        alert.addAction(ok)
        present(alert,animated: true, completion: nil)
    }
}
