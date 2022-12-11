//
//  ProductListService.swift
//  ProductsApp
//
//  Created by Esraa Sliem on 10/12/2022.
//

import Foundation
import Combine

final class ProductListService: ProductListServiceContract {
    private let networkClient: NetworkClientContact
    
    init(networkClient:NetworkClient  = NetworkClient.shared)
    {
        self.networkClient = networkClient
    }
    
    func getProductList() -> AnyPublisher<ProductList, Error> {
        let productsListEndPoint = ProductsListEndPoint.getProductsList
        guard let url = productsListEndPoint.urlRequest else {
            let error = NSError(domain: "invalid URL", code: 0, userInfo: [:])
            return Fail(error: error).eraseToAnyPublisher()
        }
       return networkClient.request(request: url)
    }
    
}
