//
//  CellConfigurationProtocol.swift
//  App
//
//  Created by Владимир on 02.05.2022.
//

import Foundation

protocol CellConfigurationProtocol {
    static var reuseId : String {get}
    
    func configure(with value : Chat)
}
