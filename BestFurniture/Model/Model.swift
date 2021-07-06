//
//  Model.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 5.07.21.
//

import SwiftUI

struct Furniture: Identifiable, Codable, Hashable {
    let id: Int
    let name: String
    let category: String
    let description: String
    var isFavorite: Bool
    
    private let price: Double
    var priceStr: String {
        String(format: "$%.1f", price)
    }
    
    private let imageName: String
    var image: Image {
        Image(imageName)
    }
}
