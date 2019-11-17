//
//  ListElementView.swift
//  SwiftUITabView
//
//  Created by Lili on 16/10/2019.
//  Copyright © 2019 Rebeloper. All rights reserved.
//

import SwiftUI

struct ListElementView: View {
    
    var item: ListElement
    
    var body: some View {
        HStack {
            Image(item.icon)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fill)
                .frame(width: 80, height: 80).padding(.leading, 10).padding(.trailing, 10)
            VStack(alignment: .leading) {
              Text(item.title)
               // .font(.headline)
               //.fontWeight(.bold)
                .padding(5)
       Text(item.text)
                .font(.subheadline)
        .foregroundColor(Color.gray).padding(.leading, 20).padding(.trailing, 20)
             .lineLimit(5)
            }
        }
    }
}

struct ListElementView_Previews: PreviewProvider {
    static var previews: some View {
        ListElementView(item: ListElement(icon: "", image: "", title: "", text: ""))
    }
}
