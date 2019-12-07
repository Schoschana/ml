//
//  ListDetailView.swift
//  SwiftUITabView
//
//  Created by Lili on 16/10/2019.
//  Copyright © 2019 Rebeloper. All rights reserved.
//

import SwiftUI

struct ListDetailView: View {
    
    var item: ListElement
    
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Image(item.icon)
                        .resizable()
                        .renderingMode(.original)
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 80, height: 80).padding(.leading, 10).padding(.trailing, 10)
                    
                    Text(item.title)
                        
                        .fontWeight(.bold)
                }.frame(minWidth: 0, maxWidth: .infinity)
                Image(item.image)
                
                Text(item.text)
                    .foregroundColor(Color.gray)
                    .padding(.horizontal, 20)
            }
        }
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ListDetailView(item: ListElement(icon: "", image: "", title: "", text: ""))
    }
}
