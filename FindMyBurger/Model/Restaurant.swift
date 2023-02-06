//
//  Restaurant.swift
//  FindMyBurger
//
//  Created by Juan jose Morales on 6/2/23.
//

import SwiftUI


//Restaurant Model and Food items...

struct Restaurant: Identifiable{
    
    var id = UUID().uuidString
    var title: String
    var description: String
    var price: String
    var image: String

}

var restaurantItems = [


    Restaurant(title: "Hamburguesa de pollo", description: "Deliciosa hamburguesa de pollo", price: "10", image: "hamburguesadepollo"),
    Restaurant(title: "Hamburguesa de ternera", description: "Deliciosa hamburguesa de ternera ", price: "10", image: "hamburguesadeternera"),
    Restaurant(title: "Hamburguesa de costilla ", description: "Deliciosa hamburguesa de costilla de cerdo", price: "10", image: "hamburguesadecerdo"),
    Restaurant(title: "Hamburguesa de Pescado rebozado", description: "Deliciosa hamburguesa de pescado rebozado ", price: "10", image: "hamburguesadepescado"),
    Restaurant(title: "Hamburguesa Vegana", description: "Deliciosa hamburguesa vegana ", price: "10", image: "hamburguesaVegana"),
    Restaurant(title: "Hamburguesa Vegetal", description: "Deliciosa hamburguesa vegetal ", price: "10", image: "hamburguesaVegetal")
]
