//
//  MainVCCoordinator.swift
//  App
//
//  Created by Владимир on 30.04.2022.
//

import UIKit

protocol MainFlow  {
    func coordinateToSecondVC(model : Any?)
}

class MainVCCoordinator : MainFlow, Coordinator {
    
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
    
    func coordinateToSecondVC (model: Any?) {
        let secondCoordinator = SignInVCCoordinator(navigationController: navigationController)
        coordinate(to: secondCoordinator)
        
    }
    func coordinateToFirstVC () -> UIViewController {
        let view = MainVc()
        view.mainCoordinator = self
        return view
    }
    
}

