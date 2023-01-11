//
//  HomeView.swift
//  Skyshop
//
//  Created by Willy Nuñez on 26-12-22.
//

import SwiftUI

struct HomeView: View {
    @StateObject var cartmanager = CartManager()
    var productsList:[Products]
    var body: some View {
        NavigationView {
            ScrollView{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15){
                    ForEach(productsList){ product in ProductsCard(products: product)
                            .environmentObject(cartmanager)
                        }
                    }
                .padding()
                }
            .navigationTitle("Productos")
            .toolbar {
                NavigationLink{
                    CartView()
                        .environmentObject(cartmanager)
                }label: {
                    CartButton(numberOffProducts: cartmanager.products.count)
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(productsList: Products.all)
    }
}
