//
//  ViewController.swift
//  d
//
//  Created by Владимир on 26.04.2022.
//

import UIKit

class MainVc: UIViewController {
//MARK: -Image
    private let logoIm = UIImageView(image: #imageLiteral(resourceName: "gg"), contentMode: .scaleAspectFit)
    
//MARK: -Labels
    private let google = UILabel(text: "Get Started with")
    private let emailLabel = UILabel(text: "Or sign up with")
    private let alreadyOnBoard = UILabel(text: "Already onboard?")
    
//MARK: -Buttons
    private let emailButton = UIButton(title: "Email", titleColor: .white, backGroundColor: .buttonDark(), isShadow: true)
    private let loginButton = UIButton(title: "Login", titleColor: .white, backGroundColor: .buttonDark(),isShadow: true)
    private let googleButton = UIButton(title: "Google", titleColor: .white, backGroundColor: .buttonDark(), isShadow: true)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupConstraints()
    }
}
extension MainVc {
    private func setupConstraints() {
        let googleView = ButtonView(label: google, button: googleButton)
        let emailView = ButtonView(label: emailLabel, button: emailButton)
        let loginView = ButtonView(label: alreadyOnBoard, button: loginButton)
        
        let stackView = UIStackView(arrangedSubviews: [googleView, emailView, loginView],
                                    axis: .vertical,
                                    spacing: 40)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(logoIm)
        view.addSubview(stackView)
        
        logoIm.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            logoIm.topAnchor.constraint(equalTo: view.topAnchor,constant: 160),
            logoIm.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoIm.widthAnchor.constraint(equalToConstant: 100),
            logoIm.heightAnchor.constraint(equalToConstant: 100)
        ])
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: logoIm.bottomAnchor, constant: 100),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
        ])
    }
}
//MARK: SwiftUI
import SwiftUI

struct ViewCo : PreviewProvider {
    static var previews: some View {
        ContainerView().previewDevice("iPhone 12").edgesIgnoringSafeArea(.all)
    }
    struct ContainerView : UIViewControllerRepresentable {
        
        typealias UIViewControllerType = MainVc
        
        func makeUIViewController(context: Self.Context) -> Self.UIViewControllerType {
            return MainVc()
        }
        
        func updateUIViewController(_ uiViewController: MainVc, context: UIViewControllerRepresentableContext<ViewCo.ContainerView>) {
        }
    }
}
