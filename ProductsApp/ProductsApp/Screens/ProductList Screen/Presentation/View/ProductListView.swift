//
//  ProductListView.swift
//  ProductsApp
//
//  Created by Esraa Sliem on 10/12/2022.
//

import Foundation
import SwiftUI
import Combine

struct ProductListView: View {
    @ObservedObject var viewModel: ProductListViewModel
    var body: some View{
        contentView
    }
}

struct ProductListView_Previews: PreviewProvider {
    static var previews: some View {
        ProductListView(viewModel: .init())
    }
}
