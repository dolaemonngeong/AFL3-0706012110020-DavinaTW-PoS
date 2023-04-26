//
//  CafeteriaRow.swift
//  AFL3-0706012110020-DavinaTW-PoS
//
//  Created by MacBook Pro on 26/04/23.
//

import SwiftUI

struct CafeteriaRow: View {
    
    var cafeteria: Cafeteria
    
    var body: some View {
        HStack{
            Image("photography")
                .resizable()
                .frame(width: 100, height: 100)
            Text(cafeteria.name)
                .font(.title)
                .fontWeight(.bold)
        }
    }
}

struct CafeteriaRow_Previews: PreviewProvider {
    static var previews: some View {
        CafeteriaRow(cafeteria: ModelData().cafeterias[0])
            .environmentObject(ModelData())
    }
}
