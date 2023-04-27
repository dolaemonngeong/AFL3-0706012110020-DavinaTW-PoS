//
//  CafeteriaDetailView.swift
//  AFL3-0706012110020-DavinaTW-PoS
//
//  Created by MacBook Pro on 25/04/23.
//

import SwiftUI

struct CafeteriaDetailView: View {
    var cafeteria: Cafeteria
    
    // property untuk membuat view yang bergantung pada data bersama
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        
        // menampilkan seluruh menu dalam suatu cafeteria
        MenuList(cafeteria: cafeteria)
            .navigationBarTitle(cafeteria.name)
    }
    
}

struct CafeteriaDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CafeteriaDetailView(cafeteria: ModelData().cafeterias[0])
            .environmentObject(ModelData())
    }
}
