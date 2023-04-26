//
//  ShoppingCart.swift
//  AFL3-0706012110020-DavinaTW-PoS
//
//  Created by MacBook Pro on 26/04/23.
//

import Foundation



class ShoppingCart: ObservableObject {
    static let shared = ShoppingCart()
    
    @Published var items = [Item]()
    
    func addItem(_ item: Item) {
        items.append(item)
    }
}

class Item: Identifiable, ObservableObject {
    let id = UUID()
    var menu: Menu
    var cafeteria: Cafeteria
    var quantity: Int = 0
    
    init(menu: Menu, cafeteria: Cafeteria, quantity: Int) {
        self.menu = menu
        self.cafeteria = cafeteria
        self.quantity = quantity
    }
}
