//
//  MenuRow.swift
//  AFL3-0706012110020-DavinaTW-PoS
//
//  Created by MacBook Pro on 26/04/23.
//

import SwiftUI

struct MenuRow: View {
    var menu: Menu
    var cafeteria:Cafeteria
    
    @EnvironmentObject var modelData: ModelData
    
    // variabel untuk menampung jumlah yang dipesan pengguna
    @State private var quantity = 0
    
    var body: some View {
        
        HStack{
            
            Image("photography")
                .resizable()
                .frame(width: 100, height: 100)
            
            VStack(alignment: .leading) {
                
                // menampilkan nama menu
                Text(menu.nameMenu)
                    .font(.headline)
                
                // menampilkan harga menu
                Text("Rp \(menu.priceMenu)")
                    .font(.subheadline)
                
                // menampilkan jumlah yang ingin dipesan pengguna saat menekan tombol "-" atau "+"
                Stepper("Quantity: \(quantity)", value: $quantity)
                
                // jika pengguna menekan tombol "+", maka tampilkan tombol "Add to Chart"
                if(quantity > 0){
                    
                    Divider()
                    
                    // memberikan tombol "Add to Cart"
                    Button("Add to Cart") {
                        
                        // pengecekan jika terdapat nama menu dan nama cafeteria yang sama, maka jumlahnya ditambahkan. jika tidak ditemukan, maka buatlah objek baru berupa Item dan tambahkan di array items
                        if let index = modelData.items.firstIndex(where: { $0.menu.nameMenu == menu.nameMenu && $0.cafeteria.name == cafeteria.name }) {
                            modelData.items[index].quantity += quantity
                        } else {
                            let newItem = Item(menu: menu, cafeteria: cafeteria, quantity: quantity)
                            modelData.items.append(newItem)
                        }
                        
                        // memanggil function calculateOrder yang menghitung total pesanan pengguna
                        modelData.calculateOrder(price:menu.priceMenu, amount:quantity)
                        
                        // mengubah variabel quantity kembali menjadi 0 agar tidak mempengaruhi jumlah menu saat pengguna memesan lagi
                        quantity = 0
                        
                    }
                    .padding(15)
                    
                }
                
            }
            
        }
        
    }
    
    
}

struct MenuRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuRow(menu: Menu(nameMenu: "Tahu Isi", priceMenu: "5000"), cafeteria: ModelData().cafeterias[0])
            .environmentObject(ModelData())
    }
}
