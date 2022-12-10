//
//  NetworkClient.swift
//  ProductsApp
//
//  Created by Esraa Sliem on 10/12/2022.
//

import Foundation
import Combine
class NetworkClient: NetworkClientContact {
    static let shared = NetworkClient()
    func request<T>(request: URLRequest) -> AnyPublisher<T, Error> where T : Decodable {
        return URLSession.shared.dataTaskPublisher(for: request).tryMap { output in
            guard (output.response as? HTTPURLResponse)?.statusCode == 200 else{
                throw NSError(domain: "Invalid Response", code: 0, userInfo: [:])
            }
            return output.data
        }
        .decode(type: T.self, decoder: JSONDecoder())
        .mapError({ error in
            NSError(domain: "decoding", code: 0, userInfo: [:])
        })
        .eraseToAnyPublisher()
    }
}
