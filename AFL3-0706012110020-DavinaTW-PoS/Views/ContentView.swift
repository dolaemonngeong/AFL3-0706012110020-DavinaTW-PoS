//
//  ContentView.swift
//  AFL3-0706012110020-DavinaTW-PoS
//
//  Created by MacBook Pro on 25/04/23.
//

import SwiftUI

struct ContentView: View {
    //    @EnvironmentObject var cafeteria: Cafeteria
    
    //    let tuku2 = Cafeteria(name: "Tuku-tuku", menu: [Menu(nameMenu:"Tahu Isi", priceMenu:"1"), Menu(nameMenu:"Nasi", priceMenu:"3")])
    //
    //    let madamLie = Cafeteria(name: "Madam Lie", menu: [Menu(nameMenu:"Tahu Isi", priceMenu:"1"), Menu(nameMenu:"Nasi", priceMenu:"3")])
    //
    //    let gotri = Cafeteria(name: "Gotri", menu: [Menu(nameMenu:"Tahu Isi", priceMenu:"1"), Menu(nameMenu:"Nasi", priceMenu:"3")])
    
//    let cafeteriaNames = ["Tuku-tuku", "Madam Lie", "Gotri", "Kopte"]
    
    //    var cafeteria: Cafeteria
    
    //  variabel dengan value ".feautured" yang membantu dalam menampilkan tampilan default
    @State private var selection: Tab = .list
    
    // inisialisasi variabel untuk bottom naviagation bar
    enum Tab {
        case list
        case cart
    }
    
    var body: some View {
        
        //        NavigationView{
        //            VStack(alignment: .trailing){
        //                HStack {
        //                    Text("UC Walk")
        //                        .padding(.leading, 30.0)
        //
        //                    Spacer()
        //
        //                    NavigationLink(destination: ShoppingCartView()) {
        //                        Image(systemName: "cart")
        //                            .foregroundColor(.white)
        //                            .padding(10)
        //                    }
        //                    .background(Color.black)
        //                    .cornerRadius(50)
        //                    .padding(.trailing, 30)
        //
        //                }
        TabView(selection: $selection) {
            CafeteriaList()
            // menampilkan icon list pada bottom navigation bar
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
            
            // menampilkan struct LandmarkList saat pengguna menekan tombol "List" di bottom navigation bar
                .tag(Tab.list)
            
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
