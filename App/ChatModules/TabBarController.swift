//
//  TabBarController.swift
//  App
//
//  Created by Владимир on 27.04.2022.
//

import UIKit

class TabBarController : UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let chatViewController = ChatViewComtroller()
        let usersViewController = UsersViewController()
            
        
        
        viewControllers = [
            chatViewController,
            usersViewController
        ]
    }
}
