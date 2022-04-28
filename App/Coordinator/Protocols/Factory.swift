//
//  ViewControllerFactory.swift
//  App
//
//  Created by Владимир on 28.04.2022.
//

import UIKit

protocol Factory {
    
    func createMainModule() -> UIViewController
    
    func createSignInModule() -> UIViewController
    
    func createSignUpModule() -> UIViewController
    
    func createProfileModule() -> UIViewController
    
    func createChatModule() -> UIViewController
    
    func createUsersModule() -> UIViewController
}

extension Factory {
    
    func createMainModule() -> UIViewController {
        let view = MainVc()
        return view
    }
    
    func createSignInModule() -> UIViewController {
        let view = SignInViewController()
        return view
    }
    
    func createSignUpModule() -> UIViewController {
        let view = SignUpViewController()
        return view
    }
    
    func createProfileModule() -> UIViewController {
        let view = ProfileViewController()
        return view
    }
    
    func createChatModule() -> UIViewController {
        let view = ChatViewController()
        return view
    }
    
    func createUsersModule() -> UIViewController {
        let view = UsersViewController()
        return view
    }
}
