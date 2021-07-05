//
//  FurnitureViewModel.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 5.07.21.
//

import Foundation
import Combine

class FurnitureViewModel: ObservableObject {
    var localDataFetcher = LocalDataFetcher()
    @Published var furnitures: [Furniture]
    
    init() {
        self.furnitures = localDataFetcher.load("furnitureData.json")
    }
}
