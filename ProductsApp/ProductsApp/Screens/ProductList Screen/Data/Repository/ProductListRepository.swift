//
//  ProductListRepositoryContract.swift
//  ProductsApp
//
//  Created by Esraa Sliem on 10/12/2022.
//

import Foundation
import Combine

final class ProductListRepository: ProductListRepositoryContract {
  
    private let service: ProductListServiceContract
    
    init(service: ProductListServiceContract = ProductListService()){
        self.service = service
    }
    
    func getProductList() -> AnyPublisher<ProductList, Error>
    {
        service.getProductList()
    }
}
