//
//  AFL3_0706012110020_DavinaTW_PoSApp.swift
//  AFL3-0706012110020-DavinaTW-PoS
//
//  Created by MacBook Pro on 25/04/23.
//

import SwiftUI

@main
struct AFL3_0706012110020_DavinaTW_PoSApp: App {
    
    // inisialisasi observable object ModelData()
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            
            ContentView()
            
            // membuat objek tersedia untuk semua view
                .environmentObject(modelData)
        }
    }
}
