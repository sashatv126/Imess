//
//  UsersViewController.swift
//  App
//
//  Created by Владимир on 27.04.2022.
//

import UIKit

class UsersViewController : UIViewController {
    
    private let searchController = UISearchController(searchResultsController: nil)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupSearchController()
    }
    
    private func setupSearchController() {
        navigationItem.searchController = searchController
        navigationController?.navigationBar.barTintColor = .white
        navigationController?.navigationBar.shadowImage = UIImage()
        searchController.hidesNavigationBarDuringPresentation = false
        searchController.searchBar.placeholder = "Search"
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.delegate = self
        }
}

extension UsersViewController : UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
    }
}
