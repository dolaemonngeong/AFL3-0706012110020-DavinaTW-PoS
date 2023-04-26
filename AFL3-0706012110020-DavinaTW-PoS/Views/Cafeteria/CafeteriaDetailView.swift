//
//  CafeteriaDetailView.swift
//  AFL3-0706012110020-DavinaTW-PoS
//
//  Created by MacBook Pro on 25/04/23.
//

import SwiftUI

struct CafeteriaDetailView: View {
    var cafeteria: Cafeteria
    
    
    var body: some View {
        Text(cafeteria.menu[0].nameMenu)
            .navigationBarTitle(cafeteria.name)
    }
}

struct CafeteriaDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CafeteriaDetailView(cafeteria: ModelData().cafeterias[0])
    }
}
