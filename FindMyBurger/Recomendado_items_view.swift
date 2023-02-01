//
//  Recomendado_items_view.swift
//  FindMyBurger
//
//  Created by Juan jose Morales on 30/1/23.
//

import SwiftUI

struct Recomendado_items_view: View {
    var item: Recomendado
    var body: some View {
        
        ZStack{
            
            BackgroundColorView()
            
            VStack(spacing:5){
                
                Image(systemName: "flame")
                    .font(.footnote)
                    .foregroundColor(.red)
                    .padding(8)
                    .background(Color.orange.opacity(0.1))
                    .clipShape(Circle())
                
                    .frame(maxWidth: .infinity, alignment: .trailing)
                    .padding(-10)
                
                Image(item.image)
                    .resizable()
                    .aspectRatio( contentMode: .fit)
                    .frame(width:getRect().width / 2.5)
                    .padding(.top,6)
                    .cornerRadius(20)
                
                Text(item.name)
                    .fontWeight(.bold)
                
                HStack{
                    Text(item.direction)
                        .foregroundColor(.black.opacity(0.40))
                        .font(.system(size: 12))
                    
                    Image("Stars")
                        .resizable()
                        .frame(width: 15, height: 15)
                        .padding(.horizontal,4)
                    
                    Text(item.qualification)
                        .fontWeight(.semibold)
                    
                }
                
            }
            .padding()
            .background(Color.white)
            .cornerRadius(25)
            
            .shadow(color: Color.black.opacity(0.06), radius: 5, x: 5 , y: 5)
            
        }
    }
}
struct Recomendado_items_view_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreenView()
    }
}
