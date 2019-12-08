

import SwiftUI
struct Post {
    let id: Int
    let username, text,text1 , imageName: String
    

}

struct StoreView: View {
    
    
    let posts : [Post] = [
        .init(id: 0, username: "IT CONSULTING SERVICES", text: "Use the expertise and deep tech background of the best minds at ML to create a comprehensive IT strategy for a digital and technological transformation of your organization that goes in line with your business objectives. Our strategic IT consulting will help you automate and digitalise operations, optimise the software portfolio, and implement the latest technologies.", text1: " BE ZEN. WE BUILD YOUR BRAND'S FUTURE", imageName: "face123"),
        .init(id: 1, username: "IT STRATEGY CONSULTING & NEW TECH", text: "Today, you need to ensure the consistent delivery of high-quality IT products and services for your enterprise workflow and your customers. You also need to implement new technologies to stay competitive and meet the demands of modern users. Our IT solutions consulting will help your strike the balance between these two objectives, ensuring they don’t conflict between one another.", text1: "BE ZEN. WE BUILD YOUR BRAND'S FUTURE",imageName: "face123456"),
        .init(id: 2, username: "SOFTWARE PORTFOLIO CONSULTING", text: "Our IT consulting advisors will conduct a deep analysis of how your business and employees use your existing enterprise software, as well as of your enterprise mobile strategy. Then, they will provide suggestions for the required changes, new developments, and integration of third-party solutions to remove the existing roadblocks.",text1: "BE ZEN. WE BUILD YOUR BRAND'S FUTURE",imageName: "face1234567"),
        
        
]
    
    var body: some View {
        NavigationView {
            
            List{
                VStack(alignment: .leading){
                    Text("IT STRATEGY CONSULTING THE LATEST TECH")
                    ScrollView(.horizontal , showsIndicators: false){
                    VStack(alignment: .leading){
                  
                    HStack{
                          NavigationLink(destination:GroupDetailView()){
                     GroupView()
                        }
                        NavigationLink(destination:GroupDetailView2()){
                        GroupView2()
                            
                        }
                        NavigationLink(destination:GroupDetailView3()){
                        GroupView3()
                            
                        }
                        NavigationLink(destination:GroupDetailView4()){
                        GroupView4()
                            
                        }
                        NavigationLink(destination:GroupDetailView5()){
                        GroupView5()
                            
                        }
                        
                        }
                    }
                }.frame(height:200)
                }
                
                
            ForEach(posts, id: \.id) { post in
                PostView(post: post)
                
                
                    }
            }.navigationBarTitle(Text("IT CONSULTING SERVICES"))
                .font(.system(size: 14))
              

        
                  
    }
    }
}



struct GroupDetailView: View {
    var body : some View{
        Text("At ML we believe that Distributed Ledger Technologies (DLTs) carry the potential to introduce a new level of transparency, automation, and efficiency in businesses and nonprofits.Most organizations find it challenging to understand and apply the full power of Blockchain and DLTs to get tangible business results. Our team is passionate about utilizing our technical capabilities, experience, and product mindset to help our clients effectively extract real business value by implementing blockchain and DLT across their organization. ").foregroundColor(Color.gray).padding(EdgeInsets(top: 0, leading: 60, bottom: 0, trailing: 60))
        .font(.system(size: 20))
    }
}
struct GroupView: View {
    var body : some View {
        
    VStack(alignment: .leading) {
        Image("99").renderingMode(.original).cornerRadius(5)
        Text("Blockchain Technology ").lineLimit(4).padding(.leading, 0)
  }.frame(width:170, height:190)
        
    }
}

