//
//  WishListView.swift
//  Skyshop
//
//  Created by Willy Nuñez on 26-12-22.
//

import SwiftUI

struct WishListView: View {
    @StateObject var cartmanager = CartManager()
    var body: some View {
        NavigationView {
            ScrollView{
           
            }
            .navigationTitle("Lista de deseos")
            .toolbar {
                NavigationLink{
                    CartView()
                }label: {
                    CartButton(numberOffProducts: 1)
                }
            }
        }
        .navigationViewStyle(.stack)
    }
}


struct WishListView_Previews: PreviewProvider {
    static var previews: some View {
        WishListView()
    }
}
