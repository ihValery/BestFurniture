//
//  AnyTransition.swift
//  BestFurniture
//
//  Created by Валерий Игнатьев on 7.07.21.
//

import SwiftUI

extension AnyTransition {
    
    //Использовать явную анимацию withAnimation {} стр. 214
    static var updatePrice: AnyTransition {
        let insertion = AnyTransition.opacity
            .combined(with: .scale(scale: 0, anchor: .leading))
            .combined(with: .move(edge: .top))
        let removal = AnyTransition.move(edge: .bottom)
            .combined(with: .scale(scale: 0, anchor: .bottomLeading))
            .combined(with: .opacity)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}

extension AnyTransition {
    
    static var backAndTrailing: AnyTransition {
        let insertion = AnyTransition.move(edge: .trailing)
        let removal = AnyTransition.scale(scale: 0).combined(with: .opacity)
        return .asymmetric(insertion: insertion, removal: removal)
    }
}
