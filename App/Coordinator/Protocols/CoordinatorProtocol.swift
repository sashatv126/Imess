//
//  CoordinatorProtocol.swift
//  App
//
//  Created by Владимир on 27.04.2022.
//

import UIKit

protocol CoordinatorProtocol {
    var navigationController : UINavigationController? {get set}
    func start()
}
