//
//  MovinMainScreen.swift
//  DomaDemo
//
//  Created by Abhishek Chaudhari on 11/02/20.
//  Copyright © 2020 Abhishek Chaudhari. All rights reserved.
//

import SwiftUI
enum ProcessType {
    case payment
    case sign
    case document
}

struct RowData {
    let title: String
    let type: ProcessType
    let time: String
    let endTime: String
}

let row1 = RowData(title: "Token Payment", type: .payment, time: "04 Feb 2020",  endTime: "12:00 (noon)")
let row2 = RowData(title: "Registration Agreement", type: .sign, time: "15 Feb 2020", endTime: "12:00 (noon)")
let row3 = RowData(title: "Papers I: Registraion", type: .document, time: "15 Feb 2020", endTime: "12:00 (noon)")
let row4 = RowData(title: "Deposit Payment", type: .payment, time: "15 Feb 2020", endTime: "12:00 (noon)")
let row5 = RowData(title: "Papers II: Move-in", type: .document, time: "15 Feb 2020", endTime: "12:00 (noon)")


struct MoveInMainScreen: View {
    var line: some View {
        return VStack {
            Rectangle()
                .fill(Color.yellow)
                .frame(height: 3.0)
        }
    }

    init() {
        UITableView.appearance().separatorStyle = .none
    }
    
    var body: some View {
        VStack {
            HStack{
                Text("Move-in process")
                    .font(.largeTitle)
                    .padding()
                Spacer()
            }
            line
            List {
                ProcessRow(data: row1)
                ProcessRow(data: row2)
                ProcessRow(data: row3)
                ProcessRow(data: row4)
                ProcessRow(data: row5)
            }
        }
    }
}

struct MoveInMainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MoveInMainScreen()
    }
}
