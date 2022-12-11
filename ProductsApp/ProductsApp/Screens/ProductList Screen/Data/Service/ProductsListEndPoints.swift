//
//  ProductsListEndPoints.swift
//  ProductsApp
//
//  Created by Esraa Sliem on 10/12/2022.
//

import Foundation
import SwiftUI

enum ProductsListEndPoint: EndPointProtcol {
    case getProductsList

    var path: String {
        return "/dynamodb-writer"
    }
    
    var baseURL: String {
        return "https://ey3f2y0nre.execute-api.us-east-1.amazonaws.com/default"
    }
    
    var urlRequest: URLRequest? {
        let url = URL(string: baseURL+path )
        let components = URLComponents(string: url?.absoluteString ?? "" )
        guard let fullURL = components?.url else { return nil}
        return URLRequest(url: fullURL)
    }
}


