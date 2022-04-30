//
//  SignInViewController.swift
//  App
//
//  Created by Владимир on 27.04.2022.
//

import UIKit

class SignInViewController : UIViewController {
    
    var signInCoordinator : Flow?
    
    private lazy var welcomeLabel : UILabel = {
        let label = UILabel(text: "Glad to see you", font: .avenir26())
        return label
    }()
    private lazy var loginLabel : UILabel = {
        let label = UILabel(text: "Login with")
        return label
    }()
    private lazy var oRLabel : UILabel = {
        let label = UILabel(text: "or")
        label.textAlignment = .left
        return label
    }()
    private lazy var emailLabel : UILabel = {
        let label = UILabel(text: "Email")
        label.textAlignment = .left
        return label
    }()
    private lazy var passwordLabel : UILabel = {
        let label = UILabel(text: "Password")
        label.textAlignment = .left
        return label
    }()
    private lazy var registerlabel : UILabel = {
        let label = UILabel(text: "Need an account?")
        return label
    }()
    
    private lazy var googleButton : UIButton = {
        let button = UIButton(title: "Google", titleColor: .black, backGroundColor: .white, isShadow: true)
        button.addImageButton()
        return button
    }()
    private lazy var signUpButton : UIButton = {
        let button = UIButton(title: "Sign up", titleColor: .systemBlue, backGroundColor: .white,isShadow: false)
        button.addTarget(nil, action: #selector(openSignUp), for: .touchUpInside)
        return button
    }()
    private lazy var loginButton : UIButton = {
        let button = UIButton(title: "Login", titleColor: .white, backGroundColor: .buttonDark(),isShadow: true)
        return button
    }()
    
    private let emailTextField = OneLineTextField(font: .avenir20())
    private let password = OneLineTextField(font: .avenir20())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupConstraints()
    }
    
    @objc private func openSignUp() {
        signInCoordinator?.coordinateToNewControler?()
    }
}

extension SignInViewController {
    private func setupConstraints() {
        
        view.backgroundColor = .white
        
        let loginWithView = ButtonView(label: loginLabel, button: googleButton)
        let emailStackView = UIStackView(arrangedSubviews: [emailLabel, emailTextField],
                                         axis: .vertical,
                                         spacing: 0)
        let passwordStackView = UIStackView(arrangedSubviews: [passwordLabel,password],
                                            axis: .vertical,
                                            spacing: 0)
        loginButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        let stackView = UIStackView(arrangedSubviews:
                                    [loginWithView, oRLabel , emailStackView, passwordStackView, loginButton],
                                    axis: .vertical,
                                    spacing: 40)
        
        let bottomStackView = UIStackView(arrangedSubviews:
                                         [registerlabel, signUpButton],
                                          axis: .horizontal,
                                          spacing: 0)
        bottomStackView.alignment = .firstBaseline
        
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
            stackView.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 40),
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
