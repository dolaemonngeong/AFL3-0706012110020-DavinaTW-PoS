//
//  MenuRow.swift
//  AFL3-0706012110020-DavinaTW-PoS
//
//  Created by MacBook Pro on 26/04/23.
//

import SwiftUI

struct MenuRow: View {
    var menu: Menu
    var cafeteria:Cafeteria
    
    @EnvironmentObject var modelData: ModelData
    
    @State private var quantity = 0
    
    var body: some View {
        //        ForEach(cafeteria.menu) { menu in
        //            HStack{
        //                Image("photography")
        //                    .resizable()
        //                    .frame(width: 100, height: 100)
        //                VStack(alignment: .leading) {
        //                    Text(menu.nameMenu)
        //                        .font(.headline)
        //                    Text("Rp \(menu.priceMenu)")
        //                        .font(.subheadline)
        //                }
        //            }
        //        }
        HStack{
            Image("photography")
                .resizable()
                .frame(width: 100, height: 100)
            VStack(alignment: .leading) {
                Text(menu.nameMenu)
                    .font(.headline)
                Text("Rp \(menu.priceMenu)")
                    .font(.subheadline)
                Stepper("Quantity: \(quantity)", value: $quantity)
                //                    .onChange(of: quantity) { newValue in
                //                        let newItem = Item(menu: menu, cafeteria: cafeteria, quantity: quantity)
                //                        modelData.items.append(newItem)
                //                    }
                
                //                                buat cek
//                                ForEach(modelData.items) { item in
//                                    HStack {
//                                        Text("ID: \(item.id)")
//                                        Text("Menu: \(item.menu.nameMenu)")
//                                        Text("Cafeteria: \(item.cafeteria.name)")
//                                        Text("Quantity: \(item.quantity)")
//                                    }
//                                }
                if(quantity > 0){
                    Divider()
                    Button("Add to Cart") {
                        let newItem = Item(menu: menu, cafeteria: cafeteria, quantity: quantity)
                        if let index = modelData.items.firstIndex(where: { $0.menu.nameMenu == menu.nameMenu && $0.cafeteria.name == cafeteria.name }) {
                            modelData.items[index].quantity += quantity
                        } else {
                            modelData.items.append(newItem)
                        }
                        quantity = 0
                        modelData.total += Int(menu.priceMenu)! * quantity
//                        total += Int(price)! * amountMenuInt
                    }
                    .padding(15)
                }
            }
            
        }
    }
    
}

struct MenuRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuRow(menu: Menu(nameMenu: "Tahu Isi", priceMenu: "5000"), cafeteria: ModelData().cafeterias[0])
            .environmentObject(ModelData())
    }
}
