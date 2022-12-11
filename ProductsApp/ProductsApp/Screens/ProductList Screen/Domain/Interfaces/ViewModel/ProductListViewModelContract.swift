//
//  ProductListViewModelContract.swift
//  ProductsApp
//
//  Created by Esraa Sliem on 10/12/2022.
//

import SwiftUI

typealias ProductListViewModelContract = ObservableObject & ProductListViewModelContractInput & ProductListViewModelContractOutput

protocol ProductListViewModelContractInput {
    func getProdutList()
}

protocol ProductListViewModelContractOutput {
    var products: [ProductData] { get set }
}

