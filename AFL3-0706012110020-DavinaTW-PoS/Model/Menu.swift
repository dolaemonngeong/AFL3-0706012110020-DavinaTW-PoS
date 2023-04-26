//
//  Menu.swift
//  AFL3-0706012110020-DavinaTW-PoS
//
//  Created by MacBook Pro on 25/04/23.
//

import Foundation

class Menu : ObservableObject, Identifiable{
    var nameMenu: String
    var priceMenu: String
    
    init(nameMenu: String, priceMenu: String) {
        self.nameMenu = nameMenu
        self.priceMenu = priceMenu
    }
//    var nameCafeteria: String = ""
    
//    let identifier = UUID()
}
