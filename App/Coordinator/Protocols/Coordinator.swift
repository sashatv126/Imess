//
//  CoordinatorProtocol.swift
//  App
//
//  Created by Владимир on 27.04.2022.
//

import UIKit

protocol Coordinator{

    func start()
    
    func coordinate(to coordinator : Coordinator)
}

extension Coordinator {
    func coordinate(to coordinator : Coordinator) {
        coordinator.start()
    }
}
