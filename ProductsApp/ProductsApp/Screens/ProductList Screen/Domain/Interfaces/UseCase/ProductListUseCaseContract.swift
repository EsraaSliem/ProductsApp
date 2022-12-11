//
//  ProductListUseCaseContract.swift
//  ProductsApp
//
//  Created by Esraa Sliem on 10/12/2022.
//

import Combine
import Foundation

protocol ProductListUseCaseContract {
    func execute() -> AnyPublisher<ProductList, Error>
}

