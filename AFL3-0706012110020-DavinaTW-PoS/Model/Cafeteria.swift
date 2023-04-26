//
//  Cafeteria.swift
//  AFL3-0706012110020-DavinaTW-PoS
//
//  Created by MacBook Pro on 25/04/23.
//

import Foundation
//var cafeterias: [Cafeteria]

class Cafeteria{
    var id: Int
    var name: String
    var menu: [Menu]
    
    init(id: Int, name: String, menu: [Menu]) {
        self.id = id
        self.name = name
        self.menu = menu
    }
}



