//
//  ProcessRow.swift
//  DomaDemo
//
//  Created by Abhishek Chaudhari on 11/02/20.
//  Copyright © 2020 Abhishek Chaudhari. All rights reserved.
//

import SwiftUI

struct ProcessRow: View {
    
    let rowData: RowData
    
    var body: some View {
        HStack {
            ZStack{
                if rowData.isDone {
                    BulletShape()
                        .frame(width: 75.0, height: 50.0)
                        .foregroundColor(domaYellow)
                    
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
                            .foregroundColor(domaYellow)
                        Image(systemName: "circle.fill")
                            .font(.system(size: 5))
                            .foregroundColor(domaYellow)
                        Image(systemName: "circle.fill")
                            .font(.system(size: 5))
                            .foregroundColor(domaYellow)
                    }
                    .padding(.trailing)
                }
                
            }
            VStack(alignment: .leading) {
                Text(rowData.title)
                    .font(.system(size: 20))
                    .padding(.bottom)
                Text("Pay by ").font(.caption).foregroundColor(.gray)
                    + Text(rowData.time).font(.caption).bold()
                    + Text(", " + rowData.endTime).font(.caption).foregroundColor(.gray)
            }
            Spacer()
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
        }
        .padding([.top, .bottom, .trailing], 30)
        .background(lightGrayBG)
        .cornerRadius(5.0)
    }
}

struct ProcessRow_Previews: PreviewProvider {
    static var previews: some View {
        ProcessRow(rowData: row1)
    }
}
