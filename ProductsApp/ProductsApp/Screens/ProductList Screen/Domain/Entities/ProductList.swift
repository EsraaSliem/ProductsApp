//
//  ProductList.swift
//  ProductsApp
//
//  Created by Esraa Sliem on 10/12/2022.
//

import Foundation
struct ProductList: Codable {
    let products: [ProductData]
    
    enum CodingKeys: String, CodingKey {
        case products = "results"
    }
}
