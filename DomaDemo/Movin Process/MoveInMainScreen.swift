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

struct RowData: Identifiable{
    var id = UUID().uuidString
    let title: String
    let type: ProcessType
    let time: String
    let endTime: String
    let isDone: Bool
}

var row1 = RowData(title: "Token Payment", type: .payment, time: "04 Feb 2020",  endTime: "12:00 (noon)", isDone: true)
let row2 = RowData(title: "Registration Agreement", type: .sign, time: "15 Feb 2020", endTime: "12:00 (noon)", isDone: false)
let row3 = RowData(title: "Papers I: Registraion", type: .document, time: "15 Feb 2020", endTime: "12:00 (noon)", isDone: false)
let row4 = RowData(title: "Deposit Payment", type: .payment, time: "15 Feb 2020", endTime: "12:00 (noon)", isDone: false)
let row5 = RowData(title: "Papers II: Move-in", type: .document, time: "15 Feb 2020", endTime: "12:00 (noon)", isDone: false)

let allRows = [row1, row2, row3, row4, row5]

struct MoveInMainScreen: View {
    
    init() {
        UITableView.appearance().separatorStyle = .none
        UITableView.appearance().backgroundColor = .clear
        UITableViewCell.appearance().backgroundColor = .clear
        UITableViewCell.appearance().selectionStyle = .none
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        circle
                    }
                }
                VStack {
                    HStack{
                        Text("Move-in process")
                            .font(.largeTitle)
                            .padding()
                        Spacer()
                    }
                    line
                    List {
                        
                        ForEach(allRows) { row in
                            ZStack {
                                ProcessRow(rowData: row)
                                NavigationLink(destination: Text(row1.title)) {
                                    EmptyView()
                                }
                                .buttonStyle(PlainButtonStyle())
                            }
                        }
                    }
                }
            }
            .navigationBarTitle("")
            .navigationBarHidden(true)
        }
    }
}

struct MoveInMainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MoveInMainScreen()
    }
}
