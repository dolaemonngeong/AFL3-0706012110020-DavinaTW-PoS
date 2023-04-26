//
//  ShoppingCartView.swift
//  AFL3-0706012110020-DavinaTW-PoS
//
//  Created by MacBook Pro on 25/04/23.
//

import SwiftUI

struct ShoppingCartView: View {
    var body: some View {
        VStack {
            Text("ini shop cart")
                .font(.headline)

        }
        .navigationTitle("Shopping Cart")
//        .foregroundColor(.gray)
    }
}

struct ShoppingCartView_Previews: PreviewProvider {
    static var previews: some View {
        ShoppingCartView()
            .background(Color(hue: 0.688, saturation: 0.103, brightness: 0.807))
            .previewLayout(.fixed(width: 400, height: 100))
    }
}
