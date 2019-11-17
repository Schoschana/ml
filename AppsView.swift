//
//  AppsView.swift
//  TabBarTutorial
//
//  Created by Alpar Matyas on 10/09/2019.
//  Copyright © 2019 Alpar Matyas. All rights reserved.
//

import SwiftUI

struct ContentView2: View {
    var body: some View {
        NavigationView {
            List(Service.listData) { item in
                NavigationLink(destination: ListDetailView(item: item)) {
                    ListElementView(item: item)
                }
            }.navigationBarTitle(Text("Platforms & Services"))
                
                
                
                
        }
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView2()
    }
}
