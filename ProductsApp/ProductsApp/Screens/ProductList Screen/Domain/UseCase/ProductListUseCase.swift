//
//  ProductListUseCase.swift
//  ProductsApp
//
//  Created by Esraa Sliem on 10/12/2022.
//

import Foundation
import Combine

class ProductListUseCase: ProductListUseCaseContract {
    private let repositry: ProductListRepositoryContract
    
    init(repositry: ProductListRepositoryContract = ProductListRepository()){
        self.repositry = repositry
    }
    
    func execute() -> AnyPublisher<ProductList, Error>
    {
        repositry.getProductList()
    }
}
