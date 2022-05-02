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
    Chat(userName: "Sasha", userImage: "avatar", lastMessege: "Hi"),
    Chat(userName: "Den", userImage: "avatar", lastMessege: "Hi"),
    Chat(userName: "Fill", userImage: "avatar", lastMessege: "Hi"),
    Chat(userName: "Rock", userImage: "avatar", lastMessege: "Hi"),
    Chat(userName: "GAy", userImage: "avatar", lastMessege: "Hi")
]
