//
//  CartList.swift
//  AFL3-0706012110020-DavinaTW-PoS
//
//  Created by MacBook Pro on 26/04/23.
//

import SwiftUI

struct CartList: View {
//    var shopcart: ShoppingCart
    
    var body: some View {
        List(){
            CartCard()
        }
    }
}

struct CartList_Previews: PreviewProvider {
    static var previews: some View {
        CartList()
            .environmentObject(ModelData())
    }
}
