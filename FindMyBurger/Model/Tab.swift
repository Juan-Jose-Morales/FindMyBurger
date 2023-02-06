//
//  Tab.swift
//  FindMyBurger
//
//  Created by Juan jose Morales on 6/2/23.
//

import SwiftUI

struct Tab: Identifiable{
    
    var id = UUID().uuidString
    var tab : String
    var restaurants: [Restaurant]
    
}

var tabsItems = [

    Tab( tab: "Ternera", restaurants: restaurantItems.shuffled()),
    Tab( tab: "Pollo", restaurants: restaurantItems.shuffled()),
    Tab( tab: "Cerdo", restaurants: restaurantItems.shuffled()),
    Tab( tab: "Pescado", restaurants: restaurantItems.shuffled()),
    Tab( tab: "Vegetal", restaurants: restaurantItems.shuffled()),
    Tab( tab: "Vegana", restaurants: restaurantItems.shuffled())
]
