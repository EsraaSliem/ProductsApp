//
//  ProductData.swift
//  ProductsApp
//
//  Created by Esraa Sliem on 10/12/2022.
//

import Foundation
struct ProductData: Codable, Hashable {
    let createdDate: String
    var date: String? {
        return createdDate.components(separatedBy: " ")[0]
    }
    let price: String
    let imageURLs: [String]
    let imageThubnails: [String]
    let name: String
    let uid: String
    
    enum CodingKeys: String, CodingKey {
        case uid, name, price
        case createdDate = "created_at"
        case imageURLs = "image_urls"
        case imageThubnails = "image_urls_thumbnails"
    }
}
