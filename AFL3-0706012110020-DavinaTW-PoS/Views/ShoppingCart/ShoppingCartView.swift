//
//  ShoppingCartView.swift
//  AFL3-0706012110020-DavinaTW-PoS
//
//  Created by MacBook Pro on 25/04/23.
//

import SwiftUI

struct ShoppingCartView: View {
    //    var shopcart: ShoppingCart
    @EnvironmentObject var modelData: ModelData
    var body: some View {
        VStack {
            //            Text("ini shop cart")
            //                .font(.headline)
            CartList()
            HStack{
                VStack {
                    Text("Total: ")
                        .font(.title)
                        .fontWeight(.heavy)
                    .padding(.leading, 20)
                    Text("Rp. \(modelData.total)")
                }
                Spacer()
                Button("payment"){
                    
                }
                .padding(.trailing, 20)
            }
            .padding(.bottom, 25)
            
            
        }
        .navigationTitle("Shopping Cart")
        //        .foregroundColor(.gray)
    }
}

struct ShoppingCartView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingCartView()
            .environmentObject(ModelData())
    }
}
