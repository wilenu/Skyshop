//
//  TabBar.swift
//  Skyshop
//
//  Created by Willy Nuñez on 26-12-22.
//

import SwiftUI

struct TabBar: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        TabView{
            
            HomeView(productsList: Products.all)
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            WishListView()
                .tabItem {
                    Label("Lista de Deseos", systemImage: "star.circle")
                }
            
            CartView()
                .tabItem {
                    Label("Carrito", systemImage: "cart")
                }
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
            .environmentObject(CartManager())
    }
}
