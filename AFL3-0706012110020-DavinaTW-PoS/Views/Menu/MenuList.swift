//
//  MenuList.swift
//  AFL3-0706012110020-DavinaTW-PoS
//
//  Created by MacBook Pro on 25/04/23.
//

import SwiftUI

struct MenuList: View {
    var cafeteria: Cafeteria
    
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        //  menampilkan tumpukan tampilan yang mewakili jalur yang terlihat dalam hierarki navigasi
        //        NavigationView {
        //            List(ModelData().cafeterias, id: \.id) { cafeteria in
        //                NavigationLink {
        //                    Text("a")
        //                } label: {
        //                    MenuRow(cafeteria: ModelData().cafeterias[0])
        //                }
        //            }
        //            //                ForEach(cafeteria.menu) { menu in
        //            //                    MenuRow(menu)
        //            //                    HStack{
        //            //                        Image("photography")
        //            //                            .resizable()
        //            //                            .frame(width: 100, height: 100)
        //            //                        VStack(alignment: .leading) {
        //            //                            Text(menu.nameMenu)
        //            //                                .font(.headline)
        //            //                            Text("Rp \(menu.priceMenu)")
        //            //                                .font(.subheadline)
        //            //                        }
        //            //                    }
        //        }
        
        //        NavigationView {
        List(cafeteria.menu, id: \.id) { menu in
            //                NavigationLink(destination: Text("Order Details")) {
            MenuRow(menu: menu, cafeteria: cafeteria)
            //                }
        }
        //            .navigationTitle("Menu List")
    }
    
}

struct MenuList_Previews: PreviewProvider {
    static var previews: some View {
        MenuList(cafeteria: ModelData().cafeterias[0]).environmentObject(ModelData())
    }
}
