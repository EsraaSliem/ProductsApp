//
//  EndPointProtcol.swift
//  ProductsApp
//
//  Created by Esraa Sliem on 10/12/2022.
//

import Foundation
protocol EndPointProtcol {
    var baseURL: String { get }
    var params: [String: Any] { get }
    var path: String { get }
    var urlRequest: URLRequest? { get }
}
