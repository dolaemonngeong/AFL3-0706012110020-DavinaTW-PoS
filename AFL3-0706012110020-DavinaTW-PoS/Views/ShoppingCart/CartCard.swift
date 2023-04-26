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
            ForEach(modelData.items) { item in
                VStack(alignment: .leading) {
                    Text(item.cafeteria.name)
                        .font(.title)
                        .fontWeight(.bold)
                    Text("\(item.menu.nameMenu) x \(item.quantity)")
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
