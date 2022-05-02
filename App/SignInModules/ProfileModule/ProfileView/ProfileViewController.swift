//
//  ProfileViewController.swift
//  App
//
//  Created by Владимир on 27.04.2022.
//

import UIKit

class ProfileViewController : UIViewController {
    
    var profileCoordinator : Flow?
    
    private lazy var welcomeLabel : UILabel = {
        let label = UILabel(text: "Set up profile", font: .avenir26())
        return label
    }()
    private lazy var nameLabel : UILabel = {
        let label = UILabel(text: "Full name")
        label.textAlignment = .left
        return label
    }()
    private lazy var aboutLabel : UILabel = {
        let label = UILabel(text: "About me")
        label.textAlignment = .left
        return label
    }()
    private lazy var sexLavel : UILabel = {
        let label = UILabel(text: "Sex")
        label.textAlignment = .left
        return label
    }()
    
    private lazy var goButton : UIButton = {
        let button = UIButton(title: "GO", titleColor: .white, backGroundColor: .buttonDark(),isShadow: true)
        button.addTarget(nil, action: #selector(tapGo), for: .touchUpInside)
        return button
    }()
    
    private lazy var sex : UISegmentedControl = {
        let segment = UISegmentedControl(first: "Male", second: "Female")
        return segment
    }()
    
    private let fullNameTextField = OneLineTextField(font: .avenir20())
    private let aboutTextField = OneLineTextField(font: .avenir20())
    private let photoView = AddPhotoView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
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
      
    @objc private func tapGo() {
        profileCoordinator?.coordinateWithModel?(model: 1)
    }
}
extension ProfileViewController {
    
    private func setupConstraints() {
        
        view.backgroundColor = .white
        
        let fullStackView = UIStackView(arrangedSubviews:
                                        [nameLabel,fullNameTextField],
                                        axis: .vertical,
                                        spacing: 0)
        let aboutStackView = UIStackView(arrangedSubviews:
                                        [aboutLabel,aboutTextField],
                                        axis: .vertical,
                                        spacing: 0)
        let sexStackView = UIStackView(arrangedSubviews:
                                        [sexLavel,sex],
                                        axis: .vertical,
                                        spacing: 10)
        
        goButton.heightAnchor.constraint(equalToConstant: 60).isActive = true
        let stackView = UIStackView(arrangedSubviews:
                                        [fullStackView,aboutStackView,
                                         sexStackView,goButton],
                                        axis: .vertical,
                                        spacing: 50)
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(photoView)
        view.addSubview(welcomeLabel)
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            welcomeLabel.topAnchor.constraint(equalTo: view.topAnchor,constant: 160),
            welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            photoView.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor,constant: 40),
            photoView.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
       
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: photoView.bottomAnchor, constant: 60),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: -40)
        ])
    }
}


import SwiftUI

struct ProfileView : PreviewProvider {
    static var previews: some View {
        ContainerView().previewDevice("iPhone 12").edgesIgnoringSafeArea(.all)
    }
    struct ContainerView : UIViewControllerRepresentable {
        
        typealias UIViewControllerType = ProfileViewController
        
        func makeUIViewController(context: Self.Context) -> Self.UIViewControllerType {
            return ProfileViewController()
        }
        
        func updateUIViewController(_ uiViewController: ProfileViewController, context: UIViewControllerRepresentableContext<ProfileView.ContainerView>) {
        }
    }
}
