//
//  MenuList.swift
//  AFL3-0706012110020-DavinaTW-PoS
//
//  Created by MacBook Pro on 25/04/23.
//

import SwiftUI

struct MenuList: View {
    // menambah property MenuList yakni cafeteria
    var cafeteria: Cafeteria
    
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        
        // menampilkan seluruh card Menu pada sebuah cafeteria
        List(cafeteria.menu, id: \.id) { menu in
            // memanggil struct MenuRow yang menyesuaikan cafeteria dan menu yang ditekan pengguna di CafeteriaList
            MenuRow(menu: menu, cafeteria: cafeteria)
        }
        
    }
    
}

struct MenuList_Previews: PreviewProvider {
    static var previews: some View {
        MenuList(cafeteria: ModelData().cafeterias[0]).environmentObject(ModelData())
    }
}
