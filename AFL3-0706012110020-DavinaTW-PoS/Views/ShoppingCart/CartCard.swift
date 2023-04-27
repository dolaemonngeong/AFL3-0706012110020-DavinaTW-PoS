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
            
            //            ForEach(modelData.items) { item in
            //                VStack(alignment: .leading) {
            //                    Text(item.cafeteria.name)
            //                        .font(.title)
            //                        .fontWeight(.bold)
            //                    ForEach(modelData.items){ menu in
            //                        Text("\(menu.menu.nameMenu) @\(menu.menu.priceMenu) x \(menu.quantity)")
            //                    }
            //                }
            //            }
            
            generateOrderViews()
            
        }
        
    }
    private func generateOrderViews() -> some View {
        let groupedItems = Dictionary(grouping: modelData.items, by: { $0.cafeteria.name })
        
        return ForEach(groupedItems.keys.sorted(), id: \.self) { cafeteria in
            VStack(alignment: .leading) {
                Text("\(cafeteria):")
                    .font(.title)
                    .fontWeight(.bold)
                ForEach(groupedItems[cafeteria]!) { item in
                    Text("- \(item.menu.nameMenu) @\(item.menu.priceMenu) x\(item.quantity)")
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
