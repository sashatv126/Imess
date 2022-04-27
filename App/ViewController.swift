//
//  ViewController.swift
//  d
//
//  Created by Владимир on 26.04.2022.
//

import UIKit

class MainVc: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }


}
import SwiftUI

struct ViewCo : PreviewProvider {
    static var previews: some View {
        ContainerView().edgesIgnoringSafeArea(.all)
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
