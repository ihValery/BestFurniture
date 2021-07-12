//
//  ViewModel.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 6.07.21.
//

import SwiftUI
import Combine

class FurnitureViewModel: ObservableObject {
    var localDataFetcher = LocalDataFetcher()
    @Published var furnitures: [Furniture]
    @Published var offset: CGFloat
    
    init() {
        self.furnitures = localDataFetcher.load("furnitureData.json")
        self.offset = 0
    }
    
    func like(_ furniture: Furniture) {
        guard  let index = furnitures.searchIndex(furniture) else { return }
        furnitures[index].isFavorite.toggle()
    }
}
