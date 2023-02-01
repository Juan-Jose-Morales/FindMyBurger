//
//  HomeScreenView.swift
//  FindMyBurger
//
//  Created by Juan jose Morales on 30/1/23.
//

import SwiftUI

struct HomeScreenView: View {
    
    init(){
        UITabBar.appearance().isHidden = true
        
    }
    
    @State var selectedCategory : Category = categories.first!
    @State var selectedTab: String = "home"
    @State var searchText = ""
    var body: some View {
        
        ZStack{
            
            BackgroundColorView()
            
            VStack(spacing: 0){
                
                TabView{
                    LandingPage(selectedCategory: $selectedCategory)
                        .tag("Home")
                    
                    Color.pink
                        .tag("heart")
                    Color.yellow
                        .tag("map")
                    Color.red
                        .tag("person")
                    
                }
                
                CustomTabBar(selectedTab: $selectedTab)
            }
        }
        
    }
}

struct HomeScreenView_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}

extension View{
    
    func getRect()->CGRect{
        return UIScreen.main.bounds
        
    }
    
}
