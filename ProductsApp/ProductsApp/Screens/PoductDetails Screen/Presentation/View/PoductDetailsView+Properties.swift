//
//  PoductDetailsView+Properties.swift
//  ProductsApp
//
//  Created by Esraa Sliem on 11/12/2022.
//

import SwiftUI
extension PoductDetailsView {
    var title: some View {
        Text(viewModel.product.name)
            .padding(10)
            .font(.system(size: 24))
    }
    
    var priceText: some View {
        Text("Price: \(viewModel.product.price)")
            .padding(10)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    var creationDateText: some View {
        Text("Creation Date: \(viewModel.product.date ?? "")")
            .padding(10)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    var contentView: some View {
        GeometryReader { geometry in
            VStack {
                title
                ScrollView (.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(viewModel.product.imageURLs, id: \.self) { image in
                            AsyncImage(url: URL(string: image))
                                .frame(height: geometry.size.width - 20)
                                .frame(width: geometry.size.width - 20)
                        }
                    }
                }
                .padding(.leading, 10)
                .padding(.trailing, 10)
                creationDateText
                priceText
                
            }
        }
    }
}
