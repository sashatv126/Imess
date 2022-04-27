//
//  SignUpViewController.swift
//  App
//
//  Created by Владимир on 26.04.2022.
//

import UIKit

class SignUpViewController: UIViewController {
    private let welcomeLabel = UILabel(text: "Good to see you", font: .avenir26())
    private let emailLabel = UILabel(text: "Email")
    private let passwordLabel = UILabel(text: "Password")
    private let confirmPasswordLabel = UILabel(text: "Confirm your password")
    private let signUpLabel = UILabel(text: "Already onboard?")
    
    private let emailTextField = OneLineTextField(font: .avenir20())
    private let password = OneLineTextField(font: .avenir20())
    private let confirmPassword = OneLineTextField(font: .avenir20())
    
    private let signUpButton = UIButton(title: "Sign up", titleColor: .white, backGroundColor: .buttonDark(), isShadow: true)
    private let loginButton = UIButton(title: "Login", titleColor: .systemBlue, backGroundColor: .white, isShadow: false)
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupConstraints()
    
    }
   

}
extension SignUpViewController {
    private func setupConstraints() {
        
        let emailStackView = UIStackView(arrangedSubviews: [emailLabel,emailTextField], axis: .vertical, spacing: 0)
        let passwordStackView = UIStackView(arrangedSubviews: [passwordLabel,password], axis: .vertical, spacing: 0)
        let confirmPasswordtackView = UIStackView(arrangedSubviews: [confirmPasswordLabel,confirmPassword], axis: .vertical, spacing: 0)
        
        signUpButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        let stackView = UIStackView(arrangedSubviews: [emailStackView,passwordStackView,confirmPasswordtackView,signUpButton], axis: .vertical, spacing: 40)
        
        let bottomStackView = UIStackView(arrangedSubviews: [signUpLabel,loginButton], axis: .horizontal, spacing: -1)
        
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(welcomeLabel)
        view.addSubview(stackView)
        view.addSubview(bottomStackView)
        
        NSLayoutConstraint.activate([
            welcomeLabel.topAnchor.constraint(equalTo: view.topAnchor,constant: 160),
            welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 160),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -40)
        ])
        
        NSLayoutConstraint.activate([
            bottomStackView.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 60),
            bottomStackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            bottomStackView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -40)
        ])
    }
}
    

//MARK: SwiftUI
import SwiftUI

struct SignView : PreviewProvider {
    static var previews: some View {
        ContainerView().previewDevice("iPhone 12").edgesIgnoringSafeArea(.all)
    }
    struct ContainerView : UIViewControllerRepresentable {
        
        typealias UIViewControllerType = SignUpViewController
        
        func makeUIViewController(context: Self.Context) -> Self.UIViewControllerType {
            return SignUpViewController()
        }
        
        func updateUIViewController(_ uiViewController: SignUpViewController, context: UIViewControllerRepresentableContext<SignView.ContainerView>) {
        }
    }
}

