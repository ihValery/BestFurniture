//
//  ScreenSize.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 5.07.21.
//

import UIKit

class ScreenSize {
    
    func insets(_ number: Int, or: Int? = nil) -> CGFloat? {
        if let numberTwo = or {
            return CGFloat(UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? number : numberTwo)
        }
        
        return UIApplication.shared.windows.first?.safeAreaInsets.bottom
    }
}
