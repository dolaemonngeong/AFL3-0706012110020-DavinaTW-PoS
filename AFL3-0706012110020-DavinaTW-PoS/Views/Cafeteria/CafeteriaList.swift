//
//  CafeteriaList.swift
//  AFL3-0706012110020-DavinaTW-PoS
//
//  Created by MacBook Pro on 25/04/23.
//

import SwiftUI

struct CafeteriaList: View {
    // property untuk membuat view yang bergantung pada data bersama
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        
        NavigationView{
            
            // menampilkan seluruh nama Tenant
            List(ModelData().cafeterias, id: \.id) { cafeteria in
                
                // navigasi ke detail tenant dengan memanggil struct CafeteriaDetailView
                NavigationLink {
                    CafeteriaDetailView(cafeteria: cafeteria)
                } label: {
                    // menampikan card nama tenant
                    CafeteriaRow(cafeteria: cafeteria)
                }
                
            }
            
        }
    }
}

struct CafeteriaList_Previews: PreviewProvider {
    static var previews: some View {
        CafeteriaList()
            .environmentObject(ModelData())
    }
}
