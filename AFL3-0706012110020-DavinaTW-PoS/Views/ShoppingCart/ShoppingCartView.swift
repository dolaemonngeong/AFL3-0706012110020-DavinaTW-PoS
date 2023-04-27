//
//  ShoppingCartView.swift
//  AFL3-0706012110020-DavinaTW-PoS
//
//  Created by MacBook Pro on 25/04/23.
//

import SwiftUI

struct ShoppingCartView: View {
    
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView{
            VStack {
                
                // jika array items kosong, maka menampilkan tulisan "Your cart is empty :(". Jika sebaliknya, panggil struct CartList() yang menampilkan seluruh pesanan pengguna
                if(modelData.items.isEmpty){
                    Text("Your cart is empty :(")
                        .padding(.vertical, 320.0)
                }else{
                    CartList()
                }
                
                HStack{
                    VStack(alignment: .leading) {
                        Text("Total: ")
                            .font(.title)
                            .fontWeight(.heavy)
                        
                        // menampilkan total pesanan pengguna
                        Text("Rp. \(modelData.total)")
                    }
                    .padding(.leading, 20)
                    
                    // memberi jarak antara total dan tombol "CheckOut
                    Spacer()
                    
                    // jika total pesanannya lebih dari 0, maka tampilkan tombol checkout
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
        
        // memberi judul navigasi
        .navigationTitle("Shopping Cart")
    }
}

struct ShoppingCartView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingCartView()
            .environmentObject(ModelData())
    }
}
