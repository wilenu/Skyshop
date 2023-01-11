//
//  CartManager.swift
//  Skyshop
//
//  Created by Willy Nuñez on 26-12-22.
//

import Foundation

class CartManager: ObservableObject{
    @Published private(set) var products:[Products] = []
    @Published private(set) var total:Int = 0
    
    func addToCart(product: Products) {
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: Products) {
        products = products.filter { $0.id != product.id}
            total -= product.price
    }
}
