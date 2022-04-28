//
//  ChatViewComtroller.swift
//  App
//
//  Created by Владимир on 27.04.2022.
//

import UIKit

class ChatViewController : UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
}

import SwiftUI

struct ChatView : PreviewProvider {
    static var previews: some View {
        ContainerView().previewDevice("iPhone 12").edgesIgnoringSafeArea(.all)
    }
    struct ContainerView : UIViewControllerRepresentable {
        
        typealias UIViewControllerType = ChatViewController
        
        func makeUIViewController(context: Self.Context) -> Self.UIViewControllerType {
            return ChatViewController()
        }
        
        func updateUIViewController(_ uiViewController: ChatViewController, context: UIViewControllerRepresentableContext<ChatView.ContainerView>) {
        }
    }
}
