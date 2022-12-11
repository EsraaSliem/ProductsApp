//
//  PoductDetailsView.swift
//  ProductsApp
//
//  Created by Esraa Sliem on 10/12/2022.
//

import SwiftUI

struct PoductDetailsView: View {
    @ObservedObject var viewModel: PoductDetailsViewModel
    
    var body: some View{
        contentView
    }
}

struct PoductDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        PoductDetailsView(viewModel: PoductDetailsViewModel.init(product: ProductData(createdDate: "", price: "", imageURLs: [], imageThubnails: [], name: "", uid: "")))
    }
}
