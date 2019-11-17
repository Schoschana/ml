
//

import SwiftUI

struct OurApproach: View {
    
    @State var animation = true
    
    var body: some View {
        VStack(spacing: 10) {
                  
            Button(action: { self.animation.toggle() }) {
            Text("IT STRATEGY ")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(Color.black)
                .shadow(color: .gray, radius: 10, x: 0, y: 10)
            }  
                .offset(y: animation ? UIScreen.main.bounds.height / 2.5 : 0)
                .animation(.easeInOut(duration: 2))
           
            Text("Today, you need to ensure the consistent delivery of high-quality IT products and services for your enterprise workflow and your customers. You also need to implement new technologies to stay competitive and meet the demands of modern users. Our IT solutions consulting will help your strike the balance between these two objectives, ensuring they don’t conflict between one another.Our IT consulting advisors will conduct a deep analysis of how your business and employees use your existing enterprise software, as well as of your enterprise mobile strategy.")
                
                .font(.body)
                .foregroundColor(.gray)
                .lineSpacing(10)
                .lineLimit(200)
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
