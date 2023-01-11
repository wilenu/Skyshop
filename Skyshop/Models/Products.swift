//
//  Products.swift
//  Skyshop
//
//  Created by Willy Nuñez on 26-12-22.
//

import Foundation

struct Products: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let price: Int
   
}

extension Products {
    
    static let all:[Products] = [
        Products(
            name: "Hallacas andinas",
            image: "logo",
            description: "Plato tradicional Venezolano, esto es una prunba para ver como se ve en la pantalla",
            price: 10
        ),Products(
            name: "Hallacas",
            image: "logo",
            description: "Plato tradicional Venezolano",
            price: 11
        ),Products(
            name: "Perro Caliente",
            image: "logo",
            description: "Plato tradicional Venezolano",
            price: 12
        ),Products(
            name: "Hamburguesa",
            image: "logo",
            description: "Plato tradicional Venezolano",
            price: 13
        ),Products(
            name: "Pepito",
            image: "logo",
            description: "Plato tradicional Venezolano",
            price: 14
        ),Products(
            name: "Hallacas andinas",
            image: "logo",
            description: "Plato tradicional Venezolano",
            price: 15
        ),Products(
            name: "Hallacas andinas",
            image: "logo",
            description: "Plato tradicional Venezolano",
            price: 16
        ),Products(
            name: "Hallacas andinas",
            image: "logo",
            description: "Plato tradicional Venezolano",
            price: 17
        )
    ]
}



