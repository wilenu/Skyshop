//
//  ContentView.swift
//  Skyshop
//
//  Created by Willy Nuñez on 26-12-22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        TabBar()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(CartManager())

    }
}
