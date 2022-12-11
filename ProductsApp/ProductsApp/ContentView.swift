//
//  ContentView.swift
//  ProductsApp
//
//  Created by Esraa Sliem on 10/12/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ProductListView(viewModel: .init())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
