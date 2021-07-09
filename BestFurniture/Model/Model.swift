//
//  Model.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 5.07.21.
//

import Foundation

struct Furniture: Identifiable, Codable {
    
    var id: Int
    let name: String
    let category: String
    let description: String
    var isFavorite: Bool
    
    let price: Double
    var priceStr: String {
        String(format: "$%.1f", price)
    }
    
    let images: [String]
}
//
//struct ImagePreview: Identifiable, Codable {
//    var id = UUID().uuidString
//    let name: String
//}
