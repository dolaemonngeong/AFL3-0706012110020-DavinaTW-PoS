//
//  CafeteriaList.swift
//  AFL3-0706012110020-DavinaTW-PoS
//
//  Created by MacBook Pro on 25/04/23.
//

import SwiftUI

struct CafeteriaList: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView{
            List(ModelData().cafeterias, id: \.id) { cafeteria in
                NavigationLink {
                    CafeteriaDetailView(cafeteria: cafeteria)
                } label: {
                    CafeteriaRow(cafeteria: cafeteria)
                }
            }
            .navigationTitle("UC-Walk")
        }
    }
}

struct CafeteriaList_Previews: PreviewProvider {
    static var previews: some View {
        CafeteriaList()
            .environmentObject(ModelData())
    }
}