struct GroupDetailView2: View {
    var body : some View{
        Text("A company with a strong focus on emerging technology, ML started to explore the potential of Augmented Reality back in 2015. We think that the technology is the next step in the evolution of Architecture, Engineering, and Construction, as well as other industries.This change is challenging, but Intellectsoft is ready to contribute. As a result, our R&D efforts have called for the creation of a separate AR development studio.Having extensive experience in building enterprise solutions, some of ML best engineers, designers, and analysts are now bringing AR to the biggest industries.").foregroundColor(Color.gray).padding(EdgeInsets(top: 0, leading: 60, bottom: 0, trailing: 60))
        .font(.system(size: 20))
    }
}
struct GroupView2: View {
    var body : some View {
        
    VStack(alignment: .leading) {
        Image("AUGMENTED REALITY").renderingMode(.original).cornerRadius(5)
        Text("Augmented Reality").lineLimit(2).padding(.leading, 0)
  }.frame(width:170, height:190)
        
    }
}
struct GroupDetailView3: View {
    var body : some View{
        Text("Use machine and deep learning algorithms to tackle your Big Data, and get valuable insights into your operations. Create AI-based predictive models for fail-safe decision making.").foregroundColor(Color.gray).padding(EdgeInsets(top: 0, leading: 60, bottom: 0, trailing: 60))
        .font(.system(size: 20))
    }
}
struct GroupView3: View {
    var body : some View {
        
    VStack(alignment: .leading) {
        Image("ARTIFICIAL INTELLIGENCE").renderingMode(.original).cornerRadius(5)
        Text("Artificial Intelligence").lineLimit(2).padding(.leading, 0)
  }.frame(width:170, height:190)
        
    }
}
struct GroupDetailView4: View {
    var body : some View{
        Text("Use secure IoT solutions to monitor your operations, optimise them, and introduce high efficiency. Gain more insights from the Big Data gathered by IoT devices.").foregroundColor(Color.gray).padding(EdgeInsets(top: 0, leading: 60, bottom: 0, trailing: 60))
        .font(.system(size: 20))
    }
}
struct GroupView4: View {
    var body : some View {
        
    VStack(alignment: .leading) {
        Image("INTERNET OF THINGS").renderingMode(.original).cornerRadius(5)
        Text("Intrnet of Things").lineLimit(2).padding(.leading, 0)
  }.frame(width:170, height:190)
        
    }
}
struct GroupDetailView5: View {
    var body : some View{
        Text("Use cloud platforms like Microsoft Azure and Amazon AWS to create a flexible, scalable, and connected business environment.").foregroundColor(Color.gray).padding(EdgeInsets(top: 0, leading: 60, bottom: 0, trailing: 60))
        .font(.system(size: 20))
    }
}
struct GroupView5: View {
    var body : some View {
        
    VStack(alignment: .leading) {
        Image("CLOUD COMPUTING").renderingMode(.original).cornerRadius(5)
        Text("Cloud Computing").lineLimit(2).padding(.leading, 0)
                     
    }.frame(width:170, height:170)
                              
        
    }
}

struct PostView: View {
    let post: Post
    var body: some View {
        VStack(alignment: .leading, spacing: 14){
            HStack(){
                Image("logo")
                    .resizable()
                    .clipShape(Circle())
                    .frame(width:60, height:60)
                    .clipped()
                VStack(alignment: .leading, spacing: 4){
                    Text(post.username).font(.headline)
                    Text(post.text1).font(.subheadline)
                    }.padding(.leading, 8).padding(.trailing , 10)
               
            }.padding(.leading,10).padding(.top, 10)
            VStack(alignment: .leading) {
                
                Text(post.text ).padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                .font(.system(size: 15)) .font(.body)
                                     .foregroundColor(.gray)
                                     .lineSpacing(10)
             }.padding(.leading, 10).padding(.trailing , 10)
            VStack() {
            Image(post.imageName)
           .resizable()
                // .aspectRatio(contentMode: .fit)
               // .clipped()
                .frame(width: 400
                )
            }.padding(.leading, -10).padding(.trailing , 0)
        }
    }
}
struct StoreView_Previews: PreviewProvider {
    static var previews: some View {
        StoreView()
    }
}
