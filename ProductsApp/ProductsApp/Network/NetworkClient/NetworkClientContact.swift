//
//  NetworkClientContact.swift
//  ProductsApp
//
//  Created by Esraa Sliem on 10/12/2022.
//

import Foundation
import Combine
protocol NetworkClientContact {
    func request<T:Decodable>(request: URLRequest) -> AnyPublisher<T, Error>
}

