//
//  Model.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 5.07.21.
//

import SwiftUI

struct Furniture: Identifiable, Codable, Hashable {
    var id: Int
    var name: String
    var category: String
    var description: String
    var isFavorite: Bool
    
    private var price: Double
    var priceStr: String {
        String(format: "$%.1f", price)
    }
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}
