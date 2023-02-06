//
//  RestaurantCardView.swift
//  FindMyBurger
//
//  Created by Juan jose Morales on 6/2/23.
//

import SwiftUI

struct RestaurantCardView: View {
    var restaurant: Restaurant
    var body: some View {
        HStack{
            
            VStack(alignment: .leading, spacing: 10, content: {
                
                Text(restaurant.title)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(restaurant.description)
                    .font(.caption)
                    .lineLimit(3)
                
                
                Text(restaurant.price)
                    .fontWeight(.bold)
                
                
            })
            Spacer(minLength: 10)
            Image(restaurant.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 130, height: 130)
                .cornerRadius(10)
        }
        .padding(.horizontal)
        
    }
}

struct RestaurantCardView_Previews: PreviewProvider {
    static var previews: some View {
        RestaurantView()
    }
}
