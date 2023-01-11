//
//  ProductsCard.swift
//  Skyshop
//
//  Created by Willy Nuñez on 26-12-22.
//

import SwiftUI

struct ProductsCard: View {
    var products: Products
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom){
                Image(products.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
                VStack(alignment: .leading){
                    Text(products.name)
                        .bold()
                    
                    Text("\(products.price)$")
                        .font(.caption)
                }
                .padding()
                .frame(width: 180, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            .frame(width: 200, height: 200, alignment: .top)
            //.shadow(radius: 30)
            
            Button{

            }label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(50)
                    .padding()
                
            }
        }
    }
}

struct ProductsCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductsCard(products: Products.all[0])
    }
}
