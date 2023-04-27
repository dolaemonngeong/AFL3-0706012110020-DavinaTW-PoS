//
//  CartCard.swift
//  AFL3-0706012110020-DavinaTW-PoS
//
//  Created by MacBook Pro on 26/04/23.
//

import SwiftUI

struct CartCard: View {
    @EnvironmentObject var modelData : ModelData
    
    var body: some View {
        
        VStack(alignment: .leading) {
            // memanggil fucntion generateOrderViews yang menampilkan seluruh pesanan pengguna
            generateOrderViews()
            
        }
        
    }
    private func generateOrderViews() -> some View {
        
        // mengelompokkan array items berdasarkan nama cafeteria
        let groupedItems = Dictionary(grouping: modelData.items, by: { $0.cafeteria.name })
        
        // mengembalikan value yang menampilkan nama cafeteria di atas dan pesanan menunya di bawah
        return ForEach(groupedItems.keys.sorted(), id: \.self) { cafeteria in
            VStack(alignment: .leading) {
                Text("\(cafeteria):")
                    .font(.title)
                    .fontWeight(.bold)
                ForEach(groupedItems[cafeteria]!) { item in
                    Text(" - \(item.menu.nameMenu) @\(item.menu.priceMenu) x\(item.quantity)")
                }
            }
        }
        
    }
    
}

struct CartCard_Previews: PreviewProvider {
    static var previews: some View {
        CartCard()
            .environmentObject(ModelData())
    }
}
