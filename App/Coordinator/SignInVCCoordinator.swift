//
//  SignInVCCoordinator.swift
//  App
//
//  Created by Владимир on 30.04.2022.
//

import UIKit

class SignInVCCoordinator :  Flow,Coordinator {
    
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
        let secondCoordinator = SignUpVCCoordinator(navigationController: navigationController)
        coordinate(to: secondCoordinator)
    }
    
    func coordinateWithModel(model: Any) {
        let secondCoordinator = ChatVCCoordinator(navigationController: navigationController)
        coordinate(to: secondCoordinator)
        print(model)
    }
//тут будет сборка MVVM модуля
    func coordinateToFirstVC () -> UIViewController {
        let view = SignInViewController()
        view.signInCoordinator = self
        return view
    }
}
