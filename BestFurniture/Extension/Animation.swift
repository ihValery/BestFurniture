//
//  Animation.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 6.07.21.
//

import SwiftUI


extension Animation {
    
    static func ripple(_ index: Int) -> Animation {
        Animation.spring(dampingFraction: 0.8)
            .speed(1)
            .delay(0.1 * Double(index))
    }
}
