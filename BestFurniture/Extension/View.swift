//
//  View.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 6.07.21.
//

import SwiftUI

extension View {
    
    func getRect() -> CGRect {
        UIScreen.main.bounds
    }
    
    func safeAreaInsets(_ value: Int, or: Int? = nil) -> CGFloat? {
        if let valueTwo = or {
            return CGFloat(UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? value : valueTwo)
        }
        return UIApplication.shared.windows.first?.safeAreaInsets.bottom
    }
}
