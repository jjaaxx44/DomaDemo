//
//  ContentView.swift
//  DomaDemo
//
//  Created by Abhishek Chaudhari on 11/02/20.
//  Copyright © 2020 Abhishek Chaudhari. All rights reserved.
//

import SwiftUI

struct MainTabView: View {
    @State private var selection = 0
 
    init() {
        UITabBar.appearance().barTintColor = UIColor.white
        UITabBar.appearance().tintColor = .gray
        UITabBar.appearance().layer.borderColor = UIColor.clear.cgColor
        UITabBar.appearance().clipsToBounds = true
    }

    var body: some View {
        TabView(selection: $selection){
            MoveInMainScreen()
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "house")
                        Text("Move-in")
                    }
                }
            .tag(0)
            
            Text("Place")
                .font(.largeTitle)
                .tabItem {
                    VStack {
                        Image(systemName: "location.circle")
                        Text("Place")
                    }
            }
            .tag(1)
            
            Text("Calendar")
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "calendar")
                        Text("Calendar")
                    }
            }
            .tag(2)
            
            Text("Account")
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "person.circle")
                        Text("Account")
                    }
            }
            .tag(3)
        }.accentColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
