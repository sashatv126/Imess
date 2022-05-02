//
//  ChatCell.swift
//  App
//
//  Created by Владимир on 02.05.2022.
//

import UIKit

class ChatCell : UICollectionViewCell, CellConfigurationProtocol {
    
    static var reuseId: String = "Active Chats"
    
    private let image = UIImageView()
    private let name = UILabel(text: "User name", font: .avenir20())
    private let messege = UILabel(text : "Hi", font : .avenir18())
    let view = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpConstraints()
        
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        image.layer.cornerRadius = 10
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configure(with value : Chat) {
        print("1")
    }
    
    private func setUpConstraints() {
        image.translatesAutoresizingMaskIntoConstraints = false
        view.translatesAutoresizingMaskIntoConstraints = false
        name.translatesAutoresizingMaskIntoConstraints = false
        messege.translatesAutoresizingMaskIntoConstraints = false
        
        view.backgroundColor = .white
        
        self.addSubview(image)
        self.addSubview(view)
        self.addSubview(name)
        self.addSubview(messege)
        
        image.backgroundColor = .red
        messege.textAlignment = .left
        name.textAlignment = .left
        
        NSLayoutConstraint.activate([
            image.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            image.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            image.heightAnchor.constraint(equalToConstant: 78),
            image.widthAnchor.constraint(equalToConstant: 78)
        ])
        
        NSLayoutConstraint.activate([
            view.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            view.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            view.heightAnchor.constraint(equalToConstant: 78),
            view.widthAnchor.constraint(equalToConstant: 8)
        ])
        
        NSLayoutConstraint.activate([
            name.topAnchor.constraint(equalTo: self.topAnchor,constant: 12),
            name.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 10),
            name.trailingAnchor.constraint(equalTo: view.leadingAnchor,constant: 16)
        ])
        
        NSLayoutConstraint.activate([
            messege.bottomAnchor.constraint(equalTo: self.bottomAnchor,constant: -12),
            messege.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 16),
            messege.trailingAnchor.constraint(equalTo: view.leadingAnchor,constant: 16)
        ])
        
    }
}
