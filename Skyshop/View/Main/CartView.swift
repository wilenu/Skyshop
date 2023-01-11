//
//  CartView.swift
//  Skyshop
//
//  Created by Willy Nuñez on 26-12-22.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView{
           /* if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id){ product in
                    ProductRow(product: product)
                        .environmentObject(cartManager)
                }
                
                HStack{
                    Text("El total es")
                    Spacer()
                    Text("$\(cartManager.total).00")
                        .bold()
                }
                .padding()
            } else {
                Text("Tu carrito esta vacio")
            }*/
        }
        .navigationTitle("Mi carrito")
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
