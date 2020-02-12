//
//  TokenPayment.swift
//  DomaDemo
//
//  Created by Abhishek Chaudhari on 12/02/20.
//  Copyright © 2020 Abhishek Chaudhari. All rights reserved.
//

import SwiftUI

struct MoveInDetailsScreen: View {
    @State private var selectedSengment = 0
    var segments = ["Token", "Agreement", "Papers I.", "Deposit", "Papers II."]

    init() {
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.black], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.gray], for: .normal)
        UISegmentedControl.appearance().setBackgroundImage(UIColor.white.image(CGSize(width: 1.0, height: 32.0)), for: .normal, barMetrics: .default)
       
        UISegmentedControl.appearance().setBackgroundImage(domaYellowUIColor.image(), for: .selected, barMetrics: .default)

        UISegmentedControl.appearance().setDividerImage(UIColor.white.image(CGSize(width: 1.0, height: 32.0)), forLeftSegmentState: .normal, rightSegmentState: .normal, barMetrics: .default)
    }
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        VStack {
            HStack{
                Button(action: {
                    self.mode.wrappedValue.dismiss()
                })
                {
                    Text("<")
                        .padding()
                        .foregroundColor(.blue)
                }
                
                Text("Move-in process")
                    .font(.largeTitle)
                    .padding()
                Spacer()
            }
            
            Picker(selection: $selectedSengment, label: Text("")) {
                ForEach(0..<segments.count) { i in
                    Text(self.segments[i]).tag(i)
                }
            }.pickerStyle(SegmentedPickerStyle())
            
            if selectedSengment == 0 {
                tokenPaymentView(text: "9000")
                    .padding([.leading, .trailing, .bottom], 30)
                    .padding([.top], 10)
                
                contactUs
                    .padding()
                Spacer()
            }else {
                Spacer()
                Text(self.segments[selectedSengment])
                Spacer()
            }
        }.navigationBarTitle("")
        .navigationBarHidden(true)

    }
}

struct TokenPayment_Previews: PreviewProvider {
    static var previews: some View {
        MoveInDetailsScreen()
    }
}
