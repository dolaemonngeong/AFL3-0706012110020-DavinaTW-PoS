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
        NavigationView{
            VStack {
                
                if(modelData.items.isEmpty){
                    Text("Your cart is empty :(")
                }else{
                    CartList()
                }
                
                HStack{
                    VStack(alignment: .leading) {
                        Text("Total: ")
                            .font(.title)
                            .fontWeight(.heavy)
                        Text("Rp. \(modelData.total)")
                    }
                    .padding(.leading, 20)
                    
                    Spacer()
                    
                    if(modelData.total > 0){
                        NavigationLink(destination: CheckoutView()){
                            Text("Checkout")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 120, height: .infinity)
                                .background(Color.black)
                                .cornerRadius(10)
                        }
                        .padding(.trailing, 20)
                    }
                }
                .padding(.bottom, 25)
                
                
            }
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
