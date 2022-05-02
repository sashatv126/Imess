//
//  ChatViewComtroller.swift
//  App
//
//  Created by Владимир on 27.04.2022.
//

import UIKit

class ChatViewController : UIViewController {
    
    private var collectionView : UICollectionView!
    private var dataSourse : UICollectionViewDiffableDataSource<Section, Chat>?
    
    var tabcoordinator : Flow?

    private let searchController = UISearchController(searchResultsController: nil)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setCollectionView()
        setupSearchController()
        setDataSourse()
        reloadData()
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
    
    private func setCollectionView() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: flowLayout())
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        collectionView.backgroundColor = .white
        view.addSubview(collectionView)
        
        collectionView.register(ChatCell.self, forCellWithReuseIdentifier: ChatCell.reuseId)
    }
    
    private func flowLayout() -> UICollectionViewLayout {
        let layout = UICollectionViewCompositionalLayout { (sectionIndex, layoutEnviroment) -> NSCollectionLayoutSection? in
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .fractionalHeight(1))
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            let groupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1), heightDimension: .absolute(84))
            let group = NSCollectionLayoutGroup.vertical(layoutSize: groupSize, subitems: [item])
            group.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 0, bottom: 8, trailing: 0)
            let section = NSCollectionLayoutSection(group: group)
            
            section.contentInsets = NSDirectionalEdgeInsets(top: 16, leading: 20, bottom: 0, trailing: 20)
            return section
        }
        return layout
    }
    
    private func setDataSourse() {
        dataSourse = UICollectionViewDiffableDataSource<Section, Chat>(collectionView: collectionView, cellProvider: { (collectionView, indexPath, chat) -> UICollectionViewCell? in
            guard let section = Section(rawValue: indexPath.section) else {
                fatalError("ERROR")
            }
            
            switch section {
            case .activeChats:
                return self.configure(cell: ChatCell.self, with: chat, for: indexPath)
            }
        })
    }
    
    private func reloadData() {
        var snapshot =  NSDiffableDataSourceSnapshot<Section, Chat>()
        snapshot.appendSections([.activeChats])
        snapshot.appendItems(activechats, toSection: .activeChats)
        dataSourse?.apply(snapshot, animatingDifferences: true)
    }
    
    private func configure<T : CellConfigurationProtocol>(cell : T.Type,with value : Chat, for indexPath : IndexPath) -> T {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cell.reuseId, for: indexPath) as? T  else {
            fatalError("ERROR")
        }
        cell.configure(with: value)
        return cell
    }    
}

extension ChatViewController : UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print(searchText)
    }
}

import SwiftUI

struct ChatView : PreviewProvider {
    static var previews: some View {
        ContainerView().previewDevice("iPhone 12").edgesIgnoringSafeArea(.all)
    }
    struct ContainerView : UIViewControllerRepresentable {
        
        typealias UIViewControllerType = TabBarController
        
        func makeUIViewController(context: Self.Context) -> Self.UIViewControllerType {
            return TabBarController()
        }
        
        func updateUIViewController(_ uiViewController: TabBarController, context: UIViewControllerRepresentableContext<ChatView.ContainerView>) {
        }
    }
}
