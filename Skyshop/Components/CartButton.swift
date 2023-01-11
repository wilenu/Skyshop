//
//  CartButton.swift
//  Skyshop
//
//  Created by Willy Nuñez on 26-12-22.
//

import SwiftUI

struct CartButton: View {
    var numberOffProducts: Int
    var body: some View {
        ZStack(alignment: .topTrailing){
            Image(systemName: "cart")
                .padding(.top,8)
            if numberOffProducts > 0 {
                Text("\(numberOffProducts)")
                    .font(.caption2)
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 15 , height: 15)
                    .background(.red)
                    .cornerRadius(50)
            }
        }
    }
}

struct CartButton_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(numberOffProducts: 1)
    }
}
