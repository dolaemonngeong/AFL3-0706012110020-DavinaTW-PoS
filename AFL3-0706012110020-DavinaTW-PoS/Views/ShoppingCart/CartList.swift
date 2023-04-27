//
//  CartList.swift
//  AFL3-0706012110020-DavinaTW-PoS
//
//  Created by MacBook Pro on 26/04/23.
//

import SwiftUI

struct CartList: View {
    
    var body: some View {
        // menampilkan seluruh card
        List(){
            // memanggil struct CartCard()
            CartCard()
                .padding(10)
        }
    }
}

struct CartList_Previews: PreviewProvider {
    static var previews: some View {
        CartList()
            .environmentObject(ModelData())
    }
}
