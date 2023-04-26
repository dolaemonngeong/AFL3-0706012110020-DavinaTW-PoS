//
//  CartCard.swift
//  AFL3-0706012110020-DavinaTW-PoS
//
//  Created by MacBook Pro on 26/04/23.
//

import SwiftUI

struct CartCard: View {
//    var shopcart: ShoppingCart
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Nama Tenant")
                .font(.title)
            .fontWeight(.bold)

            Text("Menunya x jumlah")
        }
        
    }
}

struct CartCard_Previews: PreviewProvider {
    static var previews: some View {
        CartCard()
            .environmentObject(ModelData())
    }
}
