//
//  Recomendado.swift
//  FindMyBurger
//
//  Created by Juan jose Morales on 30/1/23.
//

import SwiftUI

struct Recomendado: Identifiable {
    
    var id = UUID().uuidString
    var name: String
    var image: String
    var direction: String
    var stars_image: String
    var qualification: String
     
}

var recomendado_items = [

Recomendado(name: "Burmet", image: "Burmet", direction: "C. Luis Vives, 9", stars_image: "Stars", qualification: "5"),
Recomendado(name: "Toro Burger", image: "Toro_Burger", direction: "C. de Atocha, 51, 28012 Madrid", stars_image: "Stars", qualification: "5"),
Recomendado(name: "Goiko", image: "Burmet", direction: "C. Luis Vives, 9", stars_image: "Stars", qualification: "5"),
Recomendado(name: "Convexo", image: "Convexo", direction: "C. de Atocha, 51, 28012 Madrid", stars_image: "Stars", qualification: "5")
]
