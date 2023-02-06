//
//  RestaurantView.swift
//  FindMyBurger
//
//  Created by Juan jose Morales on 6/2/23.
//

import SwiftUI

struct RestaurantView: View {
    
    @State var selectedCategory : Category = categories.first!
    @State var selectedTab: String = "home"
    @StateObject var restaurantData = RestaurantViewModel()
    
    var body: some View {
        
        ScrollView{
            
            
            
            LazyVStack(alignment: .leading,spacing: 15,pinnedViews: [.sectionHeaders], content: {
                
                //Parallax header
                
                GeometryReader{ reader -> AnyView in
                    
                    let offset = reader.frame(in: .global).minY
                    
                    
                    if -offset >= 0{
                        
                        DispatchQueue.main.async {
                            self.restaurantData.offset = -offset
                        }
                    }
                    
                    return AnyView (
                    
                        Image("1")
                            .resizable()
                            .aspectRatio( contentMode: .fill)
                            .frame(width: UIScreen.main.bounds.width, height: 250 + (offset > 0 ? offset : 0))
                            .cornerRadius(10)
                            .offset( y: (offset > 0 ? -offset : 0))
                    )
                }
                .frame(height: 250)
                
                
                //Cards
                Section(header: RestaurantHeaderView()){
                    
                    
                    ForEach(tabsItems){ tab in
                        
                        VStack(alignment: .leading,spacing: 15, content:{
                            
                            Text(tab.tab)
                                .font(.title2)
                                .fontWeight(.bold)
                                .padding(.bottom)
                                .padding(.leading)
                            
                            ForEach(tab.restaurants){ Restaurant in
                                
                                RestaurantCardView(restaurant: Restaurant)
                                
                                
                            }
                            
                            Divider()
                                .padding(.top)
                        })
                        
                        
                    }
                
                }
                
            })
            
            
        }
        
        .overlay(
        
            Color.white
                .frame(height: UIApplication.shared.windows.first?.safeAreaInsets.top)
                .ignoresSafeArea(.all ,edges: .top)
                .opacity(restaurantData.offset > 250 ? 1: 0)
            ,alignment: .top
        
        )
        .environmentObject(restaurantData)
        
        
    }
}

struct RestaurantView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantView()
    }
}
