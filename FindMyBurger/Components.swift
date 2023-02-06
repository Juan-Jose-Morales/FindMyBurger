//
//  Components.swift
//  FindMyBurger
//
//  Created by Juan jose Morales on 31/1/23.
//

import SwiftUI

struct BackgroundColorView: View {
    var body: some View {
        Color("Fondo").ignoresSafeArea()
        
    }
}

struct TitleView: View {
    var title: String
    
    var body: some View {
        Text(title)
            .foregroundColor(.black)
            .font(.system(size: 30, weight: .bold))
            .padding(.top, 20)
    }
    
}

struct Logo2: View {
    
    var body: some View{
        
        Image("Logo2")
            .resizable()
            .frame(width: 115, height: 90)
            .padding(.bottom, 5)
    }
   
}

