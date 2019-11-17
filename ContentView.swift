import SwiftUI

struct ContentView: View {
   
    init() {
        UITabBar.appearance().backgroundColor = UIColor.red
    }
    
    @State var selected = 3
    
    var body: some View {
        TabView(selection: $selected) {
            StoreView().tabItem({
                Image(systemName: Constants.TabBarImageName.tabBar3)
                .font(.title)
                
               // .scaledFont(name: "Georgia", size: 12)
                Text("\(Constants.TabBarText.tabBar3)")
            }).tag(3)
            
             ContentView2().tabItem({
                Image(systemName: Constants.TabBarImageName.tabBar0)
                    .font(.title)
                Text("\(Constants.TabBarText.tabBar0)")
            }).tag(0)
            
            OurApproach().tabItem({
                Image(systemName: Constants.TabBarImageName.tabBar2)
                    .font(.title)
                Text("\(Constants.TabBarText.tabBar2)")
            }).tag(2)
            
           AboutUsView().tabItem({
                Image(systemName: Constants.TabBarImageName.tabBar1)
                    .font(.title)
                Text("\(Constants.TabBarText.tabBar1)")
            }).tag(1)
        }.accentColor(Color.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
