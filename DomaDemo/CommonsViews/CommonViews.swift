//
//  CommonViews.swift
//  DomaDemo
//
//  Created by Abhishek Chaudhari on 11/02/20.
//  Copyright © 2020 Abhishek Chaudhari. All rights reserved.
//

import SwiftUI

var line: some View {
    return VStack {
        Rectangle()
            .fill(Color.yellow)
            .frame(height: 2.0)
    }
}

var circle: some View {
    return VStack {
        Spacer()
        HStack {
            Circle()
                .stroke(lineWidth: 60)
                .fill(Color.yellow)
                .frame(width: UIScreen.main.bounds.maxX, height: UIScreen.main.bounds.maxX)
                .offset(CGSize(width: UIScreen.main.bounds.maxX/2, height: UIScreen.main.bounds.maxX/2))
        }
    }
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
        ZStack{
            Rectangle().frame(width: 100.0, height: 200.0).foregroundColor(.green)
            BulletShape().frame(width: 100.0, height: 100.0)
        }
    }
}
