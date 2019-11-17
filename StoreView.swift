

import SwiftUI
struct Post {
    let id: Int
    let username, text,text1 , imageName: String
    

}

struct StoreView: View {
    
    
    let posts : [Post] = [
        .init(id: 0, username: "OUR IT CONSULTING SERVICES", text: "We offer IT consulting services that will help you improve your software architecture, create a tech-driven digital strategy, and improve operations by optimising your software portfolio. Our software engineers will finish your digital transformation journey through careful planning and effective execution of the outlined IT strategy.", text1: "Deo Consulting", imageName: "0909"),
        .init(id: 1, username: "OUR IT CONSULTING PROCESS", text: "For more than 5 years now DEO has been helping organizations of different scale and structure to improve and modernise their IT strategies. Some of our IT experts have worked in the industry for over fifteen years. This has allowed us to craft an effective approach to IT consulting that enables us to deliver maximum benefit in the shortest time.", text1: "Deo Consulting",imageName: "9090"),
        .init(id: 2, username: "ANALYSIS", text: "Our IT consulting advisors study your existing software solutions and the ways in which your employees use them, identifying problems in workflows and automation.",text1: "1 - Step  ",imageName: "123"),
        .init(id: 3, username: "STRATEGY", text: "The advisors design a roadmap and strategy that will help your business leverage the latest technologies and de-clutter your software infrastructure. Then, they set software and employee KPIs.",text1: "2 - Step  ",imageName: "1234"),
        .init(id: 4, username: "PERFORMANCE", text: "Impactful IT consulting services rely on collaboration between the client and the IT consulting company. Our experts will closely analyse your workflows, tracking the performance to discover the pain points. Our software engineers will then eliminate the impeding elements.",text1: "3 - Step.  " ,imageName: "12345"),
        .init(id: 5, username: "IMPROVEMENTS", text: "After completing the initially set goals, our IT consulting advisors and software engineers recommend steps for future improvements, as well as assist with implementing them.",text1: "4 - Step.  " ,imageName: "123456")
       
        
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
            }.navigationBarTitle(Text("DEO  IT CONSULTING")).font(.system(size: 16))
                
        
                  
    }
    }
}



struct GroupDetailView: View {
    var body : some View{
        Text("At DEO we believe that Distributed Ledger Technologies (DLTs) carry the potential to introduce a new level of transparency, automation, and efficiency in businesses and nonprofits.Most organizations find it challenging to understand and apply the full power of Blockchain and DLTs to get tangible business results. Our team is passionate about utilizing our technical capabilities, experience, and product mindset to help our clients effectively extract real business value by implementing blockchain and DLT across their organization. ").foregroundColor(Color.gray).padding(EdgeInsets(top: 0, leading: 60, bottom: 0, trailing: 60))
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
        Text("A company with a strong focus on emerging technology, DEO started to explore the potential of Augmented Reality back in 2015. We think that the technology is the next step in the evolution of Architecture, Engineering, and Construction, as well as other industries.This change is challenging, but Intellectsoft is ready to contribute. As a result, our R&D efforts have called for the creation of a separate AR development studio.Having extensive experience in building enterprise solutions, some of DEO best engineers, designers, and analysts are now bringing AR to the biggest industries.").foregroundColor(Color.gray).padding(EdgeInsets(top: 0, leading: 60, bottom: 0, trailing: 60))
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
                    }.padding(.leading, 8)
               
            }.padding(.leading,10).padding(.top, 10)
            VStack(alignment: .leading) {
                
                Text(post.text ).padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                .font(.system(size: 15)) .font(.body)
                                     .foregroundColor(.gray)
                                     .lineSpacing(10)
            }
            VStack() {
            Image(post.imageName)
           .resizable()
                 .aspectRatio(contentMode: .fit)
                .clipped()
                .frame(width: 380)
        }.padding(.leading, 0).padding(.trailing, 0)
        }
    }
}
struct StoreView_Previews: PreviewProvider {
    static var previews: some View {
        StoreView()
    }
}
