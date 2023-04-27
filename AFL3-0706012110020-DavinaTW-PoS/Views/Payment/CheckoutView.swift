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
    
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView{
            VStack(alignment: .center) {
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
                
                if (pay == "0"){
                    //                falseInput += 1
                    Text("Payment can't be zero.")
                }else if(payInt > modelData.total){
                    
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
                    
                    NavigationLink(destination: SuccessView()) {
                        Text("Pay")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 300, height: .infinity)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    .padding(.top, 20)
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
