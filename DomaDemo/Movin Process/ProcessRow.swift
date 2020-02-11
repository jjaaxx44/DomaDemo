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
            VStack(alignment: .leading) {
                Text(data.title)
                    .font(.body)
                    .padding(.bottom)
                Text("Pay by ").font(.caption).foregroundColor(.gray)
                    + Text(data.time).font(.caption).bold()
                    + Text(", " + data.endTime).font(.caption).foregroundColor(.gray)
            }
            Spacer()
            Image(systemName: "chevron.right")
                .foregroundColor(.gray)
        }
        .padding(.all, 30)
        .background(/*@START_MENU_TOKEN@*/Color(red: 0.968, green: 0.968, blue: 0.981)/*@END_MENU_TOKEN@*/)
    }
}

struct ProcessRow_Previews: PreviewProvider {
    static var previews: some View {
        ProcessRow(data: row1)
    }
}
