
//

import SwiftUI 

struct OurApproach: View {
    
    @State var animation = true
    
    var body: some View {
        VStack(spacing: 10) {
                  
            Button(action: { self.animation.toggle() }) {
            Text("CRM")
                
                .fontWeight(.bold)
                .foregroundColor(Color.purple)
                .shadow(color: .gray, radius: 10, x: 0, y: 10)
            }  
                .offset(y: animation ? UIScreen.main.bounds.height / 2.5 : 0)
                .animation(.easeInOut(duration: 2))
           
            Text("CRM that scales as you do Customer relationship management isn’t just for big businesses. Create stronger connections from day 1 with our Marketing CRM tools, and find everything you need to have relevant conversations with your people — whether you’re building a brand new audience or you have thousands of contacts already. Get a holistic view of your audience. Whether you’re starting from scratch with CRM or bringing an existing audience into ML, connecting your favorite tools and keeping all your contact data in ML helps you stay organized and improve your marketing.")
                
                .font(.body)
                .foregroundColor(.gray)
                .lineSpacing(10)
                .lineLimit(300)
                .opacity(animation ? 0 : 1)
                  
                
                .animation(Animation.easeInOut(duration: 3))
        }
        .frame(minHeight: 0, maxHeight: .infinity)
        .padding(.horizontal, 30)
       .onAppear { self.animation.toggle() }
    }
}
   

struct OurApproach_Previews: PreviewProvider {
    static var previews: some View {
        OurApproach()
    }
}
