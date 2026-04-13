//
//  Friend.swift
//  07. FriendsFavoriteMovies
//
//  Created by ycw012 on 4/13/26.
//

import Foundation
import SwiftData

@Model
class Friend {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    static let sampleData = [
        Friend(name: "Joey Tribbiani"),
        Friend(name: "Chandler Bing"),
        Friend(name: "Phoebe Buffay"),
        Friend(name: "Rachel Green"),
        Friend(name: "Monica Geller"),
        Friend(name: "Arya Stark"),
        Friend(name: "Daenerys Targaryen"),
        Friend(name: "Jon Snow"),
        
        
        
    ]
    
}
