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
        image.image = UIImage(named: value.userImage)
        name.text = value.userName
        messege.text = value.lastMessege
    }
}

extension ChatCell {
    
    private func setUpConstraints() {
        image.translatesAutoresizingMaskIntoConstraints = false
        name.translatesAutoresizingMaskIntoConstraints = false
        messege.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(image)
        self.addSubview(name)
        self.addSubview(messege)
        
        messege.textAlignment = .left
        name.textAlignment = .left
        
        NSLayoutConstraint.activate([
            image.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            image.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            image.heightAnchor.constraint(equalToConstant: 78),
            image.widthAnchor.constraint(equalToConstant: 78)
        ])
        
        
        NSLayoutConstraint.activate([
            name.topAnchor.constraint(equalTo: self.topAnchor,constant: 12),
            name.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 16),
            name.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: 16)
        ])
        
        NSLayoutConstraint.activate([
            messege.bottomAnchor.constraint(equalTo: self.bottomAnchor,constant: -12),
            messege.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 16),
            messege.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: 16)
        ])
    }
}
