//
//  SignUpViewController.swift
//  App
//
//  Created by Владимир on 26.04.2022.
//

import UIKit

class SignUpViewController: UIViewController {
    
    var signUpCoordinator : Flow?
    
    private lazy var welcomeLabel : UILabel = {
        let label = UILabel(text: "Just a little more", font: .avenir26())
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
    private lazy var confirmPasswordLabel : UILabel = {
        let label = UILabel(text: "Confirm your password")
        label.textAlignment = .left
        return label
    }()
    private lazy var signUpLabel : UILabel = {
        let label = UILabel(text: "Already onboard?")
        return label
    }()
    
    private lazy var signUpButton : UIButton = {
        let button = UIButton(title: "Sign up", titleColor: .white, backGroundColor: .buttonDark(), isShadow: true)
        button.addTarget(nil, action: #selector(openChats), for: .touchUpInside)
        return button
    }()
    private lazy var loginButton : UIButton = {
        let button = UIButton(title: "Login", titleColor: .systemBlue, backGroundColor: .white, isShadow: false)
        button.addTarget(nil, action: #selector(openLogin), for: .touchUpInside)
        return button
    }()
    
    private let emailTextField = OneLineTextField(font: .avenir20())
    private let password = OneLineTextField(font: .avenir20())
    private let confirmPassword = OneLineTextField(font: .avenir20())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setNavigation()
        setupConstraints()
    }
    
    override func viewWillAppear(_ animated: Bool) {
          super.viewWillAppear(animated)
          navigationController?.setNavigationBarHidden(true, animated: false)
      }
      override func viewDidDisappear(_ animated: Bool) {
          super.viewDidDisappear(animated)
          navigationController?.setNavigationBarHidden(true, animated: true)
      }
      
    private func setNavigation() {
        
        navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationItem.setHidesBackButton(true, animated: true)
        
    }
    
    @objc private func openLogin() {
        signUpCoordinator?.dismiss?()
    }
    
    @objc private func openChats() {
        signUpCoordinator?.coordinateWithModel?(model: 1)
    }
}

extension SignUpViewController {
    private func setupConstraints() {
        
        view.backgroundColor = .white
        
        let emailStackView = UIStackView(arrangedSubviews:
                                         [emailLabel,emailTextField],
                                         axis: .vertical,
                                         spacing: 0)
        let passwordStackView = UIStackView(arrangedSubviews:
                                            [passwordLabel,password],
                                            axis: .vertical,
                                            spacing: 0)
        let confirmPasswordtackView = UIStackView(arrangedSubviews:
                                                  [confirmPasswordLabel,confirmPassword],
                                                  axis: .vertical,
                                                  spacing: 0)
        
        signUpButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        let stackView = UIStackView(arrangedSubviews: [emailStackView,passwordStackView,confirmPasswordtackView,signUpButton],
                                    axis: .vertical,
                                    spacing: 40)
        
        let bottomStackView = UIStackView(arrangedSubviews:
                                          [signUpLabel,loginButton],
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

