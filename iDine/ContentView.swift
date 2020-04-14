//
//  ContentView.swift
//  iDine
//
//  Created by 黒田翔太 on 2020/04/09.
//  Copyright © 2020 ShotaKuroda. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View {
        NavigationView {
            List {
                ForEach(menu) { section in
                    Section(header: Text(section.name)){
                            ForEach(section.items) { item in
                                ItemRow(item: item)
                        }
                    }
                }
            }.listStyle(GroupedListStyle())
        }.navigationBarTitle("Menu")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
