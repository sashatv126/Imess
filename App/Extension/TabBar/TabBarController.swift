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
            setController(viewController: chatViewController, image: #imageLiteral(resourceName: "Group")),
            setController(viewController: usersViewController, image: #imageLiteral(resourceName: "Vector"))
        ]
    }
    
    
    
    private func setController(viewController : UIViewController,image : UIImage?) -> UIViewController {
        
        viewController.tabBarItem.image = image

        return viewController
        
    }
}
