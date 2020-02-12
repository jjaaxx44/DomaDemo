//
//  CommonViews.swift
//  DomaDemo
//
//  Created by Abhishek Chaudhari on 11/02/20.
//  Copyright © 2020 Abhishek Chaudhari. All rights reserved.
//

import SwiftUI

var line: some View {
    VStack {
        Rectangle()
            .fill(domaYellow)
            .frame(height: 2.0)
    }
}

var circle: some View {
    VStack {
        Spacer()
        HStack {
            Circle()
                .stroke(lineWidth: 60)
                .fill(domaYellow)
                .frame(width: UIScreen.main.bounds.maxX, height: UIScreen.main.bounds.maxX)
                .offset(CGSize(width: UIScreen.main.bounds.maxX/2, height: UIScreen.main.bounds.maxX/2))
        }
    }
}

struct tokenPaymentView: View {
    var text: String
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "lock.open")
                    .font(.largeTitle)
                
                Spacer()
                ZStack{
                    BulletShape()
                        .frame(width: 75.0, height: 50.0)
                        .foregroundColor(Color.white)
                        .rotationEffect(.degrees(180))
                    HStack{
                        Image(systemName: "circle.fill")
                            .font(.system(size: 5))
                            .foregroundColor(domaYellow)
                        Image(systemName: "circle.fill")
                            .font(.system(size: 5))
                            .foregroundColor(domaYellow)
                        Image(systemName: "circle.fill")
                            .font(.system(size: 5))
                            .foregroundColor(domaYellow)
                    }
                    .padding(.leading)
                    
                }
            }
            
            Text("Token Payment").padding(.bottom, 5)
            Text("It may take some time for our online system to update and show your payment of the token. We are holding the apartment for you, don't worry! ")
                .font(.caption)
                .padding(.trailing, 30)
                .foregroundColor(.gray)
            HStack {
                Text("Amount:")
                    .font(.caption)
                    .foregroundColor(.gray)
                Text(text)
                    .font(.caption)
            }.padding(.top, 5)
            
        }
        .padding([.top, .bottom, .leading], 30)
        .background(lightGrayBG)
    }
}


var contactUs: some View {
    VStack(alignment: .leading) {
        Text("Contact us").padding(.bottom, 5)
        Text("Call our Customer Excellence Team if you have any questions: M-F 09:00-1800")
            .font(.caption)
            .multilineTextAlignment(.leading)
            .lineLimit(2)
        HStack {
            Image(systemName: "phone.circle.fill")
                .font(.system(size: 50))
                .foregroundColor(domaYellow)
            Text("12 34 1234 1234")
        }.padding([.top])
    }
    .padding(.all, 30)
    .background(Color.white)
}


struct BulletShape : Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        path.addLines([
            CGPoint(x: 0, y: 0),
            CGPoint(x: rect.width/2, y: 0)
        ])
        path.addArc(center: CGPoint(x: rect.width/2, y: rect.height/2),
                    radius: rect.height/2,
                    startAngle: .degrees(270),
                    endAngle: .degrees(90),
                    clockwise: false)
        
        path.addLines([
            CGPoint(x: rect.width/2, y: rect.height),
            CGPoint(x: 0, y: rect.height),
            CGPoint(x: 0, y: 0)
        ])
        return path
    }
}


struct CommonViews_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            tokenPaymentView(text: "9000")
            contactUs
        }
        //        ZStack{
        //            Rectangle().frame(width: 100.0, height: 200.0).foregroundColor(.green)
        //            BulletShape().frame(width: 100.0, height: 100.0)
        //        }
    }
}
