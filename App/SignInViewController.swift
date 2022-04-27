//
//  SignInViewController.swift
//  App
//
//  Created by Владимир on 27.04.2022.
//

import UIKit

class SignInViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
import SwiftUI

struct SignInView : PreviewProvider {
    static var previews: some View {
        ContainerView().previewDevice("iPhone 12").edgesIgnoringSafeArea(.all)
    }
    struct ContainerView : UIViewControllerRepresentable {
        
        typealias UIViewControllerType = SignInViewController
        
        func makeUIViewController(context: Self.Context) -> Self.UIViewControllerType {
            return SignInViewController()
        }
        
        func updateUIViewController(_ uiViewController: SignInViewController, context: UIViewControllerRepresentableContext<SignInView.ContainerView>) {
        }
    }
}
