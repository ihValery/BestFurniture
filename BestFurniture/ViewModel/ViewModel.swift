//
//  ViewModel.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 6.07.21.
//

import Foundation
import Combine

class FurnitureViewModel: ObservableObject {
    var localDataFetcher = LocalDataFetcher()
    @Published var furnitures: [Furniture]
    
    init() {
        self.furnitures = localDataFetcher.load("furnitureData.json")
    }
    
    func like(_ furniture: Furniture) {
        guard  let index = furnitures.searchIndex(furniture) else { return }
        furnitures[index].isFavorite.toggle()
    }
}
