//
//  Coordinator.swift
//  App
//
//  Created by Владимир on 27.04.2022.
//

import UIKit

class AppCoordinator : Coordinator {
    
    let window : UIWindow?
    
    init(window : UIWindow?) {
        self.window = window
    }
    
    func start() {
        let navigationController = UINavigationController()
        let mainVCCoordinatorController = MainVCCoordinator(navigationController : navigationController)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        coordinate(to: mainVCCoordinatorController)
    }
}

