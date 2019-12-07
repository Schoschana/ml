//
//  AboutUsView.swift
//  TabBarTutorial
//
//  Created by Alpar Matyas on 10/09/2019.
//  Copyright © 2019 Alpar Matyas. All rights reserved.
//

import SwiftUI

struct AboutUsView: View {
    
    @State var showDetails1 = false
    @State var showDetails2 = false
    @State var showDetails3 = false
    
    var body: some View {
        VStack {
        Person(showDetail: $showDetails1, image: "Dimitri", text: "I am the frontend developer with more than 8 years of experience.Mob: +44 7509 783 548")
            
            Person(showDetail: $showDetails2, image: "Lily", text:"I am a creative development,led strategic marketing, brand management and creative development.  Mob: +44 7937 970 421")
            
            Person(showDetail: $showDetails3, image: "David", text: "I am developer  Mob: +38 067 852 55 55")
           
        } .padding(.horizontal, 20)
        
    }
}

struct AboutUsView_Previews: PreviewProvider {
    static var previews: some View {
        AboutUsView()
    }
}

struct Person : View {
    
    @Binding var showDetail : Bool
    
    var image : String
    var text : String
    
    var body : some View {
        return   GeometryReader { geometry in
            HStack {
                Image(self.image)
                    
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: geometry.size.width / 2)
                    .cornerRadius(10)
                Spacer()
                VStack {
                    HStack {
                        Text(self.image)
                            
                        .foregroundColor(Color.gray)
                            .fontWeight(.heavy)
                       Button(action: {
                            self.showDetail.toggle()
                   }) {
                            Image(systemName: "chevron.down.circle")
                                .font(.title)
                                .rotationEffect(.degrees(self.showDetail ? 0: -180))
                                .animation(.default)
                        }
                    }.offset(y: self.showDetail ? 0 : geometry.size.height / 10)
                        .animation(.easeInOut(duration: 0.5))
                    Text(self.text)
                      .opacity(self.showDetail ? 1 : 0)
                        .foregroundColor(.secondary) .animation(Animation.easeInOut(duration: 2).speed(3))
                }.frame(width: geometry.size.width / 2)
            }
        }
    }
}
