//
//  Coordinator.swift
//  App
//
//  Created by Владимир on 27.04.2022.
//

import UIKit

final class AppCoordinator : CoordinatorProtocol{
    var isActive : Bool = false
    unowned var navigationController: UINavigationController?
    
    init(navigationController : UINavigationController?) {
        self.navigationController = navigationController
    }
    
    func start() {
        if isActive {
            showMainController()
        } else {
            showDetailController()
        }
    }
    private func showMainController() {
        
    }
    
    private func showDetailController() {
        
    }
    
}

