//
//  PoductDetailsViewModel.swift
//  ProductsApp
//
//  Created by Esraa Sliem on 10/12/2022.
//

import Foundation

class PoductDetailsViewModel: ObservableObject {
    @Published var product: ProductData
    
    init(product: ProductData) {
        self.product = product
    }
    
}
