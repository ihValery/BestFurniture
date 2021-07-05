//
//  ScreenSize.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 5.07.21.
//

import UIKit

class ScreenSize {
    
    func insets(_ number: Int, or: Int? = nil) -> CGFloat? {
        if let number2 = or {
            return CGFloat(UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? number : number2)
        }
        
        return UIApplication.shared.windows.first?.safeAreaInsets.bottom
    }
}
