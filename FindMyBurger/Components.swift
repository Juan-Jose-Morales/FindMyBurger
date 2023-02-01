//
//  Components.swift
//  FindMyBurger
//
//  Created by Juan jose Morales on 31/1/23.
//

import SwiftUI

struct BackgroundColorView: View {
    var body: some View {
        Color.white.ignoresSafeArea()
        
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


