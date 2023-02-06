//
//  RestaurantHeaderView.swift
//  FindMyBurger
//
//  Created by Juan jose Morales on 6/2/23.
//

import SwiftUI

struct RestaurantHeaderView: View {
    
    @EnvironmentObject var restaurantData : RestaurantViewModel
    //@Binding var selectedCategory: Category
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10){
            
            HStack(spacing: 0){
            Button(action: {}, label: {
                
                Image(systemName: "arrow.left")
                    .font(.system(size: 20 , weight: .bold))
                    .frame(width: getSize(), height: getSize())
                    .foregroundColor(Color("Naranja"))
            })
            Text("Restaurante X")
                .font(.title)
                .fontWeight(.bold)
            
            Spacer()
            
                Button (action: {}, label: {
                    
                    Image("heart2")
                        .resizable()
                        .frame(width: 32,height: 32)
                        .padding(.top)
                })
                   
                
            
            
                
        }
        
            ZStack{
                
                VStack(alignment: .leading,spacing: 10, content: {
                    
                    Text("Av llaod")
                        .fontWeight(.semibold)
                        
                    
                    
                    
                    HStack (spacing: 8){
                      
                        Text("4.3")
                            
                        Image(systemName: "star.fill")
                            .font(.caption)
                    }
                    
                    .frame(maxWidth: .infinity , alignment: .leading)
                    
                    
//                  ScrollView(.horizontal, showsIndicators:  false, content: {
//
//                        HStack(spacing: 15){
//
//                            ForEach(categories){ Category in
//
//                                HStack(spacing: 12){
//
//                                    Image(Category.image)
//                                        .resizable()
//
//                                        .aspectRatio( contentMode: .fit)
//                                        .frame(width: 18, height: 18)
//                                        .padding(6)
//                                        .background(selectedCategory.id == Category.id ? Color.white : Color.clear)
//                                        .clipShape(Circle())
//
//                                    Text(Category.title)
//                                        .fontWeight(.bold)
//                                        .foregroundColor(selectedCategory.id == Category.id ? .white: .black)
//                                }
//                                .padding(.vertical,12)
//                                .padding(.horizontal)
//                                .background(selectedCategory.id == Category.id ? Color("Naranja") : Color.gray.opacity(0.06))
//                                .clipShape(Capsule())
//                                .shadow(color: Color.black.opacity(0.05) , radius: 5, x: 5, y: 5)
//                                .onTapGesture {
//                                    withAnimation(.spring()){
//                                        selectedCategory = Category
//                                    }
//                                }
//                            }
//                        }
//                        .padding(.horizontal)
//
//                    })
                    
                })
                
                
            }
            
            .frame(height: 60)
            
            if restaurantData.offset > 250{
                
                Divider()
                
            }
            
        }
        .padding(.horizontal,20)
        .frame(height: 130)
        .background(Color.white)
        
    }
    func getSize()-> CGFloat{
        
        if restaurantData.offset > 200{
            
            let progress = (restaurantData.offset - 200) / 50
            
            if progress <= 1.0 {
                
                return progress * 40
            }
            else{
                return 40
            }
            
        } else {
            
            return 0
        }
    }
    
}

struct RestaurantHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantView()
    }
}
