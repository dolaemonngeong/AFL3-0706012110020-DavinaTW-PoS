//
//  ModelData.swift
//  AFL3-0706012110020-DavinaTW-PoS
//
//  Created by MacBook Pro on 26/04/23.
//

import Foundation

final class ModelData: ObservableObject{
    
    @Published var cafeterias: [Cafeteria]
    
    init() {
        let tuku2 = Cafeteria(id: 1, name: "Tuku-tuku", menu: [
            Menu(nameMenu: "Tahu Isi", priceMenu: "5000"),
            Menu(nameMenu: "Nasi kuning", priceMenu: "15000")
        ])
        
        let madamLie = Cafeteria(id: 2, name: "Madam Lie", menu: [
            Menu(nameMenu: "Ayam Geprek Dada", priceMenu: "11000"),
            Menu(nameMenu: "Ayam Geprek Paha", priceMenu: "11000"),
            Menu(nameMenu: "Nasi Putih", priceMenu: "6000"),
        ])
        
        let gotri = Cafeteria(id: 3, name: "Gotri", menu: [
            Menu(nameMenu: "Nasi Bakar", priceMenu: "13000"),
            Menu(nameMenu: "Nasi Goreng", priceMenu: "13500")
        ])
        
        let kopte = Cafeteria(id: 4, name: "Kopte", menu: [
            Menu(nameMenu: "Teh Tarik Kopte", priceMenu: "15000"),
            Menu(nameMenu: "Coklat Tarik", priceMenu: "12000")
        ])
        self.cafeterias = [tuku2, madamLie, gotri, kopte]
    }
}
