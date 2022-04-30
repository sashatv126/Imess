//
//  Flow.swift
//  App
//
//  Created by Владимир on 30.04.2022.
//

import Foundation

@objc protocol Flow  {
    
    @objc optional func dismiss()
    
    @objc optional func coordinateToNewControler()
    
    @objc optional func coordinateWithModel(model : Any)
}
