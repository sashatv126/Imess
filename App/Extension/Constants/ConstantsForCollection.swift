//
//  ConstantsForCollection.swift
//  App
//
//  Created by Владимир on 02.05.2022.
//

import UIKit

enum Section : Int, CaseIterable{
    case activeChats 
}

struct Chat : Hashable {
    var userName : String
    var userImage : String
    var lastMessege : String
    var id = UUID()
    
    func hash(into hasher : inout Hasher) {
        hasher.combine(id)
    }
    
    static func == (lhs : Chat, rhs : Chat) -> Bool {
        return lhs.id == rhs.id
    }
}

let activechats : [Chat] = [
    Chat(userName: "Sasha", userImage: "f", lastMessege: "Hi"),
    Chat(userName: "Den", userImage: "f", lastMessege: "Hi"),
    Chat(userName: "Fill", userImage: "f", lastMessege: "Hi"),
    Chat(userName: "Rock", userImage: "f", lastMessege: "Hi"),
    Chat(userName: "GAy", userImage: "f", lastMessege: "Hi")
]
