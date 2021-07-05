//
//  String.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 5.07.21.
//

import Foundation

extension StringProtocol {
    var firstCapitalized: String { prefix(1).capitalized + dropFirst() }
}
