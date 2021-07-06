//
//  Array.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 6.07.21.
//

import Foundation

extension Array where Element: Identifiable {
    
    func searchIndex(_ furniture: Element) -> Int? {
        for index in 0..<self.count {
            if self[index].id == furniture.id {
                return index
            }
        }
        return nil
    }
}
