//
//  SignInVCCoordinator.swift
//  App
//
//  Created by Владимир on 30.04.2022.
//

import UIKit


class SignInVCCoordinator :  Coordinator {
    
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
    
   
    func coordinateToFirstVC () -> UIViewController {
        let view = SignInViewController()
        return view
    }
}
