//
//  MenuRow.swift
//  AFL3-0706012110020-DavinaTW-PoS
//
//  Created by MacBook Pro on 26/04/23.
//

import SwiftUI

struct MenuRow: View {
    var body: some View {
        HStack{
            Image("photography")
                .resizable()
                .frame(width: 100, height: 100)
            Text("Nama Menu")
                .font(.headline)
        }
    }
}

struct MenuRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuRow()
    }
}
