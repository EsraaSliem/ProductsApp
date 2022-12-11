//
//  ProductListView+Properties.swift
//  ProductsApp
//
//  Created by Esraa Sliem on 11/12/2022.
//

import SwiftUI
extension ProductListView {
    var progressView: some View {
        HStack(spacing: 15) {
            ProgressView()
            Text("Loading…")
        }
    }
    
    var listView: some View {
        List {
            ForEach(viewModel.products, id: \.self) { product in
                NavigationLink(destination: PoductDetailsView(viewModel: .init(product: product))) {
                    Text(product.name)
                        .padding()
                }
            }
        }
        .navigationBarTitle("Products")
    }
    
    var contentView: some View {
        NavigationView {
            if viewModel.isLodaing {
                progressView
            } else {
             listView
            }
        }
    }
}
