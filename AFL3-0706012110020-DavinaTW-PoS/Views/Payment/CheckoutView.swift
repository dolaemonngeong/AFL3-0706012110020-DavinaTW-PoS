//
//  CheckoutView.swift
//  AFL3-0706012110020-DavinaTW-PoS
//
//  Created by MacBook Pro on 27/04/23.
//

import SwiftUI
import Combine

struct CheckoutView: View {
    // variabel untuk menampung nominal uang pengguna
    @State private var pay: String = ""
    
    // variabel yang digunakan untuk membantu dalam mengecek apakah tombol "Pay" sudah ditekan
    @State private var isButtonClicked = false
    
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView{
            VStack(alignment: .center) {
                
                // menampilkan total pesanan pengguna
                Text("Your total order: Rp. \(modelData.total)")
                
                Text("Enter your money:")
                
                // tempat pengguna memasukkan nominal uang
                TextField("Enter here", text: $pay)
                    .padding(.horizontal, 50)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                // mengatur tipe keyboard berupa angka saja
                    .keyboardType(.numberPad)
                
                // hanya menerima input berupa angka
                    .onReceive(Just(pay)) { newValue in
                        let filtered = newValue.filter { "0123456789".contains($0) }
                        if filtered != newValue {
                            self.pay = filtered
                        }
                    }
                
                // pengguna tidak dapat memasukkan uangnya jika sudah menekan tombol "Pay"
                    .disabled(isButtonClicked)
                
                // konversi dari variabel pay
                let payInt: Int = Int(pay) ?? 0
                
                // jika pengguna memasukkan nominal 0, maka diberitahukan . jika pengguna sudah memasukkan nominal yang benar, maka tampilkan tombol "Pay"
                if(pay == "0"){
                    Text("Payment can't be zero.")
                }else if(payInt >= modelData.total){
                    
                    // pemberian tombol "Pay"
                    Button(action: {
                        // ubah variabel isButtonClicked menjadi true saat pengguna menekan tombol "Pay"
                        self.isButtonClicked = true
                        
                        // memberi jeda 4 detik dalam menampilkan text "Payment Success! Thank you for your order" sebelum berpindah ke shopping cart. Jika tidak diberi jeda, akan langsung ke struct ShoppingCartView() karena array items sudah dihapus dan total dijadikan 0  di function finishOrder() di model ModelData()
                        DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                            self.isButtonClicked = false
                            self.modelData.finishOrder()
                        }
                    }){Text("Pay")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 300, height: .infinity)
                            .background(Color.black)
                            .cornerRadius(10)
                    }
                    .padding(.top, 20)
                    
                    // jika variabel isButtonClicked adalah true (pengguna menekan tombol "Pay"), maka akan menampilkan tulisan berikut
                    if isButtonClicked {
                        Text("Payment Success! \nChange Rp. \(payInt-modelData.total) \nThank you for your order")
                            .fontWeight(.bold)
                            .foregroundColor(.green)
                            .multilineTextAlignment(.center)
                            .padding()
                    }
                }
                
            }
        }
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView()
            .environmentObject(ModelData())
    }
}
