//
//  CheckoutView.swift
//  AFL3-0706012110020-DavinaTW-PoS
//
//  Created by MacBook Pro on 27/04/23.
//

import SwiftUI
import Combine

struct CheckoutView: View {
    @State private var pay: String = ""
    
    //    @State private
    @State private var isButtonClicked = false
    
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView{
            VStack(alignment: .center) {
                Text("Your total order: Rp. \(modelData.total)")
                Text("Enter your money:")
                TextField("Enter here", text: $pay)
                    .padding(.horizontal, 50)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .keyboardType(.numberPad)
                    .onReceive(Just(pay)) { newValue in
                        let filtered = newValue.filter { "0123456789".contains($0) }
                        if filtered != newValue {
                            self.pay = filtered
                        }
                    }
                
                let payInt: Int = Int(pay) ?? 0
                
                //                if (pay == ""){
                //
                //                    Text("Please enter your payment!")
                //                }else
                if(pay == "0"){
                    Text("Payment can't be zero.")
                }else if(payInt >= modelData.total){
                    
                    //                Button(action: {
                    //                    // Your button action here
                    //                }) {
                    //                    Text("Pay")
                    //                        .font(.headline
                    //                        .foregroundColor(.white)
                    //                        .padding()
                    //                        .frame(width: 300, height: .infinity)
                    //                        .background(Color.blue)
                    //                        .cornerRadius(10)
                    //                }
                    //                    else if(payInt < modelData.total){
                    //                    Text("Enter a valid amount")
                    //                }
                    
                    Button(action: {
                        // ubah variabel isButtonClicked menjadi true saat pengguna menekan tombol "Pay"
                        self.isButtonClicked = true
                        
                        // memberi jeda 2 detik dalam menampilkan text "Payment Success! Thank you for your order" sebelum berpindah ke shopping cart karena function finishOrder() di model ModelData()
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            self.isButtonClicked = false
                            self.modelData.finishOrder()
                        }
                    }){Text("Pay")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 300, height: .infinity)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    .padding(.top, 20)
                    
                    // jika variabel isButtonClicked adalah true (pengguna menekan tombol "Pay")
                    if isButtonClicked {
                        Text("Payment Success! \nChange: Rp. \(payInt-modelData.total) \nThank you for your order")
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
