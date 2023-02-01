//
//  ContentView.swift
//  FindMyBurger
//
//  Created by Juan jose Morales on 20/1/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var color = Color.black.opacity(0.7)
    @State var email = ""
    var body: some View{
        
        HomeScreenView()
    }
    
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
    
}
