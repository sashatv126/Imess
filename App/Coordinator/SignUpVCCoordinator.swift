//
//  SignUpVCCoordinator.swift
//  App
//
//  Created by Владимир on 30.04.2022.
//

import UIKit

class SignUpVCCoordinator :  Coordinator, Flow {
    
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
    
    func coordinateWithModel(model: Any) {
        let secondCoordinator = ProfileVCCoordinator(navigationController: navigationController)
        coordinate(to: secondCoordinator)
        print(model)
    }
    
    func dismiss() {
        navigationController?.popViewController(animated: true)
    }
//тут будет сборка MVVM модуля
    func coordinateToFirstVC () -> UIViewController {
        let view = SignUpViewController()
        view.signUpCoordinator = self
        return view
    }
}
