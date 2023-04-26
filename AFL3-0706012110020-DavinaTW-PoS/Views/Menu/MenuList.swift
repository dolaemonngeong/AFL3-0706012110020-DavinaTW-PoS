//
//  MenuList.swift
//  AFL3-0706012110020-DavinaTW-PoS
//
//  Created by MacBook Pro on 25/04/23.
//

import SwiftUI

struct MenuList: View {
    var cafeteria: Cafeteria
    
    var body: some View {
        //  menampilkan tumpukan tampilan yang mewakili jalur yang terlihat dalam hierarki navigasi
        NavigationView {
            
//            // menampilkan seluruh list data
//            List(selection: $selectedLandmark){
//
//
//                //  navigasi ke detail dari landmark yang diklik pengguna
//                ForEach(filteredLandmarks) { landmark in
//                    NavigationLink{
//                        LandmarkDetail(landmark: landmark)
//                    } label: {
//                        LandmarkRow(landmark: landmark)
//                    }
//
//                    // mempermudah pengambilan landmark yang dipilih
//                    .tag(landmark)
//                }
//            }
            
            // menampilkan judul pada navigation bar
//            .navigationTitle(title)
            
            // mengatur minimum lebar frame
//            .frame(minWidth: 300)
            
        }
        
    }
}

struct MenuList_Previews: PreviewProvider {
    static var previews: some View {
        MenuList(cafeteria: ModelData().cafeterias[0])
    }
}
