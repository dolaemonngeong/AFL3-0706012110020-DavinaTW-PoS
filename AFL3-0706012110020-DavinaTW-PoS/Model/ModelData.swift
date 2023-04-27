//
//  ModelData.swift
//  AFL3-0706012110020-DavinaTW-PoS
//
//  Created by MacBook Pro on 26/04/23.
//

import Foundation

final class ModelData: ObservableObject{
    var total:Int = 0
    @Published var items: [Item] = []
    @Published var cafeterias: [Cafeteria]
    
    func calculateOrder(price:String, amount:Int){
        total += Int(price)! * amount
    }
    
    func finishOrder(){
        items.removeAll()
        total = 0
    }
//    let groupedItems = Dictionary(grouping: items, by: { $0.cafeteria.name })
    
    init() {
        let tuku2 = Cafeteria(id: 1, name: "Tuku-tuku", menu: [
            Menu(nameMenu: "Tahu Isi", priceMenu: "5000"),
            Menu(nameMenu: "Nasi Kuning", priceMenu: "15000"),
            Menu(nameMenu: "Nasi Campur", priceMenu: "16000"),
            Menu(nameMenu: "Air Mineral", priceMenu: "3000")
        ])
        
        let madamLie = Cafeteria(id: 2, name: "Madam Lie", menu: [
            Menu(nameMenu: "Ayam Geprek Dada", priceMenu: "11000"),
            Menu(nameMenu: "Ayam Geprek Paha", priceMenu: "11000"),
            Menu(nameMenu: "Nasi Putih", priceMenu: "6000"),
            Menu(nameMenu: "Teh Tawar", priceMenu: "5000"),
            Menu(nameMenu: "Jeruk Manis", priceMenu: "5500")
        ])
        
        let gotri = Cafeteria(id: 3, name: "Gotri", menu: [
            Menu(nameMenu: "Nasi Bakar", priceMenu: "13000"),
            Menu(nameMenu: "Nasi Goreng", priceMenu: "13500"),
            Menu(nameMenu: "Mie Goreng", priceMenu: "14000"),
            Menu(nameMenu: "Tamie Goreng", priceMenu: "15000"),
            Menu(nameMenu: "Milkshake", priceMenu: "10000"),
            Menu(nameMenu: "Tahu Berintik", priceMenu: "9000")
        ])
        
        let kopte = Cafeteria(id: 4, name: "Kopte", menu: [
            Menu(nameMenu: "Teh Tarik Kopte", priceMenu: "15000"),
            Menu(nameMenu: "Coklat Tarik", priceMenu: "12000"),
            Menu(nameMenu: "Teh Kundur", priceMenu: "13000"),
            Menu(nameMenu: "Teh Jeruk Nipis", priceMenu: "12500"),
            Menu(nameMenu: "Milo Dinosaur", priceMenu: "15000")
        ])
        self.cafeterias = [tuku2, madamLie, gotri, kopte]
    }
}
