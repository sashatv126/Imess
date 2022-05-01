//
//  ChatViewComtroller.swift
//  App
//
//  Created by Владимир on 27.04.2022.
//

import UIKit

class ChatViewController : UIViewController {
    
    var tabcoordinator : Flow?

    private let searchController = UISearchController(searchResultsController: nil)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupSearchController()
    }
    
    private func setupSearchController() {
            navigationItem.searchController = searchController
            searchController.searchBar.placeholder = "Search"
            searchController.obscuresBackgroundDuringPresentation = false
        }
    

}

extension ChatViewController : UISearchBarDelegate {
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        searchBar.text = ""
        searchBar.endEditing(true)
    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
    }
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.resignFirstResponder()
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
