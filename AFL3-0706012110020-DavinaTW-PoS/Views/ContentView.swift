//
//  ContentView.swift
//  AFL3-0706012110020-DavinaTW-PoS
//
//  Created by MacBook Pro on 25/04/23.
//

import SwiftUI

struct ContentView: View {
    
    //  variabel dengan value ".list" yang membantu dalam menampilkan tampilan default
    @State private var selection: Tab = .list
    
    // inisialisasi variabel untuk bottom naviagation bar
    enum Tab {
        case list
        case cart
    }
    
    var body: some View {
        
        // memberi bottom navigation bar
        TabView(selection: $selection) {
            
            // memanggil struct Cafeterialist
            CafeteriaList()
            
            // menampilkan icon list pada bottom navigation bar
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
            
            // menampilkan struct LandmarkList saat pengguna menekan tombol "List" di bottom navigation bar
                .tag(Tab.list)
            
            // memanggil struct ShoppingCartView
            ShoppingCartView()
            
            // menampilkan icon cart pada bottom navigation bar
                .tabItem {
                    Label("Cart", systemImage: "cart")
                }
            
            // menampilkan struct LandmarkList saat pengguna menekan tombol "Cart" di bottom navigation bar
                .tag(Tab.cart)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
