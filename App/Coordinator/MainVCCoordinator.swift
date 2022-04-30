//
//  MainVCCoordinator.swift
//  App
//
//  Created by Владимир on 30.04.2022.
//

import UIKit

class MainVCCoordinator : Flow, Coordinator {
  
    var navigationController : UINavigationController?
    
    init(navigationController : UINavigationController?) {
        self.navigationController = navigationController
    }
    
    func start() {
        let mainVc = coordinateToFirstVC()
        if let navigationController = navigationController {
            navigationController.pushViewController(mainVc, animated: true)

        }
    }
    
    func coordinateToNewControler() {
        let secondCoordinator = SignInVCCoordinator(navigationController: navigationController)
        coordinate(to: secondCoordinator)
    }
    
//тут будет сборка MVVM модуля
    func coordinateToFirstVC () -> UIViewController {
        let view = MainVc()
        view.mainCoordinator = self
        return view
    }
    
}

