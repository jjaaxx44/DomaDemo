//
//  ProcessRow.swift
//  DomaDemo
//
//  Created by Abhishek Chaudhari on 11/02/20.
//  Copyright © 2020 Abhishek Chaudhari. All rights reserved.
//

import SwiftUI

struct ProcessRow: View {
    
    let data: RowData
    
    var body: some View {
        HStack {
            ZStack{
                if data.isDone {
                    BulletShape()
                        .frame(width: 75.0, height: 50.0)
                        .foregroundColor(Color.yellow)
                    
                    Image(systemName: "checkmark")
                        .padding(.trailing)
                        .font(.title)
                        .foregroundColor(.white)
                } else {
                    BulletShape()
                        .frame(width: 75.0, height: 50.0)
                        .foregroundColor(Color.white)
                    
                    HStack{
                        Image(systemName: "circle.fill")
                            .font(.system(size: 5))
                            .foregroundColor(.yellow)
                        Image(systemName: "circle.fill")
                            .font(.system(size: 5))
                            .foregroundColor(.yellow)
                        Image(systemName: "circle.fill")
                            .font(.system(size: 5))
                            .foregroundColor(.yellow)
                    }
                    .padding(.trailing)
                }
                
            }
            VStack(alignment: .leading) {
                Text(data.title)
                    .font(.system(size: 20))
                    .padding(.bottom)
                Text("Pay by ").font(.caption).foregroundColor(.gray)
                    + Text(data.time).font(.caption).bold()
                    + Text(", " + data.endTime).font(.caption).foregroundColor(.gray)
            }
            Spacer()
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
        }
        .padding([.top, .bottom, .trailing], 30)
        .background(/*@START_MENU_TOKEN@*/Color(red: 0.968, green: 0.968, blue: 0.981)/*@END_MENU_TOKEN@*/)
    }
}

struct ProcessRow_Previews: PreviewProvider {
    static var previews: some View {
        ProcessRow(data: row1)
    }
}
