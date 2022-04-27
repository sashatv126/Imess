//
//  ChatViewComtroller.swift
//  App
//
//  Created by Владимир on 27.04.2022.
//

import UIKit

class ChatViewComtroller : UIViewController {
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
        
        typealias UIViewControllerType = ChatViewComtroller
        
        func makeUIViewController(context: Self.Context) -> Self.UIViewControllerType {
            return ChatViewComtroller()
        }
        
        func updateUIViewController(_ uiViewController: ChatViewComtroller, context: UIViewControllerRepresentableContext<ChatView.ContainerView>) {
        }
    }
}
