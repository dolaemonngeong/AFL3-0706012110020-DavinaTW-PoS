//
//  CafeteriaRow.swift
//  AFL3-0706012110020-DavinaTW-PoS
//
//  Created by MacBook Pro on 26/04/23.
//

import SwiftUI

struct CafeteriaRow: View {
    
// menam
    var cafeteria: Cafeteria
    
    var body: some View {
        
        HStack{
            
            // menampilkan gambar yang diambil di asset
            Image("photography")
                .resizable()
                .frame(width: 100, height: 100)
            
            // menampilkan nama tenant
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
